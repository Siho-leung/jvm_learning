DROP PROCEDURE IF EXISTS initOrders;
DELIMITER $
CREATE PROCEDURE orders_initData()
BEGIN
    DECLARE i INT DEFAULT 1;
    set autocommit=0;
    WHILE i<=1000000 DO
            insert into orders (addr, name, ordertime, phone, state, total, uid)
            VALUES ('Zhuhai Guangdong', '双十一订单', NOW(), '150xxxxxxxx', 1, 1000, CEILING(rand()*100));
        SET i = i+1;
    END WHILE;
    commit;
END $
CALL initOrders();