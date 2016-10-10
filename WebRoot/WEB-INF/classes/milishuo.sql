
DROP DATABASE IF EXISTS mls;

CREATE DATABASE mls;

USE mls;

-- 地区信息
CREATE TABLE areainfo(

aid INT PRIMARY KEY AUTO_INCREMENT,	   -- 编号
aname VARCHAR(200) NOT NULL,		   -- 地区名称
alevel INT ,				   -- 行政级别（1国家  2省级  3 市级  4 县级）
aparentid INT  				   -- 所属地区编号 

);

INSERT INTO areainfo(aname,alevel,aparentid) 
					VALUES
					
					('中国',1,NULL),
					('美国',1,NULL),
					('日本',1,NULL),
					
					
					
					
					('北京',1,1),
					('上海',1,1),
					('天津',1,1),
					('重庆',1,1),
					
					('山东',2,1),
					('江苏',2,1),
					('浙江',2,1),

					('加利福尼亚',2,2),
					('德克萨斯',2,2),
					('佛罗里达',2,2),
					
					('北海道',2,3),
					('本州',2,3),
					('四国',2,3),
					
					('济南',3,8),
					('潍坊',3,8),
					('青岛',3,8),

					('南京',3,9),
					('南昌',3,9),
					('苏州',3,9),
					
					('杭州',3,10),
					('宁波',3,10),
					('温州',3,10)
					
					
					
					;



-- 用户类型表
CREATE TABLE usertypeinfo(

utid INT PRIMARY KEY AUTO_INCREMENT ,  -- 编号主键
utname VARCHAR(20) UNIQUE NOT NULL 	-- 名称

);

INSERT INTO  usertypeinfo(utname) VALUES('普通');
INSERT INTO  usertypeinfo(utname) VALUES('VIP');
INSERT INTO  usertypeinfo(utname) VALUES('黄金');
INSERT INTO  usertypeinfo(utname) VALUES('白金');
INSERT INTO  usertypeinfo(utname) VALUES('钻石');

INSERT INTO  usertypeinfo(utname) VALUES('内部用户');



-- 用户信息表
CREATE TABLE userinfo(

ufid INT PRIMARY KEY AUTO_INCREMENT, 		-- 主键
uflogname VARCHAR(20) UNIQUE not null, 			-- 用户名（账号）
ufpassword VARCHAR(10) NOT NULL, 		-- 密码
ufsex INT CHECK(ufsex=1 OR ufsex=2) ,		-- 性别
ufbirthday DATE , 			-- 生日
ufnum VARCHAR(30) NOT NULL, 			-- 联系方式
ufqq VARCHAR(30) ,				-- qq
ufemail VARCHAR(100),				-- 电子邮箱
uflogdate   DATETIME NOT NULL, 			-- 注册日期
uflocked INT CHECK(uflocked=0 OR uflocked=1) ,  -- 用户是否被锁定
utid INT NOT NULL,				-- 用户类型 外键关联 usertype

CONSTRAINT uf_fk1 FOREIGN KEY (utid) REFERENCES usertypeinfo(utid)
);

INSERT INTO userinfo (uflogname,ufpassword,ufsex,ufbirthday,ufnum,ufqq,ufemail,uflogdate,uflocked,utid) 
	       VALUES 
		('zhanglei','666666', 1,'1999-9-9','15092297861','1173967175','baolan8028@126.com','2015-12-16',1,6),
		('mary','666666', 2,'1999-9-9','12587854555','777777777','XXXXXX@126.com','2015-12-16',1,6);





-- drop table typeinfo;

-- 商品类型信息
CREATE TABLE typeinfo(
tpid INT PRIMARY KEY AUTO_INCREMENT ,	-- 主键编号
tpname VARCHAR(20)  NOT NULL,	-- 信息名称
tplevel INT NOT NULL,			-- 类型等级
tpparentid INT 				-- 所属上级类型编号

);

INSERT INTO typeinfo (tpname,tplevel,tpparentid) VALUES
	('上衣',1,NULL), 
	('裙子',1,NULL),	
	('裤子',1,NULL),
	('鞋子',1,NULL),	
	('包包',1,NULL),
	('配饰',1,NULL),
	('内衣',1,NULL),	
	('美妆',1,NULL),
	('男装',1,NULL),
	('童装',1,NULL),
	('家居',1,NULL),
	('小家电',1,NULL),
	('食品',1,NULL),
		
		-- 上衣二级
		('衬衫',2,1),('T恤',2,1),('外套',2,1),('毛衣',2,1),('卫衣',2,1),('针织衫',2,1),
		('大衣',2,1),('打底衫',2,1),('棉服',2,1),('雪纺衫',2,1),('羽绒服',2,1),('开衫',2,1),
		('风衣',2,1),('背心',2,1),('西装',2,1),('马甲',2,1),('夹克',2,1),('防晒衣',2,1),  
		
	
		-- 裙装二级
		('连衣裙',2,2),
		('半身裙',2,2), 

		-- 裤装二级
		('牛仔裤',2,3),('打底裤',2,3),
		('休闲裤',2,3),('铅笔裤',2,3),
		('哈伦裤',2,3),('阔腿裤',2,3),
		('运动裤',2,3),('连体裤',2,3),
		('紧身裤',2,3),('裙裤',2,3),
		('西装裤/正装裤',2,3),('棉裤/羽绒裤',2,3),

		-- 鞋子二级
		('靴子',2,4),('单鞋',2,4),
		('休闲运动鞋',2,4),('棉鞋',2,4),
		('帆布鞋',2,4),('凉鞋',2,4),
		('拖鞋',2,4),('跑步鞋',2,4),
		('家居鞋',2,4),('板鞋',2,4),
		('篮球鞋',2,4),('雨鞋',2,4),
		('徒步鞋',2,4),('工装靴',2,4),
		('乒羽网鞋',2,4),('登山鞋',2,4),
		
		-- 箱包二级
		('单肩包',2,5),('双肩包',2,5),('手提包',2,5),('斜挎包',2,5),('钱包',2,5),('手拿包',2,5),
		('旅行箱/拉杆箱',2,5),('化妆包',2,5),('卡包',2,5),('旅行包',2,5),('环保袋/购物袋',2,5),('手机包',2,5),
		('腰包',2,5),('IPAD包',2,5),
		
		-- 配饰二级
		('手机壳',2,6),('项链',2,6),('袜子',2,6),('帽子',2,6),('耳钉',2,6),('发饰',2,6),
		('围巾',2,6),('手表',2,6),('墨镜/太阳镜',2,6),('戒指',2,6),('手链',2,6),('假发',2,6),
		('手套',2,6),('手镯',2,6),('耳环',2,6),('框架眼镜',2,6),('腰带',2,6),('DIY饰品配件',2,6),
		('钥匙链',2,6),('胸针',2,6),('口罩',2,6),('丝巾',2,6),('发带',2,6),('吊坠',2,6),
		('耳套',2,6),('耳夹',2,6),('眼镜框',2,6),('脚链',2,6),('假领子',2,6),('披肩',2,6),
		
		-- 女内衣二级
		('文胸套装',2,7),('内裤',2,7),('文胸',2,7),('泳衣',2,7),('保暖内衣裤',2,7),('抹胸/塑身衣',2,7),
		('睡衣/家居服',2,7),('内衣配件',2,7),
				
		
		-- 男上衣
		('上衣',2,9),  -- 114
		-- 男下装
		('下装',2,9),  -- 115
		
		-- 男套装
		('套装',2,9),  -- 116
		
		-- 男鞋包配饰
		('鞋包配饰',2,9),  -- 117


		-- 男上衣  三级类目
		('外套',3,114),('毛衣',3,114),('卫衣',3,114),('针织衫',3,114),('大衣',3,114),('衬衫',3,114),
		('开衫',3,114),('西服',3,114),('风衣',3,114),('长袖T恤',3,114),('夹克',3,114),('皮衣',3,114),		
		
		-- 男下衣 三级类目
		('休闲裤',3,115),('运动裤',3,115),('牛仔裤',3,115),('小脚裤',3,115),('九分裤',3,115),('哈伦裤',3,115),
		('束脚裤',3,115),('内衣',3,115),
			
		-- 男 鞋包配饰 三级类目
		('休闲鞋',3,116),('运动鞋',3,116),('帆布鞋',3,116),('皮鞋',3,116),('板鞋',3,116),('家居鞋',3,116),
		('双肩包',3,116),('钱包',3,116),('袜子',3,116),('手表',3,116),('墨镜',3,116),('帽子',3,116),

		('童装衣裤套装',2,10),('童装连衣裙',2,10),('童装T恤',2,10),('童装牛仔裤',2,10),('童装衬衫',2,10),('童装夹克',2,10),
		('童装卫衣',2,10),('亲子时装',2,10),('童装休闲裤',2,10),('童装睡衣/童装家居服',2,10),('童装衣裙套装',2,10),('童装棉服',2,10),
		('童装打底裤',2,10),('童装大衣',2,10),('童装毛衣',2,10),('童装开衫',2,10),('童装连体裤',2,10),('童装风衣',2,10),
		('童装马甲',2,10),('童装针织衫',2,10),('童装半身裙',2,10),('童装羽绒服',2,10),('童装内裤',2,10),('童装哈伦裤',2,10),
		('童装裙裤',2,10),('亲子睡衣/亲子家居服',2,10),('童装西装',2,10),('童装运动裤',2,10),('童装铅笔裤',2,10),('童装棉裤/童装羽绒裤',2,10),

		('零食',2,13),('饼干蛋糕',2,13),('糖果/巧克力',2,13),('蜜饯果干',2,13),('坚果炒货',2,13),('地方特产',2,13),
		('茗茶',2,13),('速食食品',2,13),('冲调饮品',2,13),('冲饮谷物',2,13),('咖啡/奶茶',2,13),('牛奶乳品',2,13),
		('饮料',2,13);
			

-- select tp1.tpid,tp1.tpname, tp2.tpid,tp2.tpname from typeinfo tp1  join typeinfo tp2 on tp1.tpid=tp2.tpparentid order by tp1.tpid;



				
				
				
-- 衣长信息
CREATE TABLE clothing_size(
csid INT PRIMARY KEY AUTO_INCREMENT ,   -- 编号
csname VARCHAR(20)  NOT NULL  ,   -- 名称
tpid INT REFERENCES typeinfo(tpid)	-- 所属类目
);
	
INSERT INTO clothing_size(csname,tpid)
				VALUES
				-- 女上衣
				('常规款',1),('中长款',1),
				('短款',1),('长款',1),
				('超长款',1),

				-- 男  上衣 
				('常规款',9),('中长款',9),
				('短款',9),('长款',9);

-- 裤长信息
CREATE TABLE clothing_trouserssize(
ctsid INT PRIMARY KEY AUTO_INCREMENT ,   -- 编号
ctsname VARCHAR(20)  NOT NULL,	 -- 名称
tpid int references typeinfo(tpid)  -- 所属商品类型
);
INSERT INTO clothing_trouserssize(ctsname,tpid)
				VALUES
				('长裤',3),('九分裤',3),
				('短裤',3),('七分裤',3),
				('中裤',3),('五分裤',3),
				('超短裤',3);

-- 裤子厚度
create table clothing_trousers_houdu(
cthid int primary key auto_increment,
cthtext varchar(20) not null,
tpid int references typeinfo(tpid)  -- 所属商品类型

);	

INSERT INTO clothing_trousers_houdu(cthtext,tpid) values
 ('适中',3),
 ('加绒',3),
 ('偏厚',3),
 ('偏薄',3);


-- 裤子，裙子 腰线高度
create table clothing_lineheight(
clhid int primary key auto_increment, -- 编号
clhtext varchar(20) not null,  -- 名称
tpid int references typeinfo(tpid)  -- 所属商品类型

);	

INSERT INTO clothing_lineheight(clhtext,tpid) values
			-- 裙子
 ('中腰',2),
 ('高腰',2),
 ('低腰',2),
 ('无腰线',2),
 ('超高腰',2),
 ('超低腰',2),
 			-- 裤子
  ('中腰',3),
 ('高腰',3),
 ('低腰',3);

-- 裤子,鞋子 闭合方式
create table clothing_closed(
ccloseid int primary key auto_increment, -- 主键
cctext varchar(20) not null,  -- 名称
tpid int references typeinfo(tpid) -- 所属商品类型

);	

INSERT INTO clothing_closed(cctext,tpid) values
-- 裤子
 ('纽扣',3),
 ('松紧带',3),
 ('拉链',3),
 ('系带',3),
 
 -- 鞋子
 ('套脚',4),('系带',4),('前系带',4),('侧拉链',4),('一字式扣带',4),('后拉链',4),
('拉链',4),('魔术贴',4),('松紧带',4),('扣带',4),('皮带扣',4),('丁字式扣带',4),
('搭扣',4),('前拉链',4),('后系带',4);
 
 ;


-- 元素
create table clothing_element(
ceid int primary key auto_increment,
cetext varchar(20)  not null ,
tpid int references typeinfo(tpid)

);	

INSERT INTO clothing_element(cetext,tpid) values
-- 上衣元素
('拼接',1),('纯色',1),('刺绣',1),('贴布',1),('编织',1),('破洞',1),('做旧',1),('钉珠',1),('条纹',1),('钩花',1),
('字母',1),('抽绳',1),('撞色',1),('拼色',1),('磨破',1),('格子',1),('镂空',1),('卡通动漫',1),('纹理',1),('动物印花',1),
('数码印花',1),('露脐',1),('透视',1),('绒面',1),('糖果色',1),('波点',1),('流苏',1),('花朵',1),
 
-- 裙子元素
('蕾丝',2),('印花',2),('纯色',2),('蝴蝶结',2),('大摆',2),('流苏',2),('露背',2),('露肩',2),('花边',2),('拼接',2),
('褶皱',2),('条纹',2),('格子',2),('撞色',2),('碎花',2),('麻花',2),('亮片',2),('格纹',2),('拼色',2),('波点',2),
('刺绣',2),('花色',2),('开衩',2),('字母',2),('拼皮',2),('钩花',2),('千鸟格',2),('荷叶边',2),('镂空',2),

-- 裤子元素
('破洞',3),('纯色',3),('拼接',3),('做旧',3),('磨破',3),('贴布绣',3),('磨白',3),('刺绣',3),('条纹',3),('撞色',3),
('数码印花',3),('3D印花',3),('格子',3),('竖条纹',3),('钉钻',3),('字母',3),('拼色',3),('抽绳',3),('花色',3),('毛边',3),

-- 包包
('拼接',5),('锁扣',5),('编织',5),('压纹',5),('铆钉',5),('刺绣',5),('链条',5),('做旧',5),('抽绳',5),('彩绘',5),
('流苏',5),('亮面',5),('皮带',5),('镶嵌',5),('挂饰',5),('花色',5),('字母',5),('拼色',5),('蝴蝶结',5),('菱格纹',5),
('格纹',5),('鳄鱼纹',5),('印花',5),('绒面',5),

-- 内衣
('刺绣',7),('纯色',7),('拼接',7),('糖果色',7),('钩花',7),('蝴蝶结',7),('花色',7),('撞色',7),('贴布',7),('条纹',7),
('拼色',7),('花朵',7),('抽绳',7),('编织',7),

-- 男 上衣 外套
('拼接',9),('纯色',9),('格子',9),('抽绳',9),('贴布',9),('刺绣',9),
('做旧',9),('撞色',9),('拼色',9),('破洞',9),('条纹',9),('字母',9);


-- 版型信息
CREATE TABLE clothing_typeversion(
ctid INT PRIMARY KEY AUTO_INCREMENT ,	-- 编号
cttext VARCHAR(20)  NOT NULL ,    -- 名称
tpid INT REFERENCES typeinfo(tpid)	-- 所属类目
);
INSERT INTO clothing_typeversion(cttext,tpid)
				VALUES
				('宽松',1),('修身',1),
				('直筒',1),('收腰',1),
				
				('修身',2),('宽松',2),
				('A型',2),('直筒',2),
				('包臀',2),('收腰',2),
				('H型',2),
				
				('紧身',3),('修身',3),
				('宽松',3),('直筒',3),
				('其他',3);


-- 领型信息
CREATE TABLE clothing_collar(
ccid INT PRIMARY KEY AUTO_INCREMENT ,	-- 编号
cctext VARCHAR(20)  NOT NULL ,    	-- 名称
tpid INT REFERENCES typeinfo(tpid)	-- 所属类目
);

INSERT INTO clothing_collar(cctext,tpid)
				VALUES
				('圆领',1),('连帽',1),('翻领',1),
				('立领',1),('其他领型',1),('V领',1),
				('高领',1),('半高领',1),('一字领',1),
				('半开领',1),('娃娃领',1),('方领',1),
				('海军领',1),('U型领',1),('帽领',1),
				('其他',1),


				('圆领',2),('V领',2),
				('立领',2),('高领',2),('半高领',2),
				('翻领',2),('无领',2),('一字领',2),
				('娃娃领',2),('深V领',2),('Polo领',2),
				('衬衫领',2),('彼得潘领',2),('连帽',2),
				('荷叶领',2),('方领',2),('帽领',2),
				('半开领',2),('海军领',2),('堆堆领',2),
				('斜领',2),('西装领',2),('围巾领',2),
				('双层领',2),('荡领',2),
				
				('立领',9),('连帽',9),('翻领',9),
				('V领',9),('棒球领',9),('方领',9),
				('高领',9),('U型领',9),('海军领',9),
				('一字领',9),('娃娃领',9),('堆堆领',9),
				('半高领',9),('半开领',9),('低领',9),
				('其他领型',9),('无领',9),
				('其他',9),
				
				('圆领',10),('连帽',10),
				('翻领',10),('立领',10),
				('高领',10),('无领',10),
				('V领',10),('西装领',10),
				('娃娃领',10),('方领',10),
				('青果领',10);
		 
	
				
				
-- 裙长信息
CREATE TABLE clothing_skirtsize(
cssid INT PRIMARY KEY AUTO_INCREMENT ,	-- 编号
csstext VARCHAR(20)  NOT NULL ,    -- 名称
tpid INT REFERENCES typeinfo(tpid)	-- 所属类目
);
INSERT INTO clothing_skirtsize(csstext,tpid)
				VALUES
				('短裙',2),('中裙',2),
				('中长裙',2),('长裙',2),
				('超短裙',2),('超长裙',2),
				
				('短裙',10),('中裙',10),
				('中长裙',10),('长裙',10),
				('超短裙',10),('超长裙',10);
		

-- 裙子厚度
CREATE TABLE clothing_skirthoudu(
cshid INT PRIMARY KEY AUTO_INCREMENT ,	-- 编号
cshtext VARCHAR(20)  NOT NULL ,   -- 名称
tpid INT  default 2 REFERENCES typeinfo(tpid) --  所属类目
);
insert into clothing_skirthoudu (cshtext) values
('适中'),
('偏薄'),
('偏厚'),
('加厚'),
('薄款'),
('厚');


-- 裙子摆型
CREATE TABLE clothing_skirtbaixing(
csbid INT PRIMARY KEY AUTO_INCREMENT ,	-- 编号
csbtext VARCHAR(20)  NOT NULL,    -- 名称
tpid INT  default 2 REFERENCES typeinfo(tpid) 	-- 所属类目
);

insert into clothing_skirtbaixing (csbtext) values
('常规'),
('荷叶'),
('百褶'),
('鱼尾'),
('前短后长'),
('短款包臀'),
('不对称'),
('坠地'),
('小拖尾'),
('拖尾'),
('长拖尾');


-- 裙子开衩
CREATE TABLE clothing_skirtkaicha(
cskid INT PRIMARY KEY AUTO_INCREMENT ,	-- 编号
csktext VARCHAR(20)  NOT NULL  ,  -- 名称
tpid INT  default 2 REFERENCES typeinfo(tpid)	-- 所属类目
);

insert into clothing_skirtkaicha (csktext) values
('无开衩'),
('低开衩'),
('后开衩'),
('高开衩');


-- 服装尺码
CREATE TABLE goodssize(
gsid INT PRIMARY KEY AUTO_INCREMENT,	-- 主键信息
gstext VARCHAR(50) NOT NULL		-- 尺码名称

);

INSERT INTO goodssize(gstext) VALUES 
	('S'),('M'),('L'),('ML'),('XL'),('XXL'),('均码');



-- 材质信息
CREATE TABLE material(
mtid INT PRIMARY KEY AUTO_INCREMENT ,   -- 编号
mttext VARCHAR(20)  NOT NULL  ,   -- 名称
tpid INT REFERENCES typeinfo(tpid)	-- 所属类目
);
INSERT INTO material(mttext,tpid)
				VALUES
				
				-- 上衣材质
				('棉',1),('针织',1),('其他',1),
				('涤纶',1),('牛仔布',1),('毛',1),
				('聚酯纤维',1),('PU',1),('太空棉',1),
				('雪纺',1),('蕾丝',1),('麻',1),
				('灯芯绒',1),('莫代尔纤维',1),('丝',1),
				('欧根纱',1),
				
				-- 裙子材质
				('棉',2),('针织',2),('毛呢',2),
				('聚酯纤维',2),('蕾丝',2),('雪纺',2),
				('PU',2),('牛仔布',2),('太空棉',2),
				('锦纶',2),('人字呢',2),('麻',2),
				('欧根纱',2),('腈纶',2),('灯芯绒',2),
				('毛',2),('莫代尔纤维',2),('涤纶',2),
				('羊绒',2),('毛线',2),('亚麻',2),
				('天然纤维',2),('丝',2),('真丝',2),
				('羊毛',2),('氨纶',2),('莱卡',2),
			 	('府绸',2),('织锦缎',2),
			        
			        
			        -- 裤子材质
			       ('牛仔布',3),('棉',3),('聚酯纤维',3),('PU',3),('毛呢',3),('灯芯绒',3),
					('涤纶',3),('雪纺',3),('锦纶',3),('麻',3),('水洗',3),('莫代尔',3),
					('针织',3),('太空棉',3),('蕾丝',3),('莱卡',3),('毛',3),('压花',3),
					('烫银涂层',3),('尼龙',3),('粗花呢',3),('烫金涂层',3),('丝',3),('丝光',3),
					('皮毛一体',3),


					-- 鞋子材质
			        ('PU',4),('头层牛皮',4),('牛皮',4),
			        ('帆布',4),('磨面皮',4),('二层牛皮',4),
			        ('漆皮',4),('皮毛一体',4),('棉',4),
			        ('网布',4),('羊皮',4),('猪皮',4),
			        ('马毛',4),('复合',4),('珊瑚绒',4),
			        ('小牛皮',4),('兔毛',4),('毛呢',4),
			        ('变色涂层',4),('PVC',4),('PU涂层',4),
			        ('牛仔布',4),('羊毛',4),('化学纤维',4),
			        ('油皮',4),('聚氨酯树脂合成革',4),('天鹅绒',4),
			        ('亚麻',4),('羊羔毛',4),
			        
			        -- 包包材质
			        ('PU',5),('半PU',5),
			        ('帆布',5),('牛皮',5),
			        ('尼龙',5),('头层牛皮',5),
			        ('PVC',5),('棉',5),
			        ('羊皮',5),('牛津纺',5),
			        ('涤纶',5),('粗花呢',5),
			        ('丝绒',5),('PC',5),
			        ('锦纶',5),('ABS+PC',5),
			        ('牛仔布',5),('硅胶',5),
			        ('皮毛一体',5),('麂皮',5),
			        ('麻',5), ('马毛',5),
					('兔毛',5), ('鳄鱼皮',5),
					('无纺布',5), ('成分',5),
				
				-- 配饰材质
				('合金',6), ('925银',6),
				('硅胶',6), ('棉',6),
				('针织',6), ('塑料',6),
				('羊绒',6), ('毛线',6),
				('钛钢',6), ('镀金',6),
				('记忆板材',6), ('PU',6),
				('腈纶',6), ('亚克力',6),
				('锦纶',6), ('树脂',6),
				('金属',6), ('银',6),
				('毛呢',6), ('羊毛',6),
				('牛皮',6), ('帆布',6),
				('天鹅绒',6), ('雪纺',6),
				('PC',6), ('不锈钢',6),
				('精钢',6), ('塑胶',6),
	
				-- 内衣材质	
				('棉',7),('锦纶',7),('蕾丝',7),('聚酯纤维',7),('莫代尔纤维',7),('针织',7),
				('莱卡',7),('氨纶',7),('雪纺',7),('涤棉',7),('竹纤维',7),('欧根纱',7),
				('网纱',7),('硅胶',7),('天然纤维',7),('成分',7),('蛋白质纤维',7),('太空棉',7),
				('丝',7),('竹炭纤维',7),('涤纶',7),('真丝',7),('貉子毛',7),('电力纺',7),
				('亚麻',7),('凡立丁',7),('横罗缎',7),('复合',7),	
					
				-- 男装材质	
				('棉',9), ('涤纶',9),
				('牛仔布',9), ('其他',9),
				('针织',9), ('毛呢',9),
				('太空棉',9), ('PU',9),
				('聚酯纤维',9), ('羊毛',9),
				('灯芯绒',9), ('毛',9),
				('天鹅绒',9), ('麻',9),
				('莫代尔纤维',9), ('丝绒',9),
				('羊绒',9), ('马海毛',9),
				('尼龙',9),
				
				-- 童装材质
				('棉',10),('毛呢',10),
				('聚酯纤维',10),('涤纶',10),
				('牛仔布',10),('针织',10),
				('太空棉',10),('毛',10),
				('PU',10),('锦纶',10),
				('雪纺',10),('摇粒绒',10),
				('双面呢',10),('灯芯绒',10),
				('莫代尔纤维',10),('粗花呢',10),
				('羊绒',10),('欧根纱',10),
				('天鹅绒',10),('法兰绒',10),
				('麻',10),('蕾丝',10),
				('羊羔毛',10),('羊毛',10),
				('皮毛一体',10),('提花布',10),
				('空气层',10),('成分',10),
			
				-- 家居材质
				('棉',11),('塑料',11),
				('PVC',11),('不锈钢',11),
				('PP棉',11),('聚酯纤维',11),
				('PP材质',11),('陶瓷',11),
				('无纺布',11),('纸',11),
				('玻璃',11),('金属',11),
				('木',11),('牛津布',11),
				('树脂',11),('天然纤维',11),
				('硅胶',11),('ABS',11),
				('PP',11),('珊瑚绒',11),
				('PU',11),('铁',11),
				('涤棉',11),('毛',11),
				('涤纶',11),('尼龙',11),
				('帆布',11),('法兰绒',11),
				
				-- 小家电材质
				('塑料',12),('金属',12),
				('硅胶',12),('PU',12),
				('不锈钢',12),('陶瓷',12),
				('合金',12),('树脂',12),
				('ABS',12),('塑钢',12),
				('玻璃钢',12),('亚克力',12),
				('PVC',12),('塑胶',12),
				('木',12),('记忆塑料',12),
				('聚氨酯树脂合成革',12),('紫砂',12),
				('铁',12),('半PU',12),
				('毛',12),('板材',12),
				('PC',12),('棉',12),
				('亚麻',12),('镁铝合金',12),
				('帆布',12),('尼龙',12);
	
	
	
-- 鞋底材质
create table sole(
	soleid int primary key auto_increment,
	soletext varchar(20) not null unique,
	tpid INT REFERENCES typeinfo(tpid)	-- 所属类目
);
	
INSERT INTO sole (soletext,tpid)
			VALUES
			('橡胶',4),('防滑橡胶',4),('耐磨橡胶',4),('复合底',4),('牛筋',4),('天然橡胶',4),
			('EVA',4),('泡沫',4),('碳素橡胶',4),('千层底',4),('木质',4),('硬质橡胶',4),
			('CONTAGRIP',4),('水晶底',4),('真皮底',4),('软木',4),('PHYLON',4),('HYPERGRIP',4),
			('SKY',4),('CLINGER',4);


-- 箱包外形
create table packagetype(
	ptid int primary key auto_increment,
	pttext varchar(20) not null unique ,
	tpid int references typeinfo(tpid)  -- 所属商品类型
);

	
INSERT INTO packagetype (pttext,tpid)
			VALUES
			('横款方形',5),('竖款方形',5),('水桶形',5),('翅膀形',5),('贝壳形',5),('箱形',5),
			('梯形',5),('方盒形',5),('枕头形',5),('圆盒形',5),('动物形',5),('信封形',5),
			('异形',5),('圆桶形',5),('购物袋形',5),('三角形',5),('马鞍形',5),('菜篮形',5),
			('新月形',5),('饺子形',5);


-- 箱包内部结构

create table package_structure(
pgstid INT PRIMARY KEY AUTO_INCREMENT,    -- 主键编号
pgsttext varchar(20) not null unique, -- 名称
tpid int references typeinfo(tpid)  -- 所属商品类型
);

INSERT INTO package_structure (pgsttext,tpid)
			VALUES
		('拉链暗袋',5),('手机袋',5),('卡位',5),('夹层拉链袋',5),('暗格',5),('大钞夹',5),
		('证件位',5),('拉链格',5),('电脑插袋',5),('零钱位',5),('相片位',5),('钥匙位',5),
		('相机插袋',5);


-- 店铺信息
CREATE TABLE storeinfo(
stid INT PRIMARY KEY AUTO_INCREMENT,    -- 主键编号
stname VARCHAR(200) NOT NULL,		-- 店铺全称
stnum VARCHAR(200),			-- 店铺联系电话
stqq VARCHAR(200),			-- qq
staddress VARCHAR(200),			-- 地址
stareaid  INT  REFERENCES areainfo(aid) -- 地区

);

INSERT INTO storeinfo (stname,stnum,stqq,staddress,stareaid)
			VALUES
		      ('西子梦纱','16868686861','818181811','山下湖边61号',13),
		      ('绫罗锦绣','168686868611','818181811','山下湖边611号',13),
		      
		      ('千荷沐雨','26868686862','818181812','山下湖边62号',14),
		      ('洞庭秋','268686868621','818181812','山下湖边621号',14),
		      
		      ('玉兰君子','36868686866','818181813','山下湖边69号',15),
		      ('百一','368686868661','818181813','山下湖边691号',15),

		      ('普拉达','468686868688','818181814','山下湖边696号',16),
		      ('森森','4686868686889','818181814','山下湖边6969号',16);

		      
			  



-- 商品品质标识
CREATE TABLE goodstag(
tagid INT PRIMARY KEY AUTO_INCREMENT,	-- 主键信息
tagname VARCHAR(50) NOT NULL,		-- 标示名称
tagimg VARCHAR(200) NOT NULL 		-- 图标
);

INSERT INTO goodstag (tagname,tagimg) VALUES
			
			('秋冬新品','sysimg/goodstag/.jpg'),
			('圣诞促销','sysimg/goodstag/.jpg'),		
		
			('月度前十','sysimg/goodstag/.jpg'),
			('钻石品质','sysimg/goodstag/.jpg');
				



-- 搜索关键字
CREATE TABLE keywordinfo(	
kwid INT PRIMARY KEY AUTO_INCREMENT,	-- 搜索关键字编号 ，主键

kwtext VARCHAR(100) NOT NULL 		-- 文本

);

INSERT INTO keywordinfo (kwtext) VALUES 
('时尚'),('牛仔'),('简约'),('鱼尾'),('印花'),('加绒加厚'),('白色衬衫'),('包臀'),('公主'),('娃娃领'),
('灯笼袖'),('拼接'),('波西米亚'),('糖果'),('连帽'),('迷彩'),('高腰'),('百搭'),('撞色'),('做旧'),
('皮衣'),('孕妇'),('复古'),('拉链'),('打底背心'),('学院'),('七分'),('网纱'),('伞裙'),('蕾丝'),
('性感'),('连衣裙'),('裘皮'),('双层'),('针织'),('打底裤'),('仿皮'),('OL'),('文艺'),('阔腿'),
('数字'),('棒球服'),('吊带'),('百褶领'),('假两件'),('修身'),('休闲'),('海军领'),('系带'),('个性'),
('纯色'),('可爱'),('立领'),('豹纹'),('喇叭袖'),('水钻'),('一字领'),('帆布'),('新款'),('厚底'),
('秋冬'),('镂空'),('女神'),('纯棉'),('加绒'),('甜美'),('条纹'),('松糕鞋'),('圆领'),('卫衣'),
('韩版'),('开叉'),('刺绣'),('灯芯绒'),('卡通'),('棉麻'),('补丁'),('字母'),('萝卜裤'),('同款'),
('背带'),('假口袋'),('衬衫'),('加厚'),('休闲裤'),('九分'),('大码'),('显瘦'),('牛仔裤'),('千鸟格'),
('羊皮'),('荷叶'),('单鞋'),('情侣'),('外套'),('水手服'),('流苏'),('沙滩'),('小香风'),('规则'),
('蝴蝶结'),('小清新'),('宽松'),('水墨'),('绒面'),('松紧'),('日系'),('韩系'),('T恤'),('百褶裙'),
('露肩'),('哈伦'),('长款'),('雪纺'),('不规则'),('涂鸦'),('v领'),('欧美'),('套头'),('半身裙'),
('春季新品'),('短款');

-- 规格信息表
create table specifications(
spid  INT PRIMARY KEY AUTO_INCREMENT , -- 编号 主键
sptext varchar(50) not null unique   -- 规格名称
);


insert into specifications (sptext) values('类目');
insert into specifications (sptext) values('衣长');
insert into specifications (sptext) values('版型');
insert into specifications (sptext) values('领型');
insert into specifications (sptext) values('元素');
insert into specifications (sptext) values('裙长');
insert into specifications (sptext) values('腰线高度');
insert into specifications (sptext) values('材质');
insert into specifications (sptext) values('裙子厚度');
insert into specifications (sptext) values('摆型');
insert into specifications (sptext) values('开衩');
insert into specifications (sptext) values('裤长');
insert into specifications (sptext) values('裤子厚度');
insert into specifications (sptext) values('闭合方式');
insert into specifications (sptext) values('鞋底材质');
insert into specifications (sptext) values('箱包外形');
insert into specifications (sptext) values('硬度');
insert into specifications (sptext) values('有无夹层');
insert into specifications (sptext) values('内部结构');


select *from specifications;

-- 商品类型与规格
create table typeinfoandspecifications ( 

tpid int not null, -- 类型编号，大类
spid int not null,  -- 规格编号
sptext varchar(50)  not null, -- 规格名称
primary key (tpid,spid) ,  -- 联合主键 
foreign key (tpid) references typeinfo(tpid), -- 外键
foreign key (spid) references specifications(spid) -- 外键

);

INSERT INTO typeinfoandspecifications (tpid,spid,sptext) VALUES
(1,1,'类目'),(1,2,'衣长'),(1,3,'版型'),(1,4,'领型'),(1,5,'元素'),

(2,1,'类目'),(2,6,'裙长'),(2,3,'版型'),(2,7,'腰线高度'),(2,8,'材质'),(2,9,'裙子厚度'),(2,10,'摆型'),(2,11,'开衩'),(2,5,'元素'),

(3,1,'类目'),(3,12,'裤长'),(3,3,'版型'),(3,13,'裤子厚度'),(3,7,'腰线高度'),(3,14,'闭合方式'),(3,8,'材质'),(3,5,'元素'),

(4,1,'类目'),(4,14,'闭合方式'),(4,15,'鞋底材质'),(4,8,'材质'),

(5,1,'类目'),(5,16,'箱包外形'),(5,8,'材质'),(5,19,'内部结构'),(5,5,'元素');
	







-- 商品 信息表
CREATE TABLE goodsinfo(
gdid INT PRIMARY  KEY AUTO_INCREMENT,  		  -- 主键编号
gdname  VARCHAR(200) NOT NULL ,			  -- 商品名称
tpid INT REFERENCES  typeinfo.tpid,		  -- 商品类型（类目）

ctid INT REFERENCES clothing_typeversion.ctid,	  -- 版型
ccid INT REFERENCES clothing_collar.ccid,	  -- 领型
mtid INT  REFERENCES material(mtid),  -- 材质

ceid INT  REFERENCES  clothing_element(ceid),  -- 元素

clhid INT  REFERENCES clothing_lineheight(clhid), -- 腰线高度

ccloseid int references clothing_close(ccloseid), -- 闭合方式


csid INT REFERENCES clothing_size(csid),		  -- 衣长


cssid INT REFERENCES clothing_skirtsize(cssid) ,	  -- 裙长
cshid int references clothing_skirthoudu(cshid), -- 裙子厚度
csbid int references clothing_skirtbaixing(csbid),  -- 摆型（裙子）
cskid int references clothing_skirtkaicha(cskid), -- 开衩（裙子）


ctsid int references clothing_trouserssize(ctsid) , -- 裤长
cthid int references clothing_trousers_houdu(cthid), -- 裤子厚度

soleid int references sole(soleid), -- 鞋底材质

ptid  int references  packagetype(ptid) , -- 箱包外形
packagehardness int check(packagehardness=1 or packagehardness=2), -- 箱包硬度（1硬   2软）
packageinner int check(packageinner=1 or packageinner=2), -- 箱包夹层（1无   2有）
pgstid int references package_structure(pgstid), -- 箱包内部结构


stid INT REFERENCES storeinfo(stid), 	          -- 店铺编号
tagid INT  REFERENCES goodstag(tagid),		  -- 标签信息
gtkeywords VARCHAR(200) ,			  -- 商品 关键字（多个之间用‘ ’分割）
gsid int REFERENCES goodssize(gsid),		  -- 尺码
gtdate DATETIME, 				  -- 商品录入时间，同时也是商品上市时间
gimg varchar(300)
);




-- 商品图片表
CREATE TABLE goodsimage(
gimgid INT PRIMARY KEY AUTO_INCREMENT,	-- 主键编号
gimgurl VARCHAR(255) NOT NULL,		-- 路径
gdid INT REFERENCES goodsinfo(gdid),	-- 所属商品（唯一）
gimgtype int,  -- 1 为主图，1-6为 主图  7之后为明细图片

FOREIGN KEY (gdid) REFERENCES goodsinfo(gdid)

);


-- 商品价格
CREATE TABLE goodsprice(
gpid INT PRIMARY KEY AUTO_INCREMENT,  	-- 主键编号
gdid INT  REFERENCES goodsinfo(gdid),	-- 所属商品
utid INT  REFERENCES usertypeinfo(utid), -- 客户类型
price DOUBLE NOT NULL,			-- 价格

FOREIGN KEY (gdid) REFERENCES goodsinfo(gdid)

);

-- 商品变价记录
CREATE TABLE goodspricehistory(
hid INT PRIMARY KEY AUTO_INCREMENT,	 -- 主键
gdid INT  REFERENCES goodsinfo(gdid),	 -- 所属商品
utid INT  REFERENCES usertypeinfo(utid), -- 客户类型
price_previous DOUBLE NOT NULL,    	 -- 变动之前的价格
changedate DATETIME, 			 -- 本次变价时间
FOREIGN KEY (gdid) REFERENCES goodsinfo(gdid)
);


-- 商品用户评论
CREATE TABLE goodscomment(
ufid INT REFERENCES userinfo(ufid) ,	-- 用户编号
gdid INT REFERENCES goodsinfo(gdid),	-- 商品编号
gcdate DATETIME NOT NULL,		-- 评论日期
gctext TEXT NOT NULL,			-- 内容
gctype INT CHECK(gctype=0 OR gctype=1),	-- 类型（顶或踩）

CONSTRAINT gc_pk PRIMARY KEY(ufid,gdid), -- 联合主键

FOREIGN KEY (ufid) REFERENCES userinfo(ufid),
FOREIGN KEY (gdid) REFERENCES goodsinfo(gdid)

);


-- 用户商品收藏信息
CREATE TABLE goodscollection(
ufid INT REFERENCES userinfo(ufid),  -- 用户id
gdid INT REFERENCES goodsinfo(gdid), -- 商品id

CONSTRAINT gclpk  PRIMARY KEY (ufid,gdid), -- 联合主键
FOREIGN KEY (ufid) REFERENCES userinfo(ufid),
FOREIGN KEY (gdid) REFERENCES goodsinfo(gdid)
);



-- 订单信息表
CREATE TABLE orderinfo(
ofid VARCHAR(50) PRIMARY KEY, 	-- 编号
ofuser INT REFERENCES userinfo(ufid), -- 所属用户
ofdate  DATETIME NOT NULL,	-- 下单日期
stid int , -- 订单所属供应商

ofstate  INT CHECK(ofstate BETWEEN 0 AND 6), -- 订单状态（0 暂存（购物车）  1 提交未审核   2已审核未发货  3 已发货未付款  4 已付款  5 拒付（或作废） 6 完成（24小时后无异常自动变更））
address varchar(200), -- 收件地址
recipient varchar(100), -- 收件人
contactnumber varchar(100), -- 联系电话
FOREIGN KEY (ofuser) REFERENCES userinfo(ufid),  -- 订单所属用户
FOREIGN KEY (stid) REFERENCES storeinfo(stid)  -- 订单所属供应商

);

-- 订单明细表
CREATE TABLE orderlist(
olid VARCHAR(50) PRIMARY KEY,			-- 编号
gdid INT REFERENCES goodsinfo(gdid),		-- 单品编号
gdcount INT CHECK(gdcount>0),			-- 单品购买数量
price DOUBLE,  					-- 单品订单成交价	
ofid VARCHAR(50),  	-- 所属订单
FOREIGN KEY (ofid) REFERENCES orderinfo(ofid)  -- 订单所属用户
);

-- =======================================

-- 广告信息管理

CREATE TABLE advertisement(
adid INT PRIMARY KEY AUTO_INCREMENT,      -- 主键编号

adimg VARCHAR(200) NOT NULL,  		  -- 广告图片

adlink VARCHAR(100) NOT NULL,   	  -- 广告链接

adindex INT ,			          -- 优先级
	
adtype INT 				  -- 广告类型(1首页大屏滚动广告   2 首页两端对联广告   3 特定区域广告)

);

-- 首页主题信息表
CREATE TABLE theme(

thid INT PRIMARY KEY AUTO_INCREMENT,		-- 主键编号
thtext VARCHAR(20) NOT NULL 			-- 名称
);

-- 商品主题表
CREATE TABLE goodsOfTheme(
thid INT REFERENCES theme(thid),	-- 主题编号
gdid INT REFERENCES goodsinfo(gdid),    -- 商品编号
tddate DATETIME NOT NULL,               -- 添加日期

CONSTRAINT gotpk PRIMARY KEY(thid,gdid)

);


-- ==================后台===========================

-- 滚屏广告

CREATE TABLE rollingadvertisement(

raid INT PRIMARY KEY AUTO_INCREMENT,  -- 主键
raimg VARCHAR(300) NOT NULL, -- 图片
raurl VARCHAR(300) NOT NULL, -- 访问路径
radate DATETIME NOT NULL  -- 开始时间

);

-- 测试数据
INSERT INTO rollingadvertisement (raimg,raurl,radate) VALUES ('gg1.png','/meilishuo/a.jsp','2016-06-12 12:00:00');
INSERT INTO rollingadvertisement (raimg,raurl,radate) VALUES ('gg2.png','/meilishuo/b.jsp','2016-06-12 16:00:00');
INSERT INTO rollingadvertisement (raimg,raurl,radate) VALUES ('gg3.png','/meilishuo/c.jsp','2016-06-12 18:00:00');


















-- ===================存储过程==========================

/**

DELIMITER $$

USE `mls`$$

DROP PROCEDURE IF EXISTS `dokeyword`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dokeyword`()
BEGIN
 DECLARE  ok INT DEFAULT 0;
 DECLARE  gid INT;
 DECLARE  typename VARCHAR(50);
 DECLARE sttid INT DEFAULT 0;
 DECLARE  cr1 CURSOR FOR   SELECT gdid FROM goodsinfo ;  -- 首先这里对游标进行定义
 DECLARE  CONTINUE HANDLER FOR NOT FOUND  SET  ok = 1;   -- 这个是个条件处理,针对NOT FOUND的条件,当没有记录时赋值为1
 OPEN  cr1;  -- 接着使用OPEN打开游标
 lp1:LOOP
 
	FETCH  cr1 INTO gid; 
	
	IF ok=1 THEN
	      LEAVE lp1;
	END IF;
	
	-- 添加关键字
	SELECT tpname INTO typename FROM goodsinfo gf JOIN typeinfo tp ON gf.tpid=tp.tpid WHERE gf.gdid=gid;
	
	
	
	 SET sttid= FLOOR(1 + (RAND() * 8)) ;
	-- 添加供应商
	 UPDATE goodsinfo SET gtkeywords=CONCAT(typename,' '),stid=sttid WHERE gdid=gid;
	
 
 END LOOP;
 CLOSE  cr1;  -- 用完后记得用CLOSE把资源释放掉
END$$

DELIMITER ;


**/
