CREATE TABLE IF NOT EXISTS tb_product
(
    `id`          BIGINT       NOT NULL AUTO_INCREMENT,
    `name`        VARCHAR(255) NULL DEFAULT NULL,
    `path_image`  VARCHAR(255) NULL DEFAULT NULL,
    `category_id` BIGINT       NULL DEFAULT NULL,
    `price`       DOUBLE       NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK8i0sq9mfbpsrabrm2pum9fspo` (`category_id` ASC) VISIBLE,
    CONSTRAINT `FK8i0sq9mfbpsrabrm2pum9fspo`
        FOREIGN KEY (`category_id`)
            REFERENCES tb_category (`id`)
)
    ENGINE = InnoDB
    AUTO_INCREMENT = 23
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci