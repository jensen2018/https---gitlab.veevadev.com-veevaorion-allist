# coding=utf-8
"""
To define fixed approval process, please implement the following three methods
"""
from abc import abstractmethod
from collections import namedtuple
from django.db import connection
from orionbase.common import models
from orionbase.common.orion_enum import approval_actions
import logging
logger = logging.getLogger('orion.approval')

UserWithPosition = namedtuple(
    'UserPositionDescription',
    ['user_id', 'username', 'position_id', 'position_name'])

ApprovalInfo = namedtuple('ApprovalInfo', ['object_name', 'last_order', 'record', 'cursor', 'current_user', 'current_user_position',
                                           'sub_user',  'original_approver', 'original_approver_position'])

# 岗位级别ID
# 代表
POSITION_LEVEL_SALE = 'e30fda45-3935-11e7-9202-784f43941801'
# 销售主管
POSITION_LEVEL_SALE_DSM = 'e30fda45-3935-11e7-9202-784f43941805'
# 地区经理
POSITION_LEVEL_DSM = 'e30fda45-3935-11e7-9202-784f43949f5b'
# 大区经理
POSITION_LEVEL_RM = 'deeb13de-3935-11e7-bfbd-784f43949f5b'
# SFE经理
POSITION_LEVEL_SFE = 'e30fda45-3935-11e7-9202-784f43941802'

class ApprovalMixIn(object):
    def __init__(self, approval_info):
        # self.record = record
        self.approval_info = approval_info

    @abstractmethod
    def is_final_approver(self):
        return False

    @abstractmethod
    def get_next_approver(self):
        return []

    @abstractmethod
    def is_fixed_approval(self):
        return False


class DCRApproval(ApprovalMixIn):
    def __init__(self, approval_info):
        super(DCRApproval, self).__init__(approval_info)

    # 组审批一个审批就都通过了
    def is_pass_approval(self):
        return True

    def is_final_approver(self):
        cur_position = self.approval_info.current_user_position
        record = self.approval_info.record
        # 一级审批，数据岗位和当前审批岗位不一样时结束
        last_order = self.approval_info.last_order
        if cur_position.id != record.position.id and last_order != 0:
            return True
        # 如果为大区经理或SFE，结束
        if (cur_position.level_id in [POSITION_LEVEL_RM, POSITION_LEVEL_SFE]):
            return True
        return False

    def get_next_approver(self):
        cur_user = self.approval_info.current_user
        cur_position = self.approval_info.current_user_position

        # 如果为大区经理或SFE，自审批
        if (cur_position.level_id in [POSITION_LEVEL_RM, POSITION_LEVEL_SFE]):
            return [UserWithPosition(cur_user.user_id, cur_user.name, cur_position.id, cur_position.name)]

        # 上级审批，如果没有上级，则上上级审批，封顶到大区经理；如果大区经理为空，则SFE审批
        return _get_sale_parent_position(cur_position.id)

    def is_fixed_approval(self):
        return True


class MetricsRequestsApproval(ApprovalMixIn):
    def __init__(self, approval_info):
        super(MetricsRequestsApproval, self).__init__(approval_info)

    # 组审批一个审批就都通过了
    def is_pass_approval(self):
        return True

    def is_final_approver(self):
        cur_user = self.approval_info.current_user
        cur_position = self.approval_info.current_user_position
        record = self.approval_info.record
        # 一级审批，数据岗位和当前审批岗位不一样时结束
        last_order = self.approval_info.last_order
        if cur_user.user_id != record.owner.id and last_order != 0:
            return True
        # 如果为大区经理或SFE，结束
        if (cur_position.level_id in [POSITION_LEVEL_RM, POSITION_LEVEL_SFE]):
            return True
        return False

    def get_next_approver(self):
        cur_user = self.approval_info.current_user
        cur_position = self.approval_info.current_user_position

        # 如果为大区经理或SFE，自审批
        if (cur_position.level_id in [POSITION_LEVEL_RM, POSITION_LEVEL_SFE]):
            return [UserWithPosition(cur_user.user_id, cur_user.name, cur_position.id, cur_position.name)]

        # 上级审批，如果没有上级，则上上级审批，封顶到大区经理；如果大区经理为空，则SFE审批
        return _get_sale_parent_position(cur_position.id)

    def is_fixed_approval(self):
        return True


class SelfApproval(ApprovalMixIn):
    def __init__(self, approval_info):
        super(SelfApproval, self).__init__(approval_info)

    def is_fixed_approval(self):
        return True

    def get_next_approver(self):
        cur_user = self.approval_info.current_user
        cur_position = self.approval_info.current_user_position
        return [UserWithPosition(cur_user.user_id, cur_user.name, cur_position.id, cur_position.name)]

    def is_final_approver(self):
        return True


# 销售部查找父岗位，如果审批人空岗，跳转到上一级审批（大区经理封顶）,如果大区经理为空岗，则SFE审批
def _get_sale_parent_position(position_id):
    with connection.cursor() as cursor:
        tree_manager_sql = '''SELECT parent_id FROM positions
                        where id={position_id}'''.format(position_id=position_id)
        count = cursor.execute(tree_manager_sql)
        if count:
            manager_position_id = cursor.fetchone()[0]
        else:
            return None

        sql_str = """
                    SELECT 
                            u.name AS u_name, p.name, up.user_id, p.id, p.level_id
                        FROM
                            positions AS p
                        LEFT JOIN 
                            user_positions AS up ON p.id = up.position_id AND up.deleted = 0 
                        LEFT JOIN 
                            orion_users u ON u.user_id = up.user_id AND u.deleted = 0 
                        WHERE
                            p.id = %s 
                                AND p.deleted = 0
                    """
        cursor.execute(sql_str, (manager_position_id,))

        user_detail = cursor.fetchone()

        if user_detail:
            # 上级有用户，返回上级
            if user_detail[0]:
                return [UserWithPosition(user_detail[2], user_detail[0], user_detail[3], user_detail[1])]
            # 上级没有用户
            else:
                # 上级为大区经理，没有用户，返回SFE
                if user_detail[4] == POSITION_LEVEL_RM:
                    return _get_user_position_by_level_id(POSITION_LEVEL_SFE)
                # 上级非大区经理，没有用户，继续查找上上级
                else:
                    return _get_sale_parent_position(user_detail[3])
        # 没有上级岗位，直接到SFE
        else:
            _get_user_position_by_level_id(POSITION_LEVEL_SFE)


# 根据岗位级别查询岗位和用户
def _get_user_position_by_level_id(position_level_id):
    with connection.cursor() as cursor:
        sql_str = """
                    SELECT 
                            u.name AS u_name, p.name, up.user_id, p.id, p.code
                        FROM
                            positions AS p
                        LEFT JOIN 
                            user_positions AS up ON p.id = up.position_id AND up.deleted = 0 
                        LEFT JOIN 
                            orion_users u ON u.user_id = up.user_id AND u.deleted = 0 
                        WHERE
                            p.level_id = %s 
                                AND p.deleted = 0
                    """
        cursor.execute(sql_str, (position_level_id,))
        user_details = cursor.fetchall()
        result = []
        if user_details:
            for user_detail in user_details:
                if user_detail[0]:
                    result.append(UserWithPosition(user_detail[2], user_detail[0], user_detail[3], user_detail[1]))
        return result if result else None

class EventApproval(ApprovalMixIn):
    def __init__(self, approval_info):
        super(EventApproval, self).__init__(approval_info)

    def get_user_detail(self, cursor, target_id):
        # 单人审批
        sql = '''select u.id, o.name, p.id, p.name from user_positions as up join auth_user
        as u on up.user_id=u.id join positions as p on up.position_id=p.id join
        orion_users as o on o.user_id=u.id where p.id={} and up.deleted=0 and p
        .deleted=0 and o.state='aac97c40-03d8-11e7-af86-68f72882c9d0' '''
        cursor.execute(sql.format(target_id))
        manager = cursor.fetchone()
        return [UserWithPosition(*manager)]

    def get_group_detail(self, cursor, next_approvers):
        # 组审批
        multi_approvers = []
        approver_info_sql = """
            select o.user_id,o.`name`,p.id,p.`name` from user_positions u
            inner join orion_users o on u.user_id = o.user_id
            inner join positions p on u.position_id = p.id
            where u.position_id = %s
            and u.deleted = 0
            and o.state = 'aac97c40-03d8-11e7-af86-68f72882c9d0'"""

        for approver in next_approvers:
            cursor.execute(approver_info_sql, (approver,))
            approver_info_res = cursor.fetchone()

            if approver_info_res:
                user_id, user_name, position_id, position_name = approver_info_res
                multi_approvers.append(UserWithPosition(user_id, user_name, position_id, position_name))

        return multi_approvers

    def is_pass_approval(self):
        """组审批：所有人都通过或有一个人拒绝，此级审批结束"""
        cur_approvers_num = len(self.approval_info.cur_approvers)
        if self.approval_info.action == approval_actions.reject:
            return True
        approve_num = 1
        for approver in self.approval_info.cur_approvers:
            if approver.action in (approval_actions.transfer, approval_actions.approve):
                approve_num += 1
        return approve_num == cur_approvers_num

    def get_all_approvers(self):
        """ 计算完整的审批链，作为下个审批人和是否审批结束的依据 """

        # 获取会议类型的name，包含了会议类型及阶段，如cs_department__report
        event_type = self.approval_info.record.record_type.name
        # 提交人的主岗位id
        owner_position_id = self.get_default_position(self.approval_info.record.position.id)

        # 每种会议类型（区别计划/报告）设置单独的方法，拆分一级逻辑
        all_approvers_raw = self.case_to_function(event_type)()

        # 整理审批链
        if all_approvers_raw:
            # 删除无效审批人（可能是空岗，也可能是没有设置默认岗位的脏数据）
            while 999999 in all_approvers_raw:
                all_approvers_raw.remove(999999)
            # 去重，同一审批人保留第一次出现的位置
            all_approvers = []
            for j in all_approvers_raw:
                if j not in all_approvers:
                    all_approvers.append(j)

            # 清除提交人
            if owner_position_id in all_approvers and len(all_approvers) > 1:
                all_approvers.remove(owner_position_id)

            logger.info('get_all_approvers: all_approvers: %s',all_approvers)
            return all_approvers

    def case_to_function(self, case):
        """
        case方法，获取会议类型对应的审批流的方法
        case:会议类型name
        """
        fun_name = "case_fun_" + str(case)
        method = getattr(self, fun_name, self.self_approval)
        return method

    def get_default_position(self, position_id):
        """获取主岗位ID"""

        with connection.cursor() as cursor:
            tree_manager_sql = '''
                SELECT
                p.id
                FROM
                positions p JOIN user_positions up 
                    ON up.position_id = p.id 
                WHERE
                p.deleted = 0 
                AND up.deleted = 0 
                and up.is_default = 1 
                AND up.user_id = ( 
                    SELECT distinct
                    up.user_id 
                    FROM
                    positions p JOIN user_positions up 
                        ON up.position_id = p.id 
                    WHERE
                    p.id = {position_id} 
                    AND p.deleted = 0 
                    AND up.deleted = 0
                )
            '''.format(position_id=position_id)
            cursor.execute(tree_manager_sql)
            row = cursor.fetchone()
            if row:
                return row[0]

        return 999999

    def is_number(self, s):
        """ 字符串内容是否是数字 """
        try:
            float(s)
            return True
        except ValueError:
            pass

        try:
            import unicodedata
            unicodedata.numeric(s)
            return True
        except (TypeError, ValueError):
            pass

        return False

    def get_regional_market(self, bu_postion_id):
        """ 根据bu的岗位id，获取对应区域市场经理的岗位id """
        with connection.cursor() as cursor:
            sql_map = """
                select ifnull(p.id,0) 
                from cs_bu_to_market relation
                    join positions p on p.code = relation.quyushichang_code and p.deleted = 0
                    join positions p_bu on p_bu.code = relation.daquzongjian_code and p_bu.deleted = 0
                where p_bu.id = %s limit 1   
            """
            cursor.execute(sql_map, (bu_postion_id,))
            results = cursor.fetchall()
            if results:
                logger.info('*'*100)
                logger.info('get_regional_market %s',results[0][0])
                return [results[0][0]]

        logger.info('*'*100)
        logger.info('get_regional_market: no result')
        return []

    def get_direct_flow(self, record_position_id, direct_stop_position_lv, step_by_step=True):
        """
        获得直线上级们的position ids
        record_position_id 当前岗位id
        direct_stop_position_lv 截止到的岗位层级
        step_by_step 是否逐级，默认“是”
        """
        approvers = []
        path = models.Positions.advance_objects.get(id=record_position_id).path
        if path == '':
            return []
        # 申请人所有直线上级的pos id
        parent_positions = path.strip('/').split('/')
        # 翻转，从下级往上计算
        parent_positions.reverse()
        parent_positions += [record_position_id]

        # direct_stop_position_lv为数字时职位层级，根据层级数获取上级的审批人，=0是无需直线审批
        if self.is_number(direct_stop_position_lv):
            lv_number = int(direct_stop_position_lv)
            for p in parent_positions:
                if lv_number == 0:
                    break
                approvers.append(self.get_default_position(int(p)))
                lv_number = lv_number - 1

        # direct_stop_position_lv为字符时代表职位类型名称，直线经理审批截止到该职位类型的岗位
        # step_by_step=True是逐级审批到该层级，否则是直接找到该层级
        else:
            with connection.cursor() as cursor:
                sql_map = """
                    select
                        p.id,
                        pv.label
                    from positions p 
                    left join picklist_values pv on pv.id=p.level_id
                    where p.id in %s    
                    order by path desc      
                """
                cursor.execute(sql_map, (parent_positions,))
                results = cursor.fetchall()
                if results:
                    for row in results:
                        if step_by_step:
                            approvers.append(self.get_default_position(row[0]))
                        if row[1] == direct_stop_position_lv:
                            if not step_by_step:
                                approvers.append(self.get_default_position(row[0]))
                            break

        logger.info('*'*100)
        logger.info('get_direct_flow %s',approvers)
        return approvers

    def get_group_by_pos_lv(self, position_lv):
        """ 根据职位类型获取岗位组 """
        approvers, group_approvers = [], []

        poss = models.Positions.advance_objects.filter(level_id__label=position_lv)
        for pos in poss:
            approvers.append(self.get_default_position(pos.id))
        group_approvers.append(approvers)

        return approvers, group_approvers

    # 根据计划的审批流，获取报告阶段的审批流
    def get_report_approval_flow(self, plan_approvers):
        """
        根据计划的审批流，获取报告阶段的审批流
        """
        all_approvers_raw = []
        plan_last_approver_path, overlimit_approver_path = '', ''
        # print u'plan_approvers:{}'.format(plan_approvers)
        if plan_approvers:
            # 根据计划最后审批人的岗位id获取到岗位级别
            plan_last_approver_path = models.Positions.objects.get(id=plan_approvers[-1]).path
            all_approvers_raw += [plan_approvers[-1]]
            # print u'all_approvers_raw from plan:{}'.format(all_approvers_raw)

        record_position_id = self.approval_info.record.position_id
        # 获取超预算金额
        difference = self.approval_info.record.number_4
        overlimit_approver = []
        # 超出计划中的会议预算（超出1万以内），增加营销负责人审批
        if difference > 0:
            overlimit_approver = self.get_direct_flow(record_position_id, u'营销公司负责人',False)
            if overlimit_approver:
                try:
                    overlimit_approver_path = models.Positions.objects.get(id=overlimit_approver[0]).path
                    if plan_last_approver_path in overlimit_approver_path:
                        pass
                    else:
                        all_approvers_raw += [overlimit_approver[0]]
                except:
                    pass
        # 超出计划中的会议预算（超出1万~50万以内），增加CEO审批
        if difference > 10000:
            overlimit_approver = self.get_direct_flow(record_position_id, u'CEO',False)
            if overlimit_approver:
                try:
                    overlimit_approver_path = models.Positions.objects.get(id=overlimit_approver[0]).path
                    if plan_last_approver_path in overlimit_approver_path:
                        pass
                    else:
                        all_approvers_raw += [overlimit_approver[0]]
                except:
                    pass
        # 超出计划中的会议预算（超出50万），增加董事长审批
        if difference > 500000:
            overlimit_approver = self.get_direct_flow(record_position_id, u'董事长',False)
            # print u'董事长：{}'.format(overlimit_approver)
            if overlimit_approver:
                try:
                    overlimit_approver_path = models.Positions.objects.get(id=overlimit_approver[0]).path
                    # 如果计划最后审批人是超限额外审批人的上级，或是同一个人，则不再追加审批人
                    if plan_last_approver_path in overlimit_approver_path:
                        pass
                    else:
                        all_approvers_raw += [overlimit_approver[0]]
                except:
                    pass
        # print u'all_approvers_raw final:{}'.format(all_approvers_raw)
        return all_approvers_raw

    # 科室会
    def case_fun_cs_department(self):
        # 预算金额超过5000，增加CEO，CR改为3000
        event_budget = self.approval_info.record.event_budget
        record_position_id = self.approval_info.record.position_id
        all_approvers_raw = []
        # VOPS-10493 计划阶段：科室会，病人教育会还是按照之前流程一级审批结束 去掉超预算逻辑  Start
        # # 直线审批，直到营销公司负责人
        # direct_flow = self.get_direct_flow(record_position_id, 1)
        # all_approvers_raw += direct_flow
        # VOPS-10493 去掉会议费用超限审批 Start
        # if event_budget > 3000:
        #     direct_flow2 = self.get_direct_flow(record_position_id, u'CEO', False)
        #     all_approvers_raw += direct_flow2
        # # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
        # ############################## #######################################
        # else:
        #     all_approvers_raw = self.temporary_approver()
        # ############################## #######################################
        direct_flow = self.get_direct_flow(record_position_id, 1)
        all_approvers_raw += direct_flow
        # VOPS-10493 计划阶段：科室会，病人教育会还是按照之前流程一级审批结束 去掉超预算逻辑 End
        return all_approvers_raw
    # 科室会报告
    def case_fun_cs_department__report(self):
        # 根据计划的审批流，获取报告阶段的审批流
        return self.get_report_approval_flow(self.case_fun_cs_department())

    # 病人教育会，同科室会
    def case_fun_cs_patient_education_meeting(self):
        return self.case_fun_cs_department()
    # 病人教育会报告，同科室会报告
    def case_fun_cs_patient_education_meeting__report(self):
        return self.case_fun_cs_department__report()

    # 城市会
    def case_fun_city(self):
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 Start
        #
        # # 1. 常规审批流
        # # 一、组审批：大区经理+区域市场经理
        # # 二、组审批：大区总监+市场总监
        # # 三、营销公司负责人
        #
        # all_approvers_raw = []
        # record_position_id = self.approval_info.record.position_id
        # daqujingli = self.get_direct_flow(record_position_id, u'大区经理', False)
        # daquzongjian = self.get_direct_flow(record_position_id, u'大区总监', False)
        # # 根据大区总监获取对应的区域市场经理
        # quyushichang = self.get_regional_market(daquzongjian[0])
        # shichangzongjian, s = self.get_group_by_pos_lv(u'市场总监')
        #
        # group_1 = daqujingli + quyushichang
        # all_approvers_raw += [group_1]
        #
        # group_2 = daquzongjian + shichangzongjian
        # all_approvers_raw += [group_2]
        #
        # yingxiaofuzeren = self.get_direct_flow(record_position_id, u'营销公司负责人', False)
        # all_approvers_raw += yingxiaofuzeren
        # # 2. 费用超限审批流
        # event_budget = self.approval_info.record.event_budget
        # # 预算金额超过5000，增加CEO，CR改为3000
        # if event_budget > 3000 and event_budget <= 100000:
        #     ceo = self.get_direct_flow(record_position_id, u'CEO', False)
        #     all_approvers_raw += ceo
        # # 预算金额超过5000，增加董事长
        # elif event_budget > 100000:
        #     dongshizhang = self.get_direct_flow(record_position_id, u'董事长', False)
        #     all_approvers_raw += dongshizhang
        # # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
        # ############################## #######################################
        # else:
        #     all_approvers_raw = self.temporary_approver()
        # ############################## #######################################
        all_approvers_raw = self.temporary_approver()
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 End
        return all_approvers_raw
    # 城市会报告
    def case_fun_city__report(self):
        # 根据计划的审批流，获取报告阶段的审批流
        return self.get_report_approval_flow(self.case_fun_city())

    # 内部培训会
    def case_fun_cs_tranning(self):
        # 原始的全审批链， 审批流中所有的组审批节点的集合
        all_approvers_raw = []
        record_position_id = self.approval_info.record.position_id
        event_budget = self.approval_info.record.event_budget
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 Start
        # # 1. 直线审批：营销公司负责人，不是逐级
        # direct_flow = self.get_direct_flow(record_position_id, u'营销公司负责人', False)
        # all_approvers_raw += direct_flow
        # # 2. 费用超限审批流
        # event_budget = self.approval_info.record.event_budget
        # # 预算金额超过5000，增加CEO，CR改为3000
        # if event_budget > 3000 and event_budget <= 100000:
        #     ceo = self.get_direct_flow(record_position_id, u'CEO', False)
        #     all_approvers_raw += ceo
        # # 预算金额超过5000，增加董事长
        # elif event_budget > 100000:
        #     dongshizhang = self.get_direct_flow(record_position_id, u'董事长', False)
        #     all_approvers_raw += dongshizhang
        # # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
        # ############################## #######################################
        # else:
        #     all_approvers_raw = self.temporary_approver()
        # ############################## #######################################
        all_approvers_raw = self.temporary_approver()
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 End
        return all_approvers_raw

    # 内部培训会报告
    def case_fun_cs_tranning__report(self):
        # 根据计划的审批流，获取报告阶段的审批流
        return self.get_report_approval_flow(self.case_fun_cs_tranning())

    # 市场会
    def case_fun_cs_market(self):
        # 原始的全审批链， 审批流中所有的组审批节点的集合
        all_approvers_raw = []
        record_position_id = self.approval_info.record.position_id
        event_budget = self.approval_info.record.event_budget
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 Start
        # # 1. 正常审批：
        # # 1.1 市场部总监
        # shichangzongjian, s = self.get_group_by_pos_lv(u'市场总监')
        # all_approvers_raw += shichangzongjian
        # # 1.2营销公司负责人，不是逐级
        # yingxiaofuzeren = self.get_direct_flow(record_position_id, u'营销公司负责人', False)
        # all_approvers_raw += yingxiaofuzeren
        # # 2. 费用超限审批流
        # event_budget = self.approval_info.record.event_budget
        # # 预算金额超过5000，增加CEO，CR改为3000
        # if event_budget > 3000 and event_budget <= 100000:
        #     ceo = self.get_direct_flow(record_position_id, u'CEO', False)
        #     all_approvers_raw += ceo
        # # 预算金额超过5000，增加董事长
        # elif event_budget > 100000:
        #     dongshizhang = self.get_direct_flow(record_position_id, u'董事长', False)
        #     all_approvers_raw += dongshizhang
        # # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
        # ############################## #######################################
        # else:
        #     all_approvers_raw = self.temporary_approver()
        # ############################## #######################################
        all_approvers_raw = self.temporary_approver()
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 End
        return all_approvers_raw
    # 市场会报告
    def case_fun_cs_market__report(self):
        # 根据计划的审批流，获取报告阶段的审批流
        return self.get_report_approval_flow(self.case_fun_cs_market())

    def case_fun_cs_medicine_meeting(self):
        all_approvers_raw = []
        record_position_id = self.approval_info.record.position_id
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 Start
        # # 1. 正常审批：
        # # 1.1 上级审批
        # parent = self.get_direct_flow(record_position_id, 1)
        # all_approvers_raw += parent
        # # 1.2 CEO，不是逐级
        # ceo = self.get_direct_flow(record_position_id, u'CEO', False)
        # all_approvers_raw += ceo
        # # 2. 费用超限审批流
        # event_budget = self.approval_info.record.event_budget
        # # 预算金额超过5000，增加CEO，CR改为3000
        # if event_budget > 3000 and event_budget <= 100000:
        #     ceo = self.get_direct_flow(record_position_id, u'CEO', False)
        #     all_approvers_raw += ceo
        # # 预算金额超过5000，增加董事长
        # elif event_budget > 100000:
        #     dongshizhang = self.get_direct_flow(record_position_id, u'董事长', False)
        #     all_approvers_raw += dongshizhang
        # # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
        # ############################## #######################################
        # else:
        #     all_approvers_raw = self.temporary_approver()
        # ############################## #######################################
        all_approvers_raw = self.temporary_approver()
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 End
        return all_approvers_raw

    def case_fun_cs_medicine_meeting__report(self):
        return self.get_report_approval_flow(self.case_fun_cs_medicine_meeting())

    def case_fun_cs_expert_consultant_meeting(self):
        # 原始的全审批链， 审批流中所有的组审批节点的集合
        all_approvers_raw = []
        record_position_id = self.approval_info.record.position_id
        event_budget = self.approval_info.record.event_budget
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 Start
        # # 1. 正常审批：
        # # 1.1 市场部总监
        # shichangzongjian, s = self.get_group_by_pos_lv(u'市场总监')
        # all_approvers_raw += shichangzongjian
        # # 1.2营销公司负责人，不是逐级
        # yingxiaofuzeren = self.get_direct_flow(record_position_id, u'营销公司负责人', False)
        # all_approvers_raw += yingxiaofuzeren
        # # 2. 费用超限审批流
        # event_budget = self.approval_info.record.event_budget
        # # 预算金额超过5000，增加CEO，CR改为3000
        # if event_budget > 3000 and event_budget <= 100000:
        #     ceo = self.get_direct_flow(record_position_id, u'CEO', False)
        #     all_approvers_raw += ceo
        # # 预算金额超过5000，增加董事长
        # elif event_budget > 100000:
        #     dongshizhang = self.get_direct_flow(record_position_id, u'董事长', False)
        #     all_approvers_raw += dongshizhang
        # # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
        # ############################## #######################################
        # else:
        #     all_approvers_raw = self.temporary_approver()
        # ############################## #######################################
        all_approvers_raw = self.temporary_approver()
        # VOPS-10493 计划阶段：一级审批人+陈石敏（产品总监） 去掉超预算逻辑 End
        return all_approvers_raw

    def case_fun_cs_expert_consultant_meeting__report(self):
        return self.get_report_approval_flow(self.case_fun_cs_expert_consultant_meeting())

    def case_fun_cs_bbs_meeting(self):
        return self.case_fun_cs_expert_consultant_meeting()

    def case_fun_cs_bbs_meeting__report(self):
        return self.case_fun_cs_expert_consultant_meeting__report()

    def case_fun_cs_satellite_meeting(self):
        return self.case_fun_cs_expert_consultant_meeting()

    def case_fun_cs_satellite_meeting__report(self):
        return self.case_fun_cs_expert_consultant_meeting__report()

    # 其他会议类型，默认自审批（实际没有会议类型用到此分支逻辑）
    def self_approval(self):
        cur_user = self.approval_info.current_user
        cur_position = self.approval_info.current_user_position
        return [UserWithPosition(cur_user.user_id, cur_user.name, cur_position.id, cur_position.name)]

    def get_current_position(self, cursor):
        """ 获取当前用户的默认岗位ID """
        cur_user = self.approval_info.current_user
        select_sql = """
        SELECT p.id FROM positions p JOIN user_positions up ON up.position_id = p.id 
        WHERE up.user_id = {} AND p.deleted = 0 AND up.deleted = 0 and up.is_default = 1
        """.format(cur_user.user_id)
        cursor.execute(select_sql)
        row = cursor.fetchall()

        current_user_position = [i[0] for i in row] if row else []
        current_user_position  = self.approval_info.current_user_position.id if self.approval_info.current_user_position else current_user_position

        logger.info("get_current_position:current_user_position %s",current_user_position)
        return current_user_position

    def is_fixed_approval(self):
        return True

    def get_next_approver(self):
        # 获取下一个审批人

        # # 这三句是为了测试，开了个后门，上线前需要注释掉
        # event_place = self.approval_info.record.event_place
        # if event_place == u'自审批':
        #     return self.self_approval()

        with connection.cursor() as cursor:
            cur_position_id = self.get_current_position(cursor)

            # 计算完整审批链
            all_approvers = self.get_all_approvers()

            next_position = 0 # 下一个审批人的position id

            tag = False # 当前人是否在审批链中
            # 根据当前岗位获取下一个审批岗位
            for next_index, item in enumerate(all_approvers):

                if isinstance(item, list):
                    if cur_position_id in item:
                        tag = True
                        # 如果不是最后一个，获取下一个审批节点
                        if (next_index + 1) < len(all_approvers):
                            next_position = all_approvers[next_index + 1]
                        else:
                        # 如果是最后一个，返回当前人，审批结束
                            return self.get_user_detail(cursor, cur_position_id)
                else:
                    if cur_position_id == item:
                        tag = True
                        if (next_index + 1) < len(all_approvers):
                            next_position = all_approvers[next_index + 1]
                        else:
                            return self.get_user_detail(cursor, cur_position_id)

            if not tag:
                # 如果当前不在审批链，从头审批
                next_position = all_approvers[0]

            if next_position != 0:
                if isinstance(next_position, list):
                    return self.get_group_detail(cursor, next_position)
                return self.get_user_detail(cursor, next_position)

            return []

    def is_final_approver(self):
        # 是否审批完成

        # # 这三句是为了测试，开了个后门，上线前需要注释掉
        # event_place = self.approval_info.record.event_place
        # if event_place == u'自审批':
        #     return True

        # 先计算全部审批节点，判断当前人是否最后一个人，如果是，则返回true
        with connection.cursor() as cursor:
            cur_position_id = self.get_current_position(cursor)

            # 计算完整审批链
            all_approvers = self.get_all_approvers()

            if all_approvers:
                # 最后的审批节点
                last_item = all_approvers[len(all_approvers)-1]
                # 组审批，如果包含当前人，则审批结束
                if isinstance(last_item, list):
                    if cur_position_id in last_item:
                        return True
                else:
                # 单人审批，如果是当前人，则审批结束
                    if cur_position_id == last_item:
                        return True

        return False

    # 上线临时审批流调整，所有会议改为一级审批，均直接到市场总监陈石敏处，超额审批不变
    def temporary_approver(self):
        all_approvers_raw = []
        record_position_id = self.approval_info.record.position_id
        all_approvers_raw.append(record_position_id)
        direct_flow = self.get_direct_flow(record_position_id, 1)
        all_approvers_raw += direct_flow
        with connection.cursor() as cursor:
            sql_map = """
                    SELECT 
                        p.id
                    FROM
                        positions p
                            LEFT JOIN
                        picklist_values pv ON pv.id = p.level_id
                            LEFT JOIN
                        user_positions up ON up.position_id = p.id
                            LEFT JOIN
                        orion_users ou ON ou.user_id = up.user_id
                    WHERE
                        pv.label = %s
                    AND ou.name = %s """
            cursor.execute(sql_map, ('市场总监','陈石敏'))
            results = cursor.fetchone()
            if results:
                all_approvers_raw.append(self.get_default_position(results[0]))
        return all_approvers_raw



class SpeakerDcrApproval(ApprovalMixIn):
    """
    讲者审批流程:
    城市级：
        销售代表 -> 销售主管(如存在) -> 地区经理
        销售主管 -> 地区经理
    区域级：
        销售代表 -> 销售主管(如存在) -> 地区经理 -> 市场经理(负责对应大区) -> 产品经理
        销售主管 -> 地区经理 -> 市场经理(负责对应大区) -> 产品经理
    全国级：
        销售代表 -> 销售主管(如存在) -> 地区经理 -> 市场经理(负责对应大区) -> 产品经理 -> 市场总监
        销售主管 -> 地区经理 -> 市场经理(负责对应大区) -> 产品经理 -> 市场总监
    """
    def __init__(self, approval_info):
        super(SpeakerDcrApproval, self).__init__(approval_info)
        self.speaker_level_info = {
            '全国级':'381e52da-48b1-4ade-9bab-c21b6c65666b',
            '城市级':'3b8731e6-8513-4d4a-b29a-14e0655c79c2',
            '区域级':'a01a7caf-5414-4da9-8dd0-57899b62b1c4'
        }

    def is_fixed_approval(self):
        return True

    def get_sales_approvers(self, sales_approvers, position_id, terminal_position_level):
        """
        :param position_id: 开始岗位id
        :param terminal_position_level: 结束岗位层级
        :return: sales_approvers：销售岗位链儿
        """
        # 根据岗位id和获取销售岗位链
        try:
            parent_position_info = models.Positions.objects.filter(
                id=position_id
            ).values_list('parent', 'parent__level_id__label')[0]
        except Exception as e:
            logger.info("Get parent Error:%s" %e)
            logger.info("Not found parent!")
            return

        if parent_position_info[1] == terminal_position_level:
            # sales_approvers.append(parent_position_info[0])
            # VOPS-10280 增加空岗判断
            sales_approvers.append(self.get_default_position(parent_position_info[0]))
            return sales_approvers
        else:
            sales_approvers.append(self.get_default_position(parent_position_info[0]))
            return self.get_sales_approvers(sales_approvers, parent_position_info[0], terminal_position_level)

    def get_market_managers(self, position_id):
        # 根据申请人找到对应的大区总监岗位
        sales_chain = self.get_sales_approvers([], position_id, u'大区总监')
        logger.info("get_sales_approvers>>>sales_chain:%s" %sales_chain)
        regional_director = sales_chain[-1] if sales_chain else 0
        logger.info("regional_director:%s" %regional_director)
        market_approvals = []
        # 根据大区总监及市场经理Mapping获取对应的市场经理
        with connection.cursor() as cursor:
            sql_map = """
                select ifnull(p.id,0) 
                from cs_bu_to_market relation
                    join positions p on p.code = relation.quyushichang_code and p.deleted = 0
                    join positions p_bu on p_bu.code = relation.daquzongjian_code and p_bu.deleted = 0
                where p_bu.id = %s;
            """
            cursor.execute(sql_map, (regional_director,))
            results = cursor.fetchall()
            if results:
                for row in results:
                    logger.info('get_regional_market %s',row[0])
                    market_approvals.append(self.get_default_position(row[0]))
        return market_approvals

    def get_approval_node(self, position_level):
        # 根据岗位层级获取对应所有岗位
        position_ids = models.Positions.objects.filter(level_id__label=position_level).values_list('id', flat=True)
        logger.info("get_approval_node>>>position_ids:%s" %position_ids)
        return [self.get_default_position(int(p)) for p in position_ids]

    def get_market_approvers(self, proposer_position, speaker_level):
        market_approvers = []
        # 市场部审批链
        # 1. 根据申请人岗位所在大区获取对应的市场经理
        market_managers = self.get_market_managers(proposer_position)
        logger.info("get_market_managers>>>market_managers:%s" %market_managers)
        market_approvers.append(market_managers)

        # 2. 获取产品经理
        product_managers = self.get_approval_node(u'产品经理')
        logger.info("get_approval_node>>>product_managers:%s" %product_managers)
        market_approvers.append(product_managers)

        if speaker_level == self.speaker_level_info.get('全国级'):
            # 3. 获取市场总监
            market_director = self.get_approval_node(u'市场总监')
            logger.info("get_approval_node>>>market_director:%s" %market_director)
            market_approvers.append(market_director)

        return market_approvers

    def is_number(self, s):
        """ 字符串内容是否是数字 """
        try:
            float(s)
            return True
        except ValueError:
            pass

        try:
            import unicodedata
            unicodedata.numeric(s)
            return True
        except (TypeError, ValueError):
            pass

        return False

    def get_direct_flow(self, record_position_id, direct_stop_position_lv, step_by_step=True):
        """
        获得直线上级们的position ids
        record_position_id 当前岗位id
        direct_stop_position_lv 截止到的岗位层级
        step_by_step 是否逐级，默认“是”
        """
        approvers = []
        path = models.Positions.advance_objects.get(id=record_position_id).path
        if path == '':
            return []
        # 申请人所有直线上级的pos id
        parent_positions = path.strip('/').split('/')
        # 翻转，从下级往上计算
        parent_positions.reverse()
        parent_positions += [record_position_id]

        # direct_stop_position_lv为数字时职位层级，根据层级数获取上级的审批人，=0是无需直线审批
        if self.is_number(direct_stop_position_lv):
            lv_number = int(direct_stop_position_lv)
            for p in parent_positions:
                if lv_number == 0:
                    break
                approvers.append(self.get_default_position(int(p)))
                lv_number = lv_number - 1

        # direct_stop_position_lv为字符时代表职位类型名称，直线经理审批截止到该职位类型的岗位
        # step_by_step=True是逐级审批到该层级，否则是直接找到该层级
        else:
            with connection.cursor() as cursor:
                sql_map = """
                    select
                        p.id,
                        pv.label
                    from positions p 
                    left join picklist_values pv on pv.id=p.level_id
                    where p.id in %s    
                    order by path desc      
                """
                cursor.execute(sql_map, (parent_positions,))
                results = cursor.fetchall()
                if results:
                    for row in results:
                        if step_by_step:
                            approvers.append(self.get_default_position(row[0]))
                        if row[1] == direct_stop_position_lv:
                            if not step_by_step:
                                approvers.append(self.get_default_position(row[0]))
                            break

        logger.info('*'*100)
        logger.info('get_direct_flow %s',approvers)
        return approvers

    def get_all_approvers(self):
        # 申请的讲者级别
        speaker_level = self.approval_info.record.level_id
        logger.info("speaker_level>>>speaker_level:%s" %speaker_level)
        # 申请人岗位
        proposer_position = self.approval_info.record.position_id
        owner_position_id = self.get_default_position(self.approval_info.record.position.id)
        logger.info("proposer_position>>>proposer_position:%s" %owner_position_id)

        # 申请人岗位层级
        proposer_position_level = models.Positions.objects.filter(
            id=proposer_position
        ).values_list('level_id', flat=True)[0]
        logger.info("proposer_position_level>>>proposer_position_level:%s" %proposer_position_level)

        all_approvers = []

        if speaker_level == self.speaker_level_info.get('城市级'):
            # 销售审批链，到地经理
            sales_approvers = self.get_direct_flow(proposer_position, 1)
            logger.info("get_sales_approvers>>>sales_approvers:%s" % sales_approvers)
            all_approvers.extend(sales_approvers)
        elif speaker_level == self.speaker_level_info.get('区域级'):
            # 销售审批链
            sales_approvers = self.get_direct_flow(proposer_position, 1)
            logger.info("get_sales_approvers>>>sales_approvers:%s" % sales_approvers)
            all_approvers.extend(sales_approvers)

            # 市场审批链
            market_approvers = self.get_market_approvers(proposer_position, speaker_level)
            logger.info("get_market_approvers>>>market_approvers:%s" % market_approvers)
            all_approvers.extend(market_approvers)
        elif speaker_level == self.speaker_level_info.get('全国级'):
            # 销售审批链
            sales_approvers = self.get_direct_flow(proposer_position,1)
            logger.info("get_sales_approvers>>>sales_approvers:%s" % sales_approvers)
            all_approvers.extend(sales_approvers)

            # 市场审批链
            market_approvers = self.get_market_approvers(proposer_position, speaker_level)
            logger.info("get_market_approvers>>>market_approvers:%s" % market_approvers)
            all_approvers.extend(market_approvers)

        # CR:最终审批节点如果是空的，就指给SFE
        if all_approvers[-1] == 999999 or all_approvers[-1]==[999999]:
            # 空岗给SFE
            multi_approvers = []
            with connection.cursor() as cursor:
                sql = """
                        select p.id from user_positions as up join auth_user
                        as u on up.user_id=u.id join positions as p on up.position_id=p.id join
                        orion_users as o on o.user_id=u.id where o.role_id='53de9674-1da3-11e6-ac97-5cc5d4b57137' and up.deleted=0 and p
                        .deleted=0 and o.state='aac97c40-03d8-11e7-af86-68f72882c9d0';
                """
                cursor.execute(sql)
                approver_info_res = cursor.fetchall()

                if approver_info_res:
                    for approver_info in approver_info_res:
                        multi_approvers.append(approver_info[0])
            if multi_approvers:
                all_approvers.append(multi_approvers)
        # VOPS-10280 删除无效审批人（可能是空岗，也可能是没有设置默认岗位的脏数据）
        while 999999 in all_approvers:
            all_approvers.remove(999999)
        for i in all_approvers[::-1]:
            if isinstance(i,list):
                if 999999 in i:
                    i.remove(999999)
                if len(i) == 0:
                    all_approvers.remove(i)
        print u'all_approvers:{}'.format(all_approvers)
        # 审批岗位去重
        new_all_approvers = []
        for j in all_approvers:
            if j not in new_all_approvers:
                new_all_approvers.append(j)

        # 去除申请人岗位
        proposer_position = self.approval_info.record.position_id
        if proposer_position in new_all_approvers and len(new_all_approvers) > 1:
            new_all_approvers.remove(proposer_position)
        return new_all_approvers

    def get_current_position(self, cursor):
        # 获取当前用户的默认岗位ID
        cur_user = self.approval_info.current_user
        select_sql = """
        SELECT p.id FROM positions p JOIN user_positions up ON up.position_id = p.id 
        WHERE up.user_id = {} AND p.deleted = 0 AND up.deleted = 0 and up.is_default = 1
        """.format(cur_user.user_id)
        cursor.execute(select_sql)
        row = cursor.fetchall()

        current_user_position = [i[0] for i in row] if row else []
        current_user_position  = self.approval_info.current_user_position.id if self.approval_info.current_user_position else current_user_position

        logger.info("get_current_position:current_user_position %s",current_user_position)
        return current_user_position

    def get_default_position(self, position_id):
        """获取主岗位ID"""

        with connection.cursor() as cursor:
            tree_manager_sql = '''
                SELECT
                p.id
                FROM
                positions p JOIN user_positions up 
                    ON up.position_id = p.id 
                WHERE
                p.deleted = 0 
                AND up.deleted = 0 
                and up.is_default = 1 
                AND up.user_id = ( 
                    SELECT distinct
                    up.user_id 
                    FROM
                    positions p JOIN user_positions up 
                        ON up.position_id = p.id 
                    WHERE
                    p.id = {position_id} 
                    AND p.deleted = 0 
                    AND up.deleted = 0
                )
            '''.format(position_id=position_id)
            cursor.execute(tree_manager_sql)
            row = cursor.fetchone()
            if row:
                return row[0]

        return 999999

    def get_user_detail(self, cursor, target_id):
        # 单人审批
        sql = '''select u.id, o.name, p.id, p.name from user_positions as up join auth_user
        as u on up.user_id=u.id join positions as p on up.position_id=p.id join
        orion_users as o on o.user_id=u.id where p.id={} and up.deleted=0 and p
        .deleted=0 and o.state='aac97c40-03d8-11e7-af86-68f72882c9d0' '''
        cursor.execute(sql.format(target_id))
        manager = cursor.fetchone()
        return [UserWithPosition(*manager)]
        

    def get_group_detail(self, cursor, next_approvers):
        # 组审批
        multi_approvers = []
        approver_info_sql = """
            select o.user_id,o.`name`,p.id,p.`name` from user_positions u
            inner join orion_users o on u.user_id = o.user_id
            inner join positions p on u.position_id = p.id
            where u.position_id = %s
            and u.deleted = 0
            and o.state = 'aac97c40-03d8-11e7-af86-68f72882c9d0'"""

        for approver in next_approvers:
            cursor.execute(approver_info_sql, (approver,))
            approver_info_res = cursor.fetchone()

            if approver_info_res:
                user_id, user_name, position_id, position_name = approver_info_res
                multi_approvers.append(UserWithPosition(user_id, user_name, position_id, position_name))

        return multi_approvers

    def get_next_approver(self):
        # 2020-10-15 CR：修改讲者自审批
        # 2020-10-20 CR：修改讲者改回最初的审批流
        record = self.approval_info.record
        type_name = record.record_type.name
        cur_user = self.approval_info.current_user
        cur_position = self.approval_info.current_user_position
        # if type_name in ('edit_professional_speaker','edit_non_professional_speaker','edit_expiry_professional_speaker','edit_expiry_non_professional_speaker'):
        #     return [UserWithPosition(cur_user.user_id, cur_user.name, cur_position.id, cur_position.name)]

        # 获取完整审批链上岗位
        all_approvers = self.get_all_approvers()
        logger.info("all_approvers>>>all_approvers:%s" % all_approvers)

        # 根据当前岗位获取下一个审批岗位
        with connection.cursor() as cursor:
            cur_position_id = self.get_current_position(cursor)

            next_position = 0
            tag = False  # 当前人是否在审批链中
            for next_index, item in enumerate(all_approvers):
                if cur_position_id == item:
                    tag = True
                    if next_index < len(all_approvers):
                        next_position = all_approvers[next_index + 1]
                    else:
                        return self.get_user_detail(cursor, cur_position_id)
                if isinstance(item, list):
                    if cur_position_id in item:
                        tag = True
                        if next_index < len(all_approvers):
                            next_position = all_approvers[next_index + 1]
                        else:
                            return self.get_user_detail(cursor, cur_position_id)

            if not tag:
                # 如果当前不在审批链，从头审批
                next_position = all_approvers[0]
            if next_position != 0:
                if isinstance(next_position, list):
                    # 处理组审批
                    return self.get_group_detail(cursor, next_position)
                return self.get_user_detail(cursor, next_position)

    def is_final_approver(self):
        # 2020-10-15 CR：修改讲者自审批
        # 2020-10-20 CR：修改讲者改回最初的审批流
        record = self.approval_info.record
        type_name = record.record_type.name
        cur_user = self.approval_info.current_user
        cur_role = cur_user.role.name
        if cur_role in (u'53de9674-1da3-11e6-ac97-5cc5d4b57137'):
            return True
        # if type_name in ('edit_professional_speaker','edit_non_professional_speaker','edit_expiry_professional_speaker','edit_expiry_non_professional_speaker'):
        #     return True

        # 先计算全部审批节点，判断当前人是否最后一个人，如果是，则返回true
        with connection.cursor() as cursor:
            cur_position_id = self.get_current_position(cursor)

            # 计算完整审批链
            all_approvers = self.get_all_approvers()
            if all_approvers:
                # 最后的审批节点
                last_item = all_approvers[len(all_approvers) - 1]
                # 组审批，如果包含当前人，则审批结束
                if isinstance(last_item, list):
                    if cur_position_id in last_item:
                        return True
                else:
                    # 单人审批，如果是当前人，则审批结束
                    if cur_position_id == last_item:
                        return True
        return False

    def is_pass_approval(self):
        """组审批：所有人都通过或有一个人拒绝，此级审批结束"""
        return True
        # cur_approvers_num = len(self.approval_info.cur_approvers)
        # if self.approval_info.action == approval_actions.reject:
        #     return True
        # approve_num = 1
        # for approver in self.approval_info.cur_approvers:
        #     if approver.action in (approval_actions.transfer, approval_actions.approve):
        #         approve_num += 1
        # return approve_num == cur_approvers_num

       # cur_approvers_num = len(self.approval_info.cur_approvers)
       # if self.approval_info.action == approval_actions.reject:
            # return True

        # VOPS-10360 市场部讲者审批流调整配置，追加组审批，判定如果是市场部，任意一个审批通过即可向下流转
       # cur_user = self.approval_info.current_user
       # cur_role_name = cur_user.role.name if cur_user and cur_user.role else None
       # if cur_role_name == u'市场经理':
       #     return True

       # approve_num = 1
       # for approver in self.approval_info.cur_approvers:
      #      if approver.action in (approval_actions.transfer, approval_actions.approve):
       #         approve_num += 1
       # return approve_num == cur_approvers_num



approval_object_register = {
    'event': EventApproval,
    'speaker_dcr': SpeakerDcrApproval,
    'dcr': DCRApproval,
    'metricsreq': MetricsRequestsApproval,
    'electronic_document': SelfApproval,
}

def is_fixed_approval(object_name, approval_info):

    approval_class = approval_object_register.get(object_name)
    if approval_class:
        return approval_class(approval_info).is_fixed_approval()
    return False


def get_next_approver(object_name, approval_info):

    approval_class = approval_object_register.get(object_name)
    if approval_class:
        try:
            approver = approval_class(approval_info).get_next_approver()
            return approver
        except:
            return []
    return []


def is_final_approver(object_name, approval_info):

    approval_class = approval_object_register.get(object_name)
    if approval_class:
        return approval_class(approval_info).is_final_approver()
    return False

def is_pass_approval(object_name, approval_info):
    """
    Whether current node is passed
    :param object_name: the object name
    :param approval_info: last_order: the last approval order of the approval,
    current_user,current_user_position
    sub_user(the user and position info of the submitted user), original_approval_user(the user info of the original user),
    original_approval_position(the position info of the original approval user,
    cur_approvers:
    action: the acton of current user
    :return: True if current node is passed; False otherwise
    """
    approval_class = approval_object_register.get(object_name)
    if approval_class:
        try:
            is_pass_approval = approval_class(approval_info).is_pass_approval()
            return is_pass_approval
        except:
            return True
    return True
