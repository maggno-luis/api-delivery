CREATE TABLE IF NOT EXISTS tb_user
(
    `user_id`    BINARY(16)   NOT NULL,
    `email`      VARCHAR(255) NULL DEFAULT NULL,
    `name`       VARCHAR(255) NULL DEFAULT NULL,
    `password`   VARCHAR(255) NULL DEFAULT NULL,
    `path_image` VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    UNIQUE INDEX `UK4vih17mube9j7cqyjlfbcrk4m` (`email` ASC) VISIBLE
);

CREATE TABLE IF NOT EXISTS tb_user_role
(
    `user_id` BINARY(16) NOT NULL,
    `role_id` BIGINT     NOT NULL,
    PRIMARY KEY (`user_id`, `role_id`),
    INDEX `FKea2ootw6b6bb0xt3ptl28bymv` (`role_id` ASC) VISIBLE,
    CONSTRAINT `FK7vn3h53d0tqdimm8cp45gc0kl`
        FOREIGN KEY (`user_id`)
            REFERENCES tb_user (`user_id`),
    CONSTRAINT `FKea2ootw6b6bb0xt3ptl28bymv`
        FOREIGN KEY (`role_id`)
            REFERENCES tb_role (`role_id`)
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci