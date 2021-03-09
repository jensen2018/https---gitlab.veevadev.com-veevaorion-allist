-- 恢复tot
UPDATE menus_assignments ma
LEFT JOIN
    menus m ON m.id = ma.menu_id
SET
    ma.deleted = 0
WHERE
    ma.role_id in  ('53de6f5e-1da3-11e6-b011-5cc5d4b57134','b74845ad-b5fe-11ea-aab5-0215c63fce1a')
AND m.label = '区域外时间';