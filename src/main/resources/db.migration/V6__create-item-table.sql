CREATE TABLE IF NOT EXISTS tb_item
(
    `id`       BIGINT       NOT NULL AUTO_INCREMENT,
    `name`     VARCHAR(255) NULL DEFAULT NULL,
    `price`    VARCHAR(255) NULL DEFAULT NULL,
    `quantity` INT          NULL DEFAULT NULL,
    `order_id` BIGINT       NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK7yhq3xcxpwn2vka7uloglld2h` (`order_id` ASC) VISIBLE,
    CONSTRAINT `FK7yhq3xcxpwn2vka7uloglld2h`
        FOREIGN KEY (`order_id`)
            REFERENCES tb_order (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 32
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci