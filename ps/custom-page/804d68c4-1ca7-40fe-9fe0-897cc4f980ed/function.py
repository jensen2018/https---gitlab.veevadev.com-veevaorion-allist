# coding=UTF-8
from django.db.models import Q

from orion.customsetting import get_setting
from orionbase.common import models
from orionbase.common.orion_enum import encoding
from orionbase.utils.utils import Convert


class CustomPageClass(object):

    def __init__(self):
        view_other_setting = get_setting('event_share_users_abilities', None)
        self.view_other = (view_other_setting or {}).get(
            'allow_share_user_view_attendees', False)

    def _get_view_other_conditions(self, request_user):
        if not self.view_other:
            view_other_conditions = (Q(event__owner_id=request_user.id) |
                                     Q(owner_id=request_user.id))
        else:
            view_other_conditions = Q()
        return view_other_conditions

    def _get_event_professionals(self, event, request_user):
        event_ids = [event.id]
        if event.parent_id:
            event_ids.append(event.parent_id)
        event_professionals = models.EventAccounts.objects.filter(
            event_id__in=event_ids, deleted=0,
            record_type__name='event_professional').filter(
            self._get_view_other_conditions(request_user)).order_by(
            Convert('account__name', encoding.gbk))
        return event_professionals


    def load_data(self, *args):
        # args的参数可能继续向后扩展，如果你喜欢这样的写法，请使用切片，切记！！！如下：
        data = {}
        cost_center_data= []
        enable_edit_button = False
        params, request_data, request_user, request_method = args[:4]
        assert request_method == 'GET'
        event_id = params['record_id']
        event = models.Events.objects.get(id=event_id, deleted=0)
        user_name = models.OrionUsers.objects.get(user_id=event.owner).name
        position_id = models.UserPositions.objects.filter(user_id=event.owner,is_default=1).values_list('position_id',flat=True)
        position_name = models.Positions.objects.get(id__in=position_id).name
        exist_data = models.CustomObjects4.objects.filter(deleted=0,event_1_id=event_id).values_list('id','text_1','number_1')
        if len(exist_data):
            for id,cost_center,rate in exist_data:
                cost_center_data.append({
                    'id':id,
                    'name':cost_center,
                    'rate':rate
                })
        if request_user == event.owner and event.state.name in ('save','rejected','withdrawn'):
            enable_edit_button = True
        data['data'] = cost_center_data
        data['config'] = {'enable_edit_button':enable_edit_button}
        data['username'] = user_name
        data['positionname'] = position_name
        return data


    def search_data(self, *args):
        data = {}
        search_data = []
        params, request_data, request_user, request_method = args[:4]
        assert request_method == 'GET'
        event_id = params['record_id']
        event = models.Events.objects.get(id=event_id, deleted=0)
        base_condition = Q(deleted=0)
        if 'search' in params.keys() and  params['search']:
            base_condition &= Q(text_1__contains=params['search'])
        exis_data = models.CustomObjects4.objects.filter(deleted=0, event_1_id=event_id).values_list('text_2',flat=True)
        if exis_data:
            base_condition &= ~Q(id__in=exis_data)
        positions = models.UserPositions.objects.filter(user_id=request_user.id).values_list('position_id','position_id__path')
        for id,path in positions:
            new_path = path + str(id)
            parent_list = list(new_path.strip('/').split('/'))[::-1]
            for position in parent_list:
                all_cost_data = models.CustomObjects2.objects.filter(Q(position_1=position)& base_condition ).values_list('id', 'text_1')
                if len(all_cost_data):
                    for id, cost_center in all_cost_data:
                        search_data.append({
                            'id': id,
                            'name': cost_center,
                        })
                    break
        data['data'] = search_data
        return data


    def search_save(self, *args):
        # args的参数可能继续向后扩展，如果你喜欢这样的写法，请使用切片，切记！！！如下：
        params, request_data, request_user, request_method = args[:4]
        assert request_method == 'POST'
        request_data = request_data or []
        # event_cost_center_ids = [x['id'] for x in request_data]
        event_id = params['record_id']
        event = models.Events.objects.get(id=event_id, deleted=0)
        # self._check_event_professional_ids(event, request_user, event_cost_center_ids)
        # count = 0

        # 一下简单Demo了一下错误提示：
        message = ''
        result = 'success'
        # 没有错误时，将报错数据：
        to_created_data = []
        for each in request_data:
            id = each['id']
            name = each['name']
            is_exit = models.CustomObjects4.objects.filter(deleted=0,text_2=id,event_1=event_id).count()
            if not is_exit:
                cost_data = models.CustomObjects4(
                    deleted = 0,
                    text_1 = name,
                    text_2 = id,
                    owner = models.User.objects.get(id=request_user.id),
                    created_by_id = request_user.id,
                    modified_by_id = request_user.id,
                    event_1 = models.Events.objects.get(id=event_id),
                    number_1=0,
                )
                to_created_data.append(cost_data)
        if len(to_created_data):
            models.CustomObjects4.objects.bulk_create(to_created_data, ignore_signal=True,batch_size=500)
        return {'result': result, 'message': message}


    def rate_save(self, *args):
        # args的参数可能继续向后扩展，如果你喜欢这样的写法，请使用切片，切记！！！如下：
        params, request_data, request_user, request_method = args[:4]
        assert request_method == 'POST'
        request_data = request_data or []
        # event_cost_center_ids = [x['id'] for x in request_data]
        event_id = params['record_id']
        event = models.Events.objects.get(id=event_id, deleted=0)
        # self._check_event_professional_ids(event, request_user, event_cost_center_ids)
        message = ''
        result = 'success'
        # 没有错误时，将报错数据：
        to_save_data = []
        for each in request_data:
            id = each['id']
            name = each['name']
            rate = each['rate']
            models.CustomObjects4.objects.filter(id=id).update(number_1=rate)
        return {'result': result, 'message': message}


    def delete(self, *args):
        # args的参数可能继续向后扩展，如果你喜欢这样的写法，请使用切片，切记！！！如下：
        params, request_data, request_user, request_method = args[:4]
        assert request_method == 'POST'
        request_data = request_data or []
        # event_cost_center_ids = [x['id'] for x in request_data]
        event_id = params['record_id']
        event = models.Events.objects.get(id=event_id, deleted=0)
        # self._check_event_professional_ids(event, request_user, event_cost_center_ids)
        # count = 0

        # 一下简单Demo了一下错误提示：
        message = ''
        result = 'success'
        for each in request_data:
            id = each['id']
            models.CustomObjects4.objects.filter(id=id).update(deleted=1)
        return {'result': result, 'message': message}

