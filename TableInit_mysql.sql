


insert into ROM_SYS_LOGIN (LOGIN_NO, LOGIN_NAME, LOGIN_PWD, USE_FLG, EXPIRE_TIME, LOGIN_FLG, PHONE_NO, LOGIN_IP, REMARK, PROVINCE_CODE)
values ('admin', '��������Ա', '79fe00adb01e2791420db84c678197fa', '0', null, null, null, null, null, '00');

insert into ROM_LOGIN_ROLE_RELATION (LOGIN_NO, ROLE_ID, REMARKS)
values ('admin', '1', '��������Ա');


insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS) values ('1', '����', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS) values ('2', '�޸�', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS) values ('3', 'ɾ��', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS) values ('4', '��Ȩ', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS) values ('5', '������ֹͣ', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS) values ('6', '�ļ��ϴ�����', null);

Insert into ROM_OPERA_CODE   (OPERA_CODE, OPERA_NAME,REMARKS)  Values ('7', 'Զ�̽ű���������',null);

 
insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS) values ('010', '���ɹ�', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS) values ('011', '����', null);

insert into ROM_PRO_CODE (PRO_CODE, PRO_NAME, PRO_VERSION, REMARKS) values ('SYSTEM', '��̨������', null, 'ϵͳ��ʼ�����ܣ�����ɾ��');
 
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('NODEMNG', '�ڵ����', null, '0', '0', null, null, 9, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSMAIN', 'bus����', '../busMain.do?node=BUSCFG&script=BUSCRIPT&run=BUSRUN', '0', 'NODEMNG', null, null, 0, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSCFG', '�ڵ�����', '../busConfigMain.do', '1', 'BUSMAIN', '1;2;3;', null, 1, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSCRIPT', 'Զ�̽ű�����', '../busScriptMain.do', '1', 'BUSMAIN', '1;2;3;', null, 2, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('NETCELL', '��Ԫ����', null, '0', '0', null, null, null, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('CMDCFG1', '��Ԫָ������', '../gotoInstructionConfig.do', '0', 'NETCELL', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS01', 'ϵͳ����', null, '0', '0', null, null, 0, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS02', '��ɫ����', '../role.do', '0', 'SYS01', '1;2;3;4;', null, 0, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS03', '���Ź���', '../loginMain.do', '0', 'SYS01', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS04', '�����������', '../passMain.do', '0', 'SYS01', '2', null, 0, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS11', '���������޸�', '../gotoUpdatePass.do', '1', 'SYS01', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS12', '��Ʒ����', '../product.do', '0', 'SYS01', '1;2;3', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS13', '����������', '../function.do', '0', 'SYS01', '1;2;3', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS14', '����Ȩ��ע��', '../popereg.do', '0', 'SYS01', '1;2;3;', null, 0, 1);
insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYSLOG', '��־����', null, '0', '0', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYSLOG1', '������־', '../logMain.do', '0', 'SYSLOG', null, null, 0, 1);

 
 
 /*==============================================================*/
/* Table: ROM_SYS_POPEDOM     Ȩ��ע���                        */
/*==============================================================*/
insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'delRole.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'gotoSetPopedom.do', '4');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'gotoAddRole.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'addRole.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'gotoUpdateRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'updateRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'setPopedom.do', '4');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS02', 'role.do', null);
insert into ROM_SYS_POPEDOM  values ('SYS02', 'roleList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'loginMain.do', null);
insert into ROM_SYS_POPEDOM  values ('SYS03', 'loginList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'gotoAddLogin.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'setLoginRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'gotoSetLoginRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'addLogin.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'gotoUpdateLogin.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'delLogin.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS03', 'updateLogin.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS04', 'resetPassword.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS04', 'passMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'setProductFunction.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'gotoUpdateProduct.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'updateProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'gotoUpdateProductFunc.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'delProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'addProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'gotoAddProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS12', 'product.do', null);
insert into ROM_SYS_POPEDOM  values ('SYS12', 'productList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'function.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'functionUpdate.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'gotoFuncUpdate.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'getFuncTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'functionAdd.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'gotoFuncAdd.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'getFuncDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS13', 'functionDelete.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'gotoUpdatePopereg.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'updatePopereg.do', '2');
 
insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'delPopereg.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'addPopereg.do', '1');
insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'poperegList.do', '1');
insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'popereg.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'gotoAddPopereg.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYS14', 'getFuncOpers.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYSLOG1', 'logReportExport.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYSLOG1', 'logMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE) values ('SYSLOG1', 'getFunctionByProCode.do', null);


 
/*==============================================================*/
/* Table: ROM_SYS_PRO_FUNCTION    ��Ʒ���ܹ�ϵ��                */
/*==============================================================*/
insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS01', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS02', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS03', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS04', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS12', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS13', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYS14', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYSLOG', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS) values ('SYSTEM', 'SYSLOG1', '���ò�Ʒ����');

/*==============================================================*/
/* Table: ROM_SYS_ROLE_FUNCTION       ��ɫ���ܹ�ϵ��            */
/*==============================================================*/
insert into ROM_SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_TYPE, ROLE_STATE, PRO_CODE, PROVINCE_CODE, TELL_TYPE, REMARKS)
values ('1', '��������Ա,��ɾ', '0', '0', 'SYSTEM', null, null, '��������Ա');

 
/*==============================================================*/
/* Table: ROM_SYS_ROLE_FUNCTION       ��ɫ���ܹ�ϵ��            */
/*==============================================================*/
insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS01', 'NULL');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS02', '1;2;3;4;');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS03', '1;2;3;');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS04', '2;');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS12', '1;2;3;');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS13', '1;2;3;');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYS14', '1;2;3;');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYSLOG', 'NULL');

insert into rom_sys_role_function (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
values ('1', 'SYSLOG1', 'NULL');

 
/*==============================================================*/
/* Table: ROM_TELLCORP_CODE  ��Ӫ�̴����                       */
/*==============================================================*/
insert into ROM_TELLCORP_CODE (TELLCORP_CODE, TELLCORP_NAME, REMARKS)
values ('0', '�ƶ�', null);

insert into ROM_TELLCORP_CODE (TELLCORP_CODE, TELLCORP_NAME, REMARKS)
values ('1', '����', null);

insert into ROM_TELLCORP_CODE (TELLCORP_CODE, TELLCORP_NAME, REMARKS)
values ('2', '��ͨ', null);

insert into ROM_TELLCORP_CODE (TELLCORP_CODE, TELLCORP_NAME, REMARKS)
values ('3', '���', null);

insert into ROM_TELLCORP_CODE (TELLCORP_CODE, TELLCORP_NAME, REMARKS)
values ('4', 'ȫ��ҵ', null);


insert into rom_sys_popedom values('2202', 'taskmain.do', 1);
insert into rom_sys_popedom values('2202', 'tasklist.do', 1);
insert into rom_sys_popedom values('2205', 'dbconnsMain.do', 1);
insert into rom_sys_popedom values('2205', 'dbconnsList.do', 1);
insert into rom_sys_popedom values('2205', 'gotoAddDBConn.do', 1);
insert into rom_sys_popedom values('2205', 'addDBConn.do', 1);
insert into rom_sys_popedom values('2205', 'updateDBConn.do', 1);
insert into rom_sys_popedom values('2205', 'delDBConn.do', 1);

