CREATE TABLE IF NOT EXISTS tb_role
(
    `role_id` BIGINT       NOT NULL AUTO_INCREMENT,
    `name`    VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`role_id`)
);


INSERT INTO tb_role (role_id, name)
VALUES (1, 'ADMIN');
INSERT INTO tb_role (role_id, name)
VALUES (2, 'BASIC');

