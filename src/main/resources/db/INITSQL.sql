DROP table  if exists PROV_ROAD;
create table PROV_ROAD
(
	ID          INT auto_increment,
	REF         VARCHAR(20),
	NAME        VARCHAR(20),
	ORIGIN      VARCHAR(20),
	DESTINATION VARCHAR(20),
	DISTANCE    INT default - 1,
	primary key(ID)
);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(1, 'S221', '长治-上善', '长治', '上善', 91);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(2, 'S222', '坑口-海山', '坑口', '海山', 132);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(3, 'S223','隘罗平-程江', '隘罗平', '程江', 112);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(4, 'S224', '城东-五经富', '城东', '五经富', 173);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(5, 'S225', '平远-水口', '平远', '水口', 100);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(6, 'S226', '大桥头-兴宁', '大桥头', '兴宁', 93);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(7, 'S227', '下吉-龙川', '下吉', '龙川', 100);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(8, 'S228', '车田-丰顺', '车田', '丰顺', 171);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(9, 'S229', '米福-骆湖', '米福', '骆湖', 116);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(10, 'S230', '定河桥-忠信', '定河桥', '忠信', 77);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(11, 'S231', '凤凰-湾头', '凤凰', '湾头', 102);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(12, 'S232', '潮州-汕头', '潮州', '汕头', 40);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(13, 'S233', '留黄-汕头', '留黄', '汕头', 84);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(14, 'S234', '揭阳-神泉', '揭阳', '神泉', 68);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(15, 'S235', '司马浦-神泉', '司马浦', '神泉', 38);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(16, 'S236', '揭阳-海门', '揭阳', '海门', 101);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(17, 'S237', '灰寨-田心', '灰寨', '田心', 81);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(18, 'S238', '长布-池尾', '长布', '池尾', 128);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(19, 'S239', '华城-中坝', '华城', '中坝', 65);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(20, 'S240', '河口-乌坎', '河口', '乌坎', 43);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(21, 'S241', '可塘-遮浪', '可塘', '遮浪', 44);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(22, 'S242', '河源-汕尾', '河源', '汕尾', 195);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(23, 'S243', '蓝塘-多祝', '蓝塘', '多祝', 54);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(24, 'S244', '塘面-青塘', '塘面', '青塘', 241);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(25, 'S245', '坝仔-六里', '坝仔', '六里', 57);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(26, 'S246', '长江-新村', '长江', '新村', 115);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(27, 'S247', '金水湾-转溪', '金水湾', '转溪', 41);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(28, 'S248', '老坪石-乳源', '老坪石', '乳源', 171);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(29, 'S249', '老坪石-转溪', '老坪石', '转溪', 78);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(30, 'S250', '桂头-乳源', '桂头', '乳源', 26);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(31, 'S251', '黄玲庭-新江', '黄玲庭', '新江', 54);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(32, 'S252', '翁源-清远', '翁源', '清远', 120);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(33, 'S253', '社主-银盏坳', '社主', '银盏坳', 178);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(34, 'S254', '惠州-澳头', '惠州', '澳头', 51);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(35, 'S255', '龙溪-深圳', '龙溪', '深圳', 73);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(36, 'S256', '从化-虎门', '从化', '虎门', 111);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(37, 'S257', '钟村-蕉门', '钟村', '蕉门', 38);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(38, 'S258', '石角塘-大湾', '石角塘', '大湾', 116);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(39, 'S259', '山塘-卡房', '山塘', '山塘', 50);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(40, 'S260', '岭背-莲塘', '岭背', '莲塘', 230);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(41, 'S261', '凤作-凤岗', '凤作', '凤岗', 46);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(42, 'S262', '连江-小江', '连江', '小江', 95);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(43, 'S263', '连山-大沥', '连山', '大沥', 235);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(44, 'S264', '石间-禄步', '石间', '禄步', 51);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(45, 'S265', '石间-连山', '石间', '连山', 117);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(46, 'S266', '岗坪-旺村', '岗坪', '旺村', 107);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(47, 'S267', '帽峰山-三山', '帽峰山', '三山', 102);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(48, 'S268', '勒流-金鼎', '勒流', '金鼎', 97);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(49, 'S269', '清远-龙山', '清远', '龙山', 114);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(50, 'S270', '古老-朱海港', '古老', '朱海港', 161);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(51, 'S271', '新会-崖南', '新会', '崖南', 42);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(52, 'S272', '肇庆-珠海', '肇庆', '珠海', 202);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(53, 'S273', '高要-铜鼓', '高要', '铜鼓', 185);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(54, 'S274', '惗村-广海', '惗村', '广海', 118);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(55, 'S275', '百合-大担', '百合', '大担', 87);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(56, 'S276', '腰古-那琴', '腰古', '那琴', 167);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(57, 'S277', '阳春-闸坡', '阳春', '闸坡', 78);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(58, 'S278', '潭水-溪头', '潭水', '溪头', 71);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(59, 'S279', '郁南-罗定', '郁南', '罗定', 95);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(60, 'S280', '那霍-水东', '那霍', '水东', 232);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(61, 'S281', '沙朗-沙扒', '沙朗', '沙扒', 69);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(62, 'S282', '黎村-仙坑', '黎村', '仙坑', 55);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(63, 'S283', '石板-化州', '石板', '化州', 99);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(64, 'S284', '清湖-吴川', '清湖', '吴川', 91);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(65, 'S285', '廉江-坡头', '廉江', '坡头', 108);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(66, 'S286', '廉江-化州', '廉江', '化州', 55);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(67, 'S287', '六深-邃溪', '六深', '邃溪', 77);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(68, 'S288', '湖光-造州', '湖光', '造州', 63);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(69, 'S289', '南兴-前山', '南兴', '前山', 80);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(70, 'S290', '白桔-流沙', '白桔', '流沙', 178);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(71, 'S291', '石仔岭-七经', '石仔岭', '七经', 50);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(72, 'S292', '英德-平远', '英德', '平远', 35);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(73, 'S293', '疏港大道', '湛江海洋大学', '宝满村', 30);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(74, 'S296', '石壁-沙南', '石壁', '沙南', 50);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(75, 'S331', '瑞溪-八尺', '瑞溪', '八尺', 37);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(76, 'S332', '茶阳-平远', '茶阳', '平远', 143);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(77, 'S333', '大浦-梅州', '大浦', '梅州', 87);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(78, 'S334', '松柏关-丰量', '松柏关', '丰量', 132);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(79, 'S335', '章林-公平', '章林', '公平', 197);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(80, 'S336', '澄海-南澳', '澄海', '南澳', 87);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(81, 'S337', '广澳-葵潭', '广澳', '葵潭', 124);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(82, 'S338', '溪西-金厢', '溪西', '金厢', 62);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(83, 'S339', '大坪-梨园', '大坪', '梨园', 153);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(84, 'S340', '中洞-石坝', '中洞', '石坝', 67);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(85, 'S341', '灯塔-官渡', '灯塔', '官渡', 142);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(86, 'S342', '风水-双和水', '风水', '双和水', 145);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(87, 'S343', '下窖-始兴', '下窖', '始兴', 44);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(88, 'S344', '司前-小坑', '司前', '小坑', 41);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(89, 'S345', '仁华-乐昌', '仁华', '乐昌', 54);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(90, 'S346', '凤头岭-棋王岭', '凤头岭', '棋王岭', 58);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(91, 'S347', '新丰-阳山', '新丰', '阳山', 214);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(92, 'S348', '含光-六甲洞', '含光', '六甲洞', 48);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(93, 'S349', '杨梅-爱群', '杨梅', '爱群', 84);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(94, 'S350', '珠坑-木格', '珠坑', '木格', 118);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(95, 'S351', '河儿口-莫村', '河儿口', '莫村', 47);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(96, 'S352', '荔枝岗-池洞', '荔枝岗', '池洞', 220);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(97, 'S353', '龙门-塘广坳', '龙门', '塘广坳', 47);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(98, 'S354', '良口-地豆', '良口', '地豆', 126);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(99, 'RS355', '永汉-鳌头', '永汉', '鳌头', 89);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(100, 'S356', '高潭-横岗', '高潭', '横岗', 161);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(101, 'S357', '平潭-东莞', '平潭', '东莞', 107);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(102, 'S358', '惠阳-东莞', '惠阳', '东莞', 136);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(103, 'S359', '龙岗-宝安', '龙岗', '宝安', 107);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(104, 'S360', '核电站-龙华', '核电站', '龙华', 79);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(105, 'S361', '盐步-南边', '盐步', '南边', 45);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(106, 'S362', '莲花山-金渡', '莲花山', '金渡', 137);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(107, 'S363', '西海-西郊', '西海', '西郊', 45);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(108, 'S364', '十顷-水口', '十顷', '水口', 97);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(109, 'S365', '麻斗-阳江', '麻斗', '阳江', 205);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(110, 'S366', '香洲-珠海发电厂', '香洲', '珠海发电厂', 53);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(111, 'S367', '丛奎-恩桥', '丛奎', '恩桥', 87);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(112, 'S368', '云浮-古同', '云浮', '古同', 120);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(113, 'S369', '圣堂-贵子', '圣堂', '贵子', 187);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(114, 'S370', '达同-北界', '达同', '北界', 68);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(115, 'S371', '三甲-马贵', '三甲', '马贵', 45);
INSERT INTO PUBLIC.PROV_ROAD(ID, REF, NAME, ORIGIN, DESTINATION, DISTANCE) VALUES(116, 'S372', '牛屎岭-化州', '牛屎岭', '化州', 47);

