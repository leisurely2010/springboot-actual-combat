
--  @author lazycece
--  @date 2019/4/18


CREATE TABLE IF NOT EXISTS user (
	id BIGINT UNSIGNED AUTO_INCREMENT,
	create_time DATETIME NOT NULL COMMENT '创建时间',
	update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL COMMENT '更新时间',
	username VARCHAR(20) NOT NULL COMMENT '用户名',
	password VARCHAR (255) NOT NULL COMMENT '密码',
	telephone VARCHAR(11) COMMENT '电话号码',
	status TINYINT NOT NULL COMMENT '状态',
	editor VARCHAR(20) COMMENT '编辑者',
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS system_log (
    id BIGINT UNSIGNED AUTO_INCREMENT,
    create_time DATETIME NOT NULL COMMENT '创建时间',
    editor VARCHAR(20) NOT NULL COMMENT '编辑者',
    operation VARCHAR(255) NOT NULL COMMENT '操作行为',
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;