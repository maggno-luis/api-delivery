CREATE TABLE IF NOT EXISTS tb_order
(
    `id`             BIGINT       NOT NULL AUTO_INCREMENT,
    `complement`     VARCHAR(255) NULL DEFAULT NULL,
    `house_number`   VARCHAR(255) NULL DEFAULT NULL,
    `neighborhood`   VARCHAR(255) NULL DEFAULT NULL,
    `street`         VARCHAR(255) NULL DEFAULT NULL,
    `payment_method` VARCHAR(255) NULL DEFAULT NULL,
    `status`         VARCHAR(255) NULL DEFAULT NULL,
    `user_id`        VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 16
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci