"""
To define fixed approval process, please implement the following three methods
"""

from collections import namedtuple


UserWithPosition = namedtuple(
    'UserPositionDescription',
    ['user_id', 'username', 'position_id', 'position_name'])


def is_fixed_approval(object_name, record):
    """
    Whether the record has a fixed approval process
    :param object_name: the object name
    :param record: the record instance
    :return: True if the record follows a fixed approval; False otherwise
    """
    return False


def get_next_approver(object_name, record, last_order, cursor, cur_position,
                      cur_user, sub_user):
    """
    Get the the next approver
    :param object_name: the object name
    :param record: the record instance
    :param last_order: the last approval order of the approval
    :param cursor: the db connection
    :param cur_position: the position of the user requested the approval
    :param cur_user: the user requested the approval
    :return: UserWithPosition instance that includes user and position information
    """
    return UserWithPosition(None, None, None, None)


def is_final_approver(object_name, record, last_order, cur_user):
    """
    Whether the record has reached the final approval step
    :param object_name: the object name
    :param record: the record instance
    :param last_order: the last approval order of the approval
    :param cur_user: the user requested the approval
    :return: True if the record has reached the final approval step; False otherwise
    """
    return False
