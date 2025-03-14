DROP DATABASE IF EXISTS ssm1wQ7Q;

CREATE DATABASE ssm1wQ7Q default character set utf8mb4 collate utf8mb4_general_ci;

USE ssm1wQ7Q;

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200)  UNIQUE   COMMENT '账号',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`youzhengbianma` int    COMMENT '邮政编码',
	`jiatingdizhi` varchar(200)    COMMENT '家庭地址',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

INSERT INTO huiyuan(zhanghao,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,youzhengbianma,jiatingdizhi,gerenzhaopian,money) VALUES('会员1','123456','姓名1','男','020-89819991','773890001@qq.com',1,'家庭地址1','huiyuan_gerenzhaopian1',1);
INSERT INTO huiyuan(zhanghao,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,youzhengbianma,jiatingdizhi,gerenzhaopian,money) VALUES('会员2','123456','姓名2','男','020-89819992','773890002@qq.com',2,'家庭地址2','huiyuan_gerenzhaopian2',2);
INSERT INTO huiyuan(zhanghao,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,youzhengbianma,jiatingdizhi,gerenzhaopian,money) VALUES('会员3','123456','姓名3','男','020-89819993','773890003@qq.com',3,'家庭地址3','huiyuan_gerenzhaopian3',3);


DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';

INSERT INTO shangpinfenlei(shangpinleibie) VALUES('商品类别1');
INSERT INTO shangpinfenlei(shangpinleibie) VALUES('商品类别2');
INSERT INTO shangpinfenlei(shangpinleibie) VALUES('商品类别3');


DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`shangpintupian` varchar(200)    COMMENT '商品图片',
	`shangpinkucun` int    COMMENT '商品库存',
	`shangpinchandi` varchar(200)    COMMENT '商品产地',
	`shangpinjieshao` longtext    COMMENT '商品介绍',
	`shangpinxiangqing` longtext    COMMENT '商品详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息';

INSERT INTO shangpinxinxi(shangpinbianhao,shangpinmingcheng,shangpinleibie,shangpintupian,shangpinkucun,shangpinchandi,shangpinjieshao,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号1','商品名称1','商品类别1','shangpinxinxi_shangpintupian1',1,'商品产地1','商品介绍1','商品详情1',1,1,1);
INSERT INTO shangpinxinxi(shangpinbianhao,shangpinmingcheng,shangpinleibie,shangpintupian,shangpinkucun,shangpinchandi,shangpinjieshao,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号2','商品名称2','商品类别2','shangpinxinxi_shangpintupian2',2,'商品产地2','商品介绍2','商品详情2',2,2,2);
INSERT INTO shangpinxinxi(shangpinbianhao,shangpinmingcheng,shangpinleibie,shangpintupian,shangpinkucun,shangpinchandi,shangpinjieshao,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号3','商品名称3','商品类别3','shangpinxinxi_shangpintupian3',3,'商品产地3','商品介绍3','商品详情3',3,3,3);


DROP TABLE IF EXISTS `shangpinruku`;

CREATE TABLE `shangpinruku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`shangpinkucun` int    COMMENT '商品库存',
	`rukushijian` datetime    COMMENT '入库时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品入库';

INSERT INTO shangpinruku(shangpinbianhao,shangpinmingcheng,shangpinleibie,shangpinkucun,rukushijian) VALUES('商品编号1','商品名称1','商品类别1',1,CURRENT_TIMESTAMP);
INSERT INTO shangpinruku(shangpinbianhao,shangpinmingcheng,shangpinleibie,shangpinkucun,rukushijian) VALUES('商品编号2','商品名称2','商品类别2',2,CURRENT_TIMESTAMP);
INSERT INTO shangpinruku(shangpinbianhao,shangpinmingcheng,shangpinleibie,shangpinkucun,rukushijian) VALUES('商品编号3','商品名称3','商品类别3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `shangpinchuku`;

CREATE TABLE `shangpinchuku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`kucunshuliang` int    COMMENT '库存数量',
	`chukushijian` datetime    COMMENT '出库时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品出库';

INSERT INTO shangpinchuku(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,chukushijian) VALUES('商品编号1','商品名称1','商品类别1',1,CURRENT_TIMESTAMP);
INSERT INTO shangpinchuku(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,chukushijian) VALUES('商品编号2','商品名称2','商品类别2',2,CURRENT_TIMESTAMP);
INSERT INTO shangpinchuku(shangpinbianhao,shangpinmingcheng,shangpinleibie,kucunshuliang,chukushijian) VALUES('商品编号3','商品名称3','商品类别3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`nianfen` varchar(200)    COMMENT '年份',
	`yuefen` varchar(200)    COMMENT '月份',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`shangpinleibie` varchar(200)    COMMENT '商品类别',
	`xiaoshoushuliang` int    COMMENT '销售数量',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售统计';

INSERT INTO xiaoshoutongji(nianfen,yuefen,shangpinmingcheng,shangpinleibie,xiaoshoushuliang) VALUES('年份1','一月份','商品名称1','商品类别1',1);
INSERT INTO xiaoshoutongji(nianfen,yuefen,shangpinmingcheng,shangpinleibie,xiaoshoushuliang) VALUES('年份2','一月份','商品名称2','商品类别2',2);
INSERT INTO xiaoshoutongji(nianfen,yuefen,shangpinmingcheng,shangpinleibie,xiaoshoushuliang) VALUES('年份3','一月份','商品名称3','商品类别3',3);


DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);


DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`tablename` varchar(200)   default 'shangpinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','cart_picture1',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','cart_picture2',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','cart_picture3',3,3,3);


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单id',
	`tablename` varchar(200)   default 'shangpinxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int    COMMENT '支付类型（1：现金 2：积分）',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id1','商品表名1',1,1,'商品名称1','orders_picture1',1,1,1,1,1,1,'状态1','地址1');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id2','商品表名2',2,2,'商品名称2','orders_picture2',2,2,2,2,2,2,'状态2','地址2');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id3','商品表名3',3,3,'商品名称3','orders_picture3',3,3,3,3,3,3,'状态3','地址3');


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '留言人用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(userid,username,content,reply) VALUES(1,'留言人用户名1','留言内容1','回复内容1');
INSERT INTO messages(userid,username,content,reply) VALUES(2,'留言人用户名2','留言内容2','回复内容2');
INSERT INTO messages(userid,username,content,reply) VALUES(3,'留言人用户名3','留言内容3','回复内容3');


DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

INSERT INTO discussshangpinxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussshangpinxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussshangpinxinxi(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

