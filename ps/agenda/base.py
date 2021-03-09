# coding=utf-8
def agenda_reminder(user_id, agenda_data):
    from orionbase.common import models
    event_ids = []
    for item in agenda_data:
        if item['type'] == 'event':
            event_ids.append(item['id'])
    return models.Events.advance_objects.filter(
        eventusers__share_user_id=user_id,
        eventusers__deleted=0,
        id__in=event_ids
    ).exists()
