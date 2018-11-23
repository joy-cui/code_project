INSERT INTO `errcode` VALUES (109, 102, '1020x040000', '消息参数错误,拒绝加入会议', 'msg param error', '参数错误加入会议失败（40000）', 'ter', 3);
INSERT INTO `errcode` VALUES (110, 102, '1020x040001', '获取会议信息超时,拒绝加入会议', 'devmgr confinfo timeout', '获取信息超时加入会议失败（40001）', 'ter', 3);
INSERT INTO `errcode` VALUES (111, 102, '1020x040002', '当前系统负载参数为空或加密长度错误,拒绝加入会议', 'systemload param is null', '加入会议失败（40002）', 'ter', 3);
INSERT INTO `errcode` VALUES (112, 102, '1020x040003', '当前系统负载信息解密失败,拒绝加入会议', 'decrypt cursystemload error', '加入会议失败（40003）', 'ter', 3);
INSERT INTO `errcode` VALUES (113, 102, '1020x040004', '授权时间已经到期,拒绝加入会议', 'licence time expring', '授权时间到期加入会议失败（40004）', 'ter', 3);
INSERT INTO `errcode` VALUES (114, 102, '1020x040005', '超出sr终端系统授权数,拒绝加入会议', 'exceed srcount licence', '超出终端授权数加入会议失败（40005，40006）', 'ter', 3);
INSERT INTO `errcode` VALUES (115, 102, '1020x040006', '超出标准终端系统授权数,拒绝加入会议', 'exceed stdcount licence', '超出终端授权数加入会议失败（40005，40006）', 'ter', 3);
INSERT INTO `errcode` VALUES (116, 102, '1020x040007', '密码错误,拒绝加入会议', 'password wrong', '密码错误加入会议失败（40007）', 'ter', 3);
INSERT INTO `errcode` VALUES (117, 102, '1020x040008', '会议被设定自动录制,但系统没有录制授权,拒绝加入会议', 'sys not have rec licence', '无录制授权加入会议失败（40008）', 'ter', 3);
INSERT INTO `errcode` VALUES (118, 102, '1020x040009', '主席（会议创建者）未入会,拒绝加入会议', 'chair first', '主持人未入会加入会议失败（40009）', 'ter', 3);
INSERT INTO `errcode` VALUES (119, 102, '1020x04000A', '会议被锁定,拒绝加入会议', 'conf is locked', '会议锁定加入会议失败（4000A）', 'ter', 3);
INSERT INTO `errcode` VALUES (120, 102, '1020x04000B', '会议的通道已经分配完,拒绝加入会议', 'channelid full', '加入会议失败（4000B）', 'ter', 3);
INSERT INTO `errcode` VALUES (121, 102, '1020x04000C', '超出单会议最大终端数授权限制,拒绝加入会议', 'exceed maxternumperconf licence', '超出授权数加入会议失败（4000C）', 'ter', 3);
INSERT INTO `errcode` VALUES (122, 102, '1020x04000D', '超出会议最大终端数配置,拒绝加入会议', 'exceed maxternum config', '加入会议失败（4000D）', 'ter', 3);
INSERT INTO `errcode` VALUES (123, 102, '1020x04000E', '召开会议时没有可用的netmp,拒绝加入会议', 'less netmp1', '加入会议失败（4000E）', 'ter', 3);
INSERT INTO `errcode` VALUES (124, 102, '1020x04000F', '没有可用的mp', 'less mp', '没有可用的MP服务（4000F）', 'ter', 3);
INSERT INTO `errcode` VALUES (125, 102, '1020x040010', 'netmp创建会议成功,但媒体处理实例还未创建', 'netmprsp isok but mpi not create', '媒体处理实例未创建（40010）', 'ter', 3);
INSERT INTO `errcode` VALUES (126, 102, '1020x040011', 'netmp创建会议成功,但未找到媒体处理实例', 'netmprsp isok not find mpi', '未找到媒体处理实例（40011）', 'ter', 3);
INSERT INTO `errcode` VALUES (127, 102, '1020x040012', 'netmp创建会议超时,该netmp可能已经断开链接', 'offline netmp create conf timeout', '创建会议超时（40012）', 'ter', 3);
INSERT INTO `errcode` VALUES (128, 102, '1020x040013', 'netmp创建会议超时', 'online netmp create conf timeout', '创建会议超时（40013）', 'ter', 3);
INSERT INTO `errcode` VALUES (129, 102, '1020x040014', 'mp创建媒体处理实例超时', 'mp create mpi timeout', '创建媒体处理实例超时（40014）', 'ter', 3);
INSERT INTO `errcode` VALUES (130, 102, '1020x040015', '会议还未召开(标准终端)', 'conf not start', '标准终端)（40015）', 'ter', 3);
INSERT INTO `errcode` VALUES (131, 102, '1020x040016', '会议正在结束', 'conf is ending', '会议正在结束（40016）', 'ter', 3);
INSERT INTO `errcode` VALUES (132, 102, '1020x040017', 'crs正在停止录制', 'crs stopping rec', '录制服务正在停止录制（40017）', 'ter', 3);
INSERT INTO `errcode` VALUES (133, 102, '1020x040018', '终端入会时mp已经成功创建mpi,但未找到媒体处理实例', 'less mpi', '未找到媒体处理实例（40018）', 'ter', 3);
INSERT INTO `errcode` VALUES (134, 102, '1020x040019', '会议已经在netmp上召开,但未能找到合适的netmp接受该终端加入此混会议', 'not find netmp to join this mixconf', '加入会议失败（40019）', 'ter', 3);
INSERT INTO `errcode` VALUES (135, 102, '1020x04001A', '会议已经在netmp上召开,但未能找到合适的netmp接受该终端加入此普通会议', 'not find netmp to join this normalconf', '加入会议失败（4001A）', 'ter', 3);
INSERT INTO `errcode` VALUES (136, 102, '1020x04001B', '会议已经召开,请求入会时没有可用的netmp', 'less netmp4', '没有可用的netmp服务（4001B）', 'ter', 3);
INSERT INTO `errcode` VALUES (137, 102, '1020x04001C', '没有该会议(会议不存在)', 'mc has no confid', '会议不存在（4001C）', 'ter', 3);
INSERT INTO `errcode` VALUES (138, 102, '1020x04001D', '请求消息没有发起者类型', 'req msg has no sponsortype', '没有发起者类型（4001D）', 'ter', 3);
INSERT INTO `errcode` VALUES (139, 102, '1020x04001E', '请求消息中发起者类型错误', 'req msg sponsortype error', '发起者类型错误（4001E）', 'ter', 3);
INSERT INTO `errcode` VALUES (140, 102, '1020x04001F', '请求消息中终端id号错误', 'req msg terid error', '终端ID号错误（4001F）', 'ter', 3);
INSERT INTO `errcode` VALUES (141, 102, '1020x040020', '会议录制状态：crs服务故障迁移超时', 'crs reopen timeout', '录制服务故障迁移超时（40020）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (142, 102, '1020x040021', '会议录制状态：crs创建会议超时', 'crs create conf timeout', '录制服务创建会议超时（40021）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (143, 102, '1020x040022', '会议录制状态：开启录制超时', 'start rec timeout', '开启录制超时（40022）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (144, 102, '1020x040023', '会议录制状态：正常结束录制超时', 'stop rec timeout', '结束录制超时（40023）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (145, 102, '1020x040024', '会议录制状态：结束会议时结束录制超时', 'end conf stop rec timeout', '结束录制超时（40024）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (146, 102, '1020x040025', '会议录制状态：服务异常时结束录制超时', 'dev error stop rec timeout', '结束录制超时（40025）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (147, 102, '1020x040026', '会议录制状态：会议为空时结束录制超时', 'conf empty stop rec timeout', '结束录制超时（40026）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (148, 102, '1020x040027', '会议录制状态：crs故障迁移失败', 'crs reopen error', '录制服务故障迁移失败（40027）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (149, 102, '1020x040028', '会议录制状态：crs创建会议失败', 'crs create conf failed', '录制服务创建会议失败（40028）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (150, 102, '1020x040029', '会议录制状态：crs服务网络异常', 'crs closed socket', '录制服务网络异常（40029）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (151, 102, '1020x04002A', '会议录制状态：系统不支持录制(没有录制授权)', 'sys not sup rec', '没有录制授权（4002A）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (152, 102, '1020x04002B', '会议录制状态：超出录制授权', 'exceed reccount licence', '超出录制授权（4002B）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (153, 102, '1020x04002C', '会议录制状态：没有媒体处理实例', 'not have mpiinfo', '录制没有媒体处理实例（4002C）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (154, 102, '1020x04002D', '会议录制状态：没有录制屏', 'not have rec scr', '没有录制屏（4002D）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (155, 102, '1020x04002E', '会议录制状态：crs创建会议失败，无法开启录制(开启直播时设置开启录制)', 'crs create conf failed can\'t start rec', '录制服务创建失败（4002E）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (156, 102, '1020x04002F', '会议录制状态：没有可用的crs创建会议', 'not find crs create conf', '没有可用的录制服务创建会议（4002F）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (157, 102, '1020x040030', '会议直播状态：crs服务故障迁移超时', 'crs reopen timeout', '直播服务故障迁移超时（40030）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (158, 102, '1020x040031', '会议直播状态：crs创建会议超时', 'crs create conf timeout', '直播创建会议超时（40031）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (159, 102, '1020x040032', '会议直播状态：开启直播超时', 'start live timeout', '开启直播超时（40032）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (160, 102, '1020x040033', '会议直播状态：crs故障迁移失败', 'crs reopen error', '故障迁移失败（40033）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (161, 102, '1020x040034', '会议直播状态：crs创建会议失败', 'crs create conf failed', '创建会议失败（40034）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (162, 102, '1020x040035', '会议直播状态：crs服务网络异常', 'crs closed socket', '服务网络异常（40035）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (163, 102, '1020x040036', '会议直播状态：系统不支持直播(没有直播授权)', 'sys not sup live', '没有直播授权（40036）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (164, 102, '1020x040037', '会议直播状态：超出直播授权', 'exceed livecount licence', '超出直播授权（40037）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (165, 102, '1020x040038', '会议直播状态：没有媒体处理实例', 'not have mpiinfo', '没有媒体处理实例（40038）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (166, 102, '1020x040039', '会议直播状态：没有直播屏', 'not have live scr', '没有直播屏（40039）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (167, 102, '1020x04003A', '会议直播状态：srs服务不在线', 'srssvr is offline', '直播服务不在线（4003A）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (168, 102, '1020x04003B', '会议直播状态：没有可选的srs服务', 'choose srssvr failed', '没有可用的直播服务（4003B）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (169, 102, '1020x04003C', '会议直播状态：没有可用的crs创建会议', 'not find crs create conf', '没有可用的录制服务（4003C）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (170, 102, '1020x04003D', '回复终端获取双流令牌结果：获取令牌超时', 'timeout', '获取超时（4003D）', 'ter', 3);
INSERT INTO `errcode` VALUES (171, 102, '1020x04003E', '回复终端获取双流令牌结果：令牌已经在你手上', 'request itself', '令牌已存在（4003E）', 'ter', 3);
INSERT INTO `errcode` VALUES (172, 102, '1020x04003F', '回复终端获取双流令牌结果：当前令牌在网关侧(标准终端)，不管此刻申请终端是标准终端还是SR终端都直接拒绝', 'stdter is being shared', '令牌在网关侧申请终端被拒绝（4003F）', 'ter', 3);
INSERT INTO `errcode` VALUES (173, 102, '1020x040040', '回复终端获取双流令牌结果：当前已经有人在申请令牌', 'another is request', '当前已有人申请（40040）', 'ter', 3);
INSERT INTO `errcode` VALUES (174, 102, '1020x040041', '回复终端获取双流令牌结果：当前令牌回复拒绝转移令牌消息中没有明确描述拒绝原因时mc自行填入原因', 'reject', '拒绝转移（40041）', 'ter', 3);
INSERT INTO `errcode` VALUES (175, 102, '1020x040042', '终端请求创建的屏，mp创建屏幕超时', 'mp creat screen timeout', '创建屏幕超时（40042）', 'ter', 3);
INSERT INTO `errcode` VALUES (176, 102, '1020x040043', '终端请求创建的屏，屏幕数已经分配完', 'mp screen full', '屏幕数已经分配完（40043）', 'ter', 3);
INSERT INTO `errcode` VALUES (177, 102, '1020x040044', '告诉其它终端，某终端离开会议原因：网络异常', 'client network error', '网络异常终端离会（40044）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (178, 102, '1020x040045', '告诉其它终端，某终端离开会议原因：netmp故障迁移超时,再次迁移失败', 'reopen netmp timeout, transfer again error', '故障再次迁移失败（40045）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (179, 102, '1020x040046', '告诉其它终端，某终端离开会议原因：netmp故障迁移失败', 'netmp error,reopen error', '故障迁移失败（40046）', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (180, 102, '1020x040047', '主动告诉某终端自行下线原因：ccs会控删除参会人', 'ccs del participants', '会控删除参会人（40047）', 'ter', 3);
INSERT INTO `errcode` VALUES (181, 102, '1020x040048', '主动告诉某终端自行下线原因：主席删除参会人', 'chair del participants', '主持人删除参会人（40048）', 'ter', 3);
INSERT INTO `errcode` VALUES (182, 102, '1020x040049', '主动告诉某终端自行下线原因：ccs会控挂断终端', 'ccs drop ter', '会控移除终端（40049）', 'ter', 3);
INSERT INTO `errcode` VALUES (183, 102, '1020x04004A', '主动告诉某终端自行下线原因：主席挂断终端', 'Chair drop ter', '主持人移除终端（4004A）', 'ter', 3);
INSERT INTO `errcode` VALUES (184, 102, '1020x04004B', '主动告诉某终端自行下线原因：同名终端入会', 'ter Join Conf twice', '同名终端入会（4004B）', 'ter', 3);
INSERT INTO `errcode` VALUES (185, 102, '1020x04004C', 'ccs会控结束某会议', 'ccs close conf', '会控结束该会议（4004C）', 'ter', 3);
INSERT INTO `errcode` VALUES (186, 102, '1020x04004D', '(devmgr连接断开)mc结束(所有)会议', 'mc close conf', '设备管理器断开，结束会议（4004D）', 'ter', 3);
INSERT INTO `errcode` VALUES (187, 102, '1020x04004E', '主席结束某会议', 'chair close conf', '主持人结束会议（4004E）', 'ter', 3);
INSERT INTO `errcode` VALUES (188, 102, '1020x04004F', 'relayserver处理终端入会请求超时', 'relaysvr proc tjc timeout', 'relayserver服务处理终端入会请求超时（4004F）', 'ter', 3);
INSERT INTO `errcode` VALUES (189, 102, '1020x040050', '没有可用的relayserver', 'less relaysvr', '没有可用的relayserver服务（40050）', 'ter', 3);
INSERT INTO `errcode` VALUES (190, 102, '1020x040051', 'mp成功创建mpi,等待mp队列的终端所关联netmp错误', 'in waitmpters this ter relatednetmpid error', '关联MP服务错误（40051）', 'ter', 3);
INSERT INTO `errcode` VALUES (191, 108, '1080x0A0000', '直播推送失败', 'The current live url may be wrong', '直播推送失败（A0000）', 'mc', 9);
INSERT INTO `errcode` VALUES (192, 109, '1090x0D0000', '录制参数错误', 'Record ChannelParameter Error', '录制参数错误（D0000）', 'ter', 10);
INSERT INTO `errcode` VALUES (193, 109, '1090x0D0001', '直播参数错误', 'Live ChannelParameter Error', '直播参数错误（D0001）', 'ter', 10);
INSERT INTO `errcode` VALUES (194, 109, '1090x0D0002', '直播设置地址错误', 'Live URL Error', '直播设置地址错误（D0002）', 'ter', 10);
INSERT INTO `errcode` VALUES (195, 109, '1090x0D0003', '请求终端列表超时', 'ReqConfTermList timeout', '终端列表请求超时（D0003）', 'ter', 10);
INSERT INTO `errcode` VALUES (196, 109, '1090x0D0004', '同账号终端加入被踢', 'ter Join Conf twice', '账号重复登陆下线（D0004）', 'ter', 10);
INSERT INTO `errcode` VALUES (197, 109, '1090x0D0005', '加入会议超时', 'OnRspJoinConf timeout', '加入会议超时（D0005）', 'ter', 10);
INSERT INTO `errcode` VALUES (198, 109, '1090x0D0006', '请求桌面共享超时', 'ReqSendAssistantVideo Timeout', '请求桌面共享超时（D0006）', 'ter', 10);
INSERT INTO `errcode` VALUES (199, 101, '1010x030000', 'redis连接异常', 'redis disconnect', 'redis连接异常（30000）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (200, 101, '1010x030001', '序列号错误', 'serial error', '序列号错误（30001）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (201, 101, '1010x030002', '更新数据库设备参数失败', 'update device db param error', '数据库设备参数失败（30002）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (202, 101, '1010x030003', '分配设备编号失败', 'generate deviceid error', '分配设备编号失败（30003）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (203, 101, '1010x030004', '获取设备编号失败', 'get deviceid error', '获取设备编号失败（30004）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (204, 101, '1010x030005', '设备参数插入数据库失败', 'insert into device param error', '设备参数插入数据库失败（30005）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (205, 101, '1010x030006', '会议不在mysql数据库中', 'conference is not exist', '会议不在mysql数据库中（30006）', 'mc、ter', 2);
INSERT INTO `errcode` VALUES (206, 101, '1010x030007', '会议所选mc不在redis中', 'choose mc not in redis', '会议所选mc不在redis中（30007）', 'mc、ter', 2);
INSERT INTO `errcode` VALUES (207, 101, '1010x030008', '注册消息中地址类型为空', 'nettype is null', '注册消息中地址类型为空（30008）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (208, 101, '1010x030009', '内网地址错误', 'ipaddr_in is error', '内网地址错误（30009）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (209, 101, '1010x03000A', '外网地址错误', 'ipaddr_out is error', '外网地址错误（3000A）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (210, 101, '1010x03000B', 'vpn地址错误', 'ipaddr_vpn is error', 'vpn地址错误（3000B)', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (211, 101, '1010x03000C', '注册消息中地址类型错误', 'nettype is error', '注册消息中地址类型错误(3000C)', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (212, 101, '1010x03000D', '域名信息不在redis中', 'domainname not in redis', '域名信息不在redis中(3000D)', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (213, 101, '1010x03000E', '域名信息不在当前hosts配置文件中', 'domainname not in hosts file', '域名信息不在当前hosts配置文件中(3000E)', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (214, 101, '1010x03000F', '域名在redis中,但不在当前内存,再次加载hosts中域名信息更新内存，对比更新内存中域名对应ip后同步至hosts文件时未找到域名信息', 'not find domainname in hosts file', '未找到域名信息（3000F）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (215, 101, '1010x030010', '域名在redis中,也在当前内存，更新内存中域名对应ip后同步至hosts文件时未找到域名信息', 'update ip to hosts file failed', '未找到域名信息（30010）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (216, 101, '1010x030011', '域名对应ip更新完成，但重启nginx失败', 'domainname ip have change reload nginx failed', '重启nginx失败（30011）', 'mc、netmp、relaymc、mp、gw、relayserver、crs、stunserver', 2);
INSERT INTO `errcode` VALUES (218, 100, '1000x020001', '登录超时', '', '登陆超时（20001）', '调用者', 1);
INSERT INTO `errcode` VALUES (219, 100, '1000x020002', '服务器错误', '', '服务器错误（20002）', '调用者', 1);
INSERT INTO `errcode` VALUES (220, 100, '1000x020003', '无效的 token', '', '无效的令牌（20003）', '调用者', 1);
INSERT INTO `errcode` VALUES (221, 100, '1000x020004', '用户不存在', '', '用户不存在（20004）', '调用者', 1);
INSERT INTO `errcode` VALUES (222, 100, '1000x020005', 'appid 不存在', '', '应用程序编号错误（20005）', '调用者', 1);
INSERT INTO `errcode` VALUES (223, 100, '1000x020006', '成员信息无效', '', '信息无效（20006）', '调用者', 1);
INSERT INTO `errcode` VALUES (224, 100, '1000x020007', 'appid 为空', '', '应用程序软件编号为空（20007）', '调用者', 1);
INSERT INTO `errcode` VALUES (225, 100, '1000x020008', 'secretKey 为空', '', '密码为空(20008)', '调用者', 1);
INSERT INTO `errcode` VALUES (226, 100, '1000x020100', 'appid不能为空', '', '应用程序软件编号为空（20100）', '调用者', 1);
INSERT INTO `errcode` VALUES (227, 100, '1000x020101', '非法的appid', '', '非法的应用程序软件编号（20101）', '调用者', 1);
INSERT INTO `errcode` VALUES (229, 100, '1000x020103', '不合法的邮箱地址', '', '邮箱地址错误（20103）', '调用者', 1);
INSERT INTO `errcode` VALUES (230, 100, '1000x020104', '不合法的手机号码', '', '手机号码错误（20104）', '调用者', 1);
INSERT INTO `errcode` VALUES (231, 100, '1000x020105', '该邮箱已存在(根据APPID一起判断)', '', '邮箱已经存在（20105）', '调用者', 1);
INSERT INTO `errcode` VALUES (232, 100, '1000x020106', '该手机已存在（根据APPID一起判断）', '', '手机号已经存在（20106）', '调用者', 1);
INSERT INTO `errcode` VALUES (233, 100, '1000x020107', '无效的secretKey', '', '密码无效（20107）', '调用者', 1);
INSERT INTO `errcode` VALUES (234, 100, '1000x020108', 'UID为空', '', '用户身份证明为空（20108）', '调用者', 1);
INSERT INTO `errcode` VALUES (235, 100, '1000x020109', 'nickname为空', '', '昵称为空（20109）', '调用者', 1);
INSERT INTO `errcode` VALUES (236, 100, '1000x02010A', '账号长度过长', '', '账号长度过长（2010A）', '调用者', 1);
INSERT INTO `errcode` VALUES (237, 100, '1000x02010B', '账号已存在', '', '账号已存在（2010B）', '调用者', 1);
INSERT INTO `errcode` VALUES (238, 100, '1000x02010C', 'sip注册失败', '', 'sip注册失败(2010C)', '调用者', 1);
INSERT INTO `errcode` VALUES (239, 100, '1000x020201', '该账号已冻结', '', '该账号已冻结（20201）', '调用者', 1);
INSERT INTO `errcode` VALUES (240, 100, '1000x020202', '错误的密码', '', '密码错误（20202）', '调用者', 1);
INSERT INTO `errcode` VALUES (241, 100, '1000x020203', '该账号已冻结/终端未授权', '', '账号已冻结或未授权（20203）', '调用者', 1);
INSERT INTO `errcode` VALUES (242, 100, '1000x020204', '用户唯一标识为空', '', '用户唯一标识为空（20204）', '调用者', 1);
INSERT INTO `errcode` VALUES (243, 100, '1000x020205', '用户不存在或终端未注册', '', '用户不存在或终端未注册（20205）', '调用者', 1);
INSERT INTO `errcode` VALUES (244, 100, '1000x020206', '修改密码时原有密码错误', '', '原有密码错误（20206）', '调用者', 1);
INSERT INTO `errcode` VALUES (245, 100, '1000x020207', '用户类型不匹配', '', '用户类型不匹配（20207）', '调用者', 1);
INSERT INTO `errcode` VALUES (246, 100, '1000x020208', '设备未注册', '', '设备未注册（20208）', '调用者', 1);
INSERT INTO `errcode` VALUES (247, 100, '1000x020300', '开始时间为空', '', '开始时间为空（20300）', '调用者', 1);
INSERT INTO `errcode` VALUES (248, 100, '1000x020301', '开始时间格式有误', '', '开始时间格式有误（20301）', '调用者', 1);
INSERT INTO `errcode` VALUES (249, 100, '1000x020302', '开始时间小于当前时间', '', '开始时间小于当前时间（20302）', '调用者', 1);
INSERT INTO `errcode` VALUES (250, 100, '1000x020303', '结束时间为空', '', '结束时间为空（20303）', '调用者', 1);
INSERT INTO `errcode` VALUES (251, 100, '1000x020304', '结束时间格式有误', '', '结束时间格式有误（20304）', '调用者', 1);
INSERT INTO `errcode` VALUES (252, 100, '1000x020305', '结束时间小于等于开始时间', '', '结束时间小于等于开始时间（20305）', '调用者', 1);
INSERT INTO `errcode` VALUES (253, 100, '1000x020306', '专属会议号重复', '', '会议号重复（20306）', '调用者', 1);
INSERT INTO `errcode` VALUES (254, 100, '1000x020307', '会议正在召开中', '', '会议正在召开中（20307）', '调用者', 1);
INSERT INTO `errcode` VALUES (255, 100, '1000x020308', '无效的op参数', '', '无效的参数（20308）', '调用者', 1);
INSERT INTO `errcode` VALUES (256, 100, '1000x020309', '应用无im', '', '应用无即时通讯（20309）', '调用者', 1);
INSERT INTO `errcode` VALUES (257, 100, '1000x02030A', '修改、删除的不是自己的会', '', '修改或删除的非自己会议（2030A）', '调用者', 1);
INSERT INTO `errcode` VALUES (258, 100, '1000x02030B', '密码为空', '', '密码为空（2030B）', '调用者', 1);
INSERT INTO `errcode` VALUES (259, 100, '1000x02030C', '会议未开始', '', '会议未开始（2030C）', '调用者', 1);
INSERT INTO `errcode` VALUES (260, 100, '1000x02030D', '无法找到会议信息', '', '无法找到会议信息（2030D）', '调用者', 1);
INSERT INTO `errcode` VALUES (261, 100, '1000x020400', '会议不存在', '', '会议不存在（20400）', '调用者', 1);
INSERT INTO `errcode` VALUES (262, 100, '1000x020401', '会议已结束', '', '会议已结束（20401）', '调用者', 1);
INSERT INTO `errcode` VALUES (263, 100, '1000x020402', '会议已删除', '', '会议已删除（20402）', '调用者', 1);
INSERT INTO `errcode` VALUES (264, 100, '1000x020403', '参会密码不正确', '', '参会密码不正确（20403）', '调用者', 1);
INSERT INTO `errcode` VALUES (265, 100, '1000x020404', '临时账号资源紧张，请稍后再试', '', '临时账号资源紧张，重试（20404）', '调用者', 1);
INSERT INTO `errcode` VALUES (266, 100, '1000x020405', '不是自己的会议', '', '不是自己的会议（20405）', '调用者', 1);
INSERT INTO `errcode` VALUES (267, 100, '1000x020406', 'serviceid 为空', '', '服务ID为空（20406）', '调用者', 1);
INSERT INTO `errcode` VALUES (268, 100, '1000x020407', '会议ID为空', '', '会议ID为空（20407）', '调用者', 1);
INSERT INTO `errcode` VALUES (269, 100, '1000x020408', 'thirdAudioId 必须是12位', '', '声音ID位数为12位（20408）', '调用者', 1);
INSERT INTO `errcode` VALUES (270, 100, '1000x020409', '用户重复加入会议', '', '用户重复加入会议（20409）', '调用者', 1);
INSERT INTO `errcode` VALUES (271, 100, '1000x02040A', 'id3不存在', '', 'ID不存在（2040A）', '调用者', 1);
INSERT INTO `errcode` VALUES (272, 100, '1000x02040B', 'version3不存在', '', '版本不存在（2040B）', '调用者', 1);
INSERT INTO `errcode` VALUES (273, 100, '1000x02040C', 'subject不存在', '', '主题不存在（2040C）', '调用者', 1);
INSERT INTO `errcode` VALUES (274, 100, '1000x02040D', '不允许匿名加入会', '', '不允许匿名加入会（2040D）', '调用者', 1);
INSERT INTO `errcode` VALUES (275, 100, '1000x02040E', '网关不存在', '', '网关不存在（2040E）', '调用者', 1);
INSERT INTO `errcode` VALUES (276, 100, '1000x02040F', '非法设备', '', '非法设备（2040F）', '调用者', 1);
INSERT INTO `errcode` VALUES (277, 100, '1000x020410', '用户没有媒体处理器集群', '', '用户没有媒体处理器集群（20410）', '调用者', 1);
INSERT INTO `errcode` VALUES (278, 100, '1000x020411', '没有可用的relayserver', '', '没有可用的relayserver服务（20411）', '调用者', 1);
INSERT INTO `errcode` VALUES (279, 100, '1000x020500', '通讯录id为空', '', '通讯录id为空（20500）', '调用者', 1);
INSERT INTO `errcode` VALUES (280, 100, '1000x020501', '部门id为空', '', '部门id为空（20501）', '调用者', 1);
INSERT INTO `errcode` VALUES (281, 100, '1000x020502', '查询内容为空', '', '查询内容为空（20502）', '调用者', 1);
INSERT INTO `errcode` VALUES (282, 100, '1000x020503', '用户不属于该通讯录', '', '用户不属于该通讯录（20503）', '调用者', 1);
INSERT INTO `errcode` VALUES (283, 100, '1000x020504', '用户id为空', '', '用户id为空（20504）', '调用者', 1);
INSERT INTO `errcode` VALUES (284, 100, '1000x020600', '呼叫参数不合法（呼叫类型为MCU时，呼叫参数不能为空）', '', '呼叫参数不合法（20600）', '调用者', 1);
INSERT INTO `errcode` VALUES (285, 100, '1000x020601', '设备UUID不能为空', '', '设备用户ID不能为空（20601）', '调用者', 1);
INSERT INTO `errcode` VALUES (286, 100, '1000x020602', '设备信息已存在', '', '设备信息已存在（20602）', '调用者', 1);
INSERT INTO `errcode` VALUES (287, 100, '1000x020603', '设备名称为空', '', '设备名称为空（20603）', '调用者', 1);
INSERT INTO `errcode` VALUES (288, 100, '1000x020700', '手机号为空', '', '手机号为空（20700）', '调用者', 1);
INSERT INTO `errcode` VALUES (289, 100, '1000x020701', '请求类型为空', '', '请求类型为空（20701）', '调用者', 1);
INSERT INTO `errcode` VALUES (290, 100, '1000x020702', '手机号不存在', '', '手机号不存在（20702）', '调用者', 1);
INSERT INTO `errcode` VALUES (291, 100, '1000x020703', '发送过于频繁', '', '发送过于频繁（20703）', '调用者', 1);
INSERT INTO `errcode` VALUES (292, 100, '1000x020704', '达到每天最大限度', '', '达到每天最大限度（20704）', '调用者', 1);
INSERT INTO `errcode` VALUES (293, 100, '1000x020705', '短信发送失败', '', '短信发送失败（20705）', '调用者', 1);
INSERT INTO `errcode` VALUES (294, 100, '1000x020706', '验证码为空', '', '验证码为空（20706）', '调用者', 1);
INSERT INTO `errcode` VALUES (295, 100, '1000x020707', '验证码过期', '', '验证码过期（20707）', '调用者', 10);
INSERT INTO `errcode` VALUES (296, 100, '1000x020708', '验证码不匹配', '', '验证码不匹配（20708）', '调用者', 10);
INSERT INTO `errcode` VALUES (297, 102, '1020x040052', 'mp故障迁移创建媒体处理实例超时,再次迁移mp失败', 'create mpi timeout, reopen mpi error', 'MP故障迁移（40052）', 'ter', 3);
INSERT INTO `errcode` VALUES (298, 102, '1020x040053', 'mp故障迁移创建屏幕超时,再次迁移mp失败', 'create screen timeout, reopen mpi error', '', 'ter', 3);
INSERT INTO `errcode` VALUES (299, 102, '1020x040054', 'mp故障迁移创建媒体处理实例失败,再次迁移mp失败', 'create mpi fail, and reopen mpi error', '', 'ter', 3);
INSERT INTO `errcode` VALUES (300, 102, '1020x040055', 'mp故障迁移创建屏幕失败,再次迁移mp失败', 'create screen fail, and reopen mpi error', '', 'ter', 3);
INSERT INTO `errcode` VALUES (301, 102, '1020x040056', '没有可用的mp服务,故障迁移失败', 'less mp,reopen mp error', '', 'ter', 3);
INSERT INTO `errcode` VALUES (302, 102, '1020x040057', '终端心跳超时', 'Ter HeartBeat Stopped', '终端心跳超时（40057）', 'ter', 3);
INSERT INTO `errcode` VALUES (303, 102, '1020x040058', '等待获取会议信息', 'waiting get confinfo', '', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (304, 102, '1020x040059', '群发通知与会终端,某终端从主会场移到等候区', 'exit main room then to waiting room', '', 'ter', 3);
INSERT INTO `errcode` VALUES (305, 102, '1020x04005A', '告诉某终端切换状态：你已经成功从等候区进入到主会场', 'join conf success', '', 'ter', 3);
INSERT INTO `errcode` VALUES (306, 102, '1020x04005B', '回复某终端你已经在等候区', 'already in waiting room', '', 'ter', 3);
INSERT INTO `errcode` VALUES (307, 102, '1020x04005C', '会议为空结束会议时,告诉等候区终端自行退出等候区', 'conf is empty', '', 'ter、ccs', 3);
INSERT INTO `errcode` VALUES (308, 102, '1020x04005D', '同账号终端已经入会,拒绝当前入会请求', 'same ter already in conf', '', 'ter', 3);
INSERT INTO `errcode` VALUES (309, 102, '1020x04005E', '同账号终端入会,挂断已经在会的终端', 'same ter join conf', '', 'ter', 3);
INSERT INTO `errcode` VALUES (310, 107, '1070x0E0001', '服务器设置不符合ip或域名规则', '判断服务器地址是否规则', '', 'app', 10);
