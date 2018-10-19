CREATE TABLE
    USER
    (
        id INT NOT NULL AUTO_INCREMENT,
        username VARCHAR(32) NOT NULL COMMENT '用户名称',
        birthday DATE COMMENT '生日',
        sex CHAR(1) COMMENT '性别',
        address VARCHAR(256) COMMENT '地址',
        PRIMARY KEY (id)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO user (id, username, birthday, sex, address) VALUES (1, '王五1', null, '2', null);
INSERT INTO user (id, username, birthday, sex, address) VALUES (10, '张三', '2014-07-10', '1', '北京市');
INSERT INTO user (id, username, birthday, sex, address) VALUES (16, '张小明', null, '1', '河南郑州');
INSERT INTO user (id, username, birthday, sex, address) VALUES (22, '陈小明', null, '1', '河南郑州');
INSERT INTO user (id, username, birthday, sex, address) VALUES (24, '张三丰', null, '1', '河南郑州');
INSERT INTO user (id, username, birthday, sex, address) VALUES (25, '陈小明', null, '1', '河南郑州');
INSERT INTO user (id, username, birthday, sex, address) VALUES (26, '王五', null, null, null);