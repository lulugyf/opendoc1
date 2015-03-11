/*============================================================================================*/
/* Rom RPC oracle���ݿ�����ݳ�ʼ��������ձ�Ȼ������ʼ�����ݣ����ڻ�����ʼ���������׶� */
/* ��������Ա�ʺ� admin ���� 111111 ��ɫID 1                                                  */
/*============================================================================================*/
set define off
/*==============================================================*/
/* ������б�����                                               */
/*==============================================================*/
TRUNCATE TABLE ROM_DAYMONITOR_CONF;
TRUNCATE TABLE ROM_DAYMONITOR_DATA;
TRUNCATE TABLE EAI_APP_RULES;
TRUNCATE TABLE EAI_BUS_ADAPT_RELATION;
TRUNCATE TABLE EAI_CONF_INST_RELATION;
TRUNCATE TABLE EAI_NODES_CONFINFO;
TRUNCATE TABLE EAI_NODES_INSTANCE; 
TRUNCATE TABLE ONEBOSS_BUSIGRO_RELATION;
TRUNCATE TABLE ONEBOSS_BUSI_GROUPS;
TRUNCATE TABLE ONEBOSS_BUSI_NOTES;
TRUNCATE TABLE ROM_CRON_DATA_REPORT;
TRUNCATE TABLE ROM_CRON_TASK_CONF;
TRUNCATE TABLE ROM_CRON_TASK_DATA;
TRUNCATE TABLE ROM_FTPSITES_INFO;
TRUNCATE TABLE ROM_FTP_SCRIPT_RELATION;
TRUNCATE TABLE ROM_HOST_INFO;
TRUNCATE TABLE ROM_ITEM_ACTION;
TRUNCATE TABLE ROM_ITEM_SCRIPT_RELATION;
TRUNCATE TABLE ROM_LOGIN_ROLE_RELATION;
TRUNCATE TABLE ROM_MAINTAIN_ITEMS;
TRUNCATE TABLE ROM_OPERA_CODE;
TRUNCATE TABLE ROM_PROVINCE_CODE;
TRUNCATE TABLE ROM_PRO_CODE;
TRUNCATE TABLE ROM_PRO_FTPSITE_RELATION;
TRUNCATE TABLE ROM_PRO_HOST_RELATION;
TRUNCATE TABLE ROM_SCRIPTS_CONFIG;
TRUNCATE TABLE ROM_SYS_FUNCTION;
TRUNCATE TABLE ROM_SYS_LOGIN;
TRUNCATE TABLE ROM_SYS_OP_LOG;
TRUNCATE TABLE ROM_SYS_POPEDOM;
TRUNCATE TABLE ROM_SYS_PRO_FUNCTION;
TRUNCATE TABLE ROM_SYS_ROLE;
TRUNCATE TABLE ROM_SYS_ROLE_FUNCTION;
TRUNCATE TABLE ROM_TELLCORP_CODE;
TRUNCATE TABLE ROM_USER_INFO;
TRUNCATE TABLE ROM_EXPAND_CODE;
TRUNCATE TABLE ROM_EXPAND_INFO;
TRUNCATE TABLE ROM_NETCELL_INFO;
TRUNCATE TABLE ROM_EXPAND_CODE;
TRUNCATE TABLE ROM_OBSMONITOR_CFG;
TRUNCATE TABLE WOBSPANPROVOPRALL;

/*==============================================================*/
/* Table: ROM_ITEM_ACTION      ������Ŀ������                   */
/*==============================================================*/

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('0', '����', '��������');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('1', 'ֹͣ', '����ֹͣ');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('2', '״̬���', '����״̬���');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('3', '�������', '�������');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('4', '�ļ��ϴ�', '�ļ��ϴ�');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('5', '�ļ�����', '�ļ�����');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('6', '������ͳ��', '������ͳ��');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('7', '����ʱ��ͳ��', '����ʱ��ͳ��');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('8', 'ҵ����ܽ�������ѯ', 'ҵ����ܽ�������ѯ');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('9', 'ҵ����ܽ���ʱ����ѯ', 'ҵ����ܽ���ʱ����ѯ');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('10', 'ҵ����ϸ��ѯ', 'ҵ����ϸ��ѯ');

insert into ROM_ITEM_ACTION (ACTION_ID, ACTION_NAME, REMARKS)
values ('11', '����Ѳ��', '����Ѳ��');

commit;

/*==============================================================*/
/* Table: ROM_LOGIN_ROLE_RELATION     ���Ž�ɫ��ϵ��            */
/*==============================================================*/
insert into ROM_LOGIN_ROLE_RELATION (LOGIN_NO, ROLE_ID, REMARKS)
values ('admin', '1', '��������Ա');

commit;

/*==============================================================*/
/* Table: ROM_OPERA_CODE     ���������                         */
/*==============================================================*/
insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS)
values ('1', '����', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS)
values ('2', '�޸�', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS)
values ('3', 'ɾ��', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS)
values ('4', '��Ȩ', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS)
values ('5', '������ֹͣ', null);

insert into ROM_OPERA_CODE (OPERA_CODE, OPERA_NAME, REMARKS)
values ('6', '�ļ��ϴ�����', null);

Insert into ROM_OPERA_CODE   (OPERA_CODE, OPERA_NAME,REMARKS)
 Values ('7', 'Զ�̽ű���������',null);

commit;

/*==============================================================*/
/* Table: ROM_PROVINCE_CODE      ʡ�ݴ����                     */
/*==============================================================*/
insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('010', '���ɹ�', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('011', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('013', '���', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('017', 'ɽ��', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('018', '�ӱ�', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('019', 'ɽ��', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('022', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('030', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('031', '�Ϻ�', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('034', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('036', '�㽭', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('038', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('050', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('051', '�㶫', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('059', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('070', '�ຣ', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('071', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('074', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('075', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('076', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('079', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('081', '�Ĵ�', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('083', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('084', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('085', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('086', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('087', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('088', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('089', '�½�', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('090', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('091', '����', null);

insert into ROM_PROVINCE_CODE (PROVINCE_CODE, PROVINCE_NAME, REMARKS)
values ('097', '������', null);

commit;

/*==============================================================*/
/* Table: ROM_PRO_CODE   ��Ʒ�����                             */
/*==============================================================*/
insert into ROM_PRO_CODE (PRO_CODE, PRO_NAME, PRO_VERSION, REMARKS)
values ('SYSTEM', '��̨������', null, 'ϵͳ��ʼ�����ܣ�����ɾ��');

commit;

/*==============================================================*/
/* Table: ROM_SYS_FUNCTION    ϵͳ���ܱ�                        */
/*==============================================================*/

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSCFG', '�ڵ�����', '../busConfigMain.do', '1', 'BUSMAIN', '1;2;3;', null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSCRIPT', 'Զ�̽ű�����', '../busScriptMain.do', '1', 'BUSMAIN', '1;2;3;', null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSMAIN', 'bus����', '../busMain.do?node=BUSCFG&script=BUSCRIPT&run=BUSRUN', '0', 'NODEMNG', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('BUSRUN', '��ͣ����', '../busRunMain.do', '1', 'BUSMAIN', '5;', null, 3, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('CMDCFG1', '��Ԫָ������', '../gotoInstructionConfig.do', '0', 'NETCELL', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('IFM', '�ӿڼ��', null, '0', '0', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('IFM001', '�˿ڼ��', '../portcheckMain.do', '0', 'IFM', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('NC001', '��Ԫ�ӿ�����', '../nc001Main.do', '0', 'NETCELL', '1;2;3;7;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('NC002', '��Ԫ��չ��������', '../nc002Main.do', '0', 'NETCELL', '2;', null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('NETCELL', '��Ԫ����', null, '0', '0', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('NODEMNG', '�ڵ����', null, '0', '0', null, null, 9, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('PM001', '������Ϣ����', '../pm001Main.do', '0', 'ProMonit', '1;2;3;7;', null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('PM002', 'ҵ����̼��', '../pm002Main.do', '0', 'ProMonit', '1;2;3;5;', null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('PROCCFG', '���̹���', null, '0', '0', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('PROCCFG1', '�����ļ��޸�', '../gotoProcessManagement.do', '0', 'PROCCFG', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('ProMonit', '���̼��', null, '0', 'SysMonit', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SCGDLOG', '��־��ѯ', null, '0', '0', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SCGDLOG1', '��־��ѯ', '../gotoInquireSyslog.do', '0', 'SCGDLOG', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS01', 'ϵͳ����', null, '0', '0', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS016', 'Զ���ļ�����', null, '0', '0', null, null, 4, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS017', 'ҵ��ڵ����', null, '0', '0', null, null, 5, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS018', 'ҵ���ؽű�����', '../businessScriptMain.do?dataFuncCode=SYS300', '0', 'SYS017', '1;2;3;5;', null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS019', '�ֻ�����ҵ��', '../businessDataMain.do?dataFuncCode=SYS300&busiID=BIP2B036', '0', 'SYS20', null, null, 4, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS02', '��ɫ����', '../role.do', '0', 'SYS01', '1;2;3;4;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS020', '�ֻ�֧��ҵ��', '../businessDataMain.do?dataFuncCode=SYS300&busiID=BIP2B260', '0', 'SYS20', null, null, 5, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS03', '���Ź���', '../loginMain.do', '0', 'SYS01', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS04', '�����������', '../passMain.do', '0', 'SYS01', '2', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS05', 'Զ����������', null, '0', '0', null, null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS06', '��������', '../host.do', '0', 'SYS05', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS07', '�����û�����', '../hostuser.do', '1', 'SYS05', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS08', '����ά��', null, '0', '0', null, null, 8, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS10', '����ά��', '../cmdMain.do', '0', 'SYS08', '5', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS11', '���������޸�', '../gotoUpdatePass.do', '1', 'SYS01', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS12', '��Ʒ����', '../product.do', '0', 'SYS01', '1;2;3', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS13', '����������', '../function.do', '0', 'SYS01', '1;2;3', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS14', '����Ȩ��ע��', '../popereg.do', '0', 'SYS01', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS15', '����ά��', null, '0', '0', null, null, 3, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS19', '��ط�ҵ�����ʵʱ���', '../businessTotalMain.do?dataFuncCode=SYS300&busiID=SUM', '0', 'SYS20', null, null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS20', '�ص�ҵ����', null, '0', '0', null, null, 6, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS200', 'Զ���ļ�����', '../remoteFileMng.do', '0', 'SYS016', '6;', null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS201', '�ļ��ϴ�', '../gotoRemoteFileUpload.do', '1', 'SYS016', '6;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYS300', 'ҵ��ڵ�����', '../businessMain.do', '0', 'SYS017', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYSLOG', '��־����', null, '0', '0', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SYSLOG1', '������־', '../logMain.do', '0', 'SYSLOG', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SysChkD', 'ϵͳ�ռ�', null, '0', 'SysMonit', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('SysMonit', 'ϵͳ���', null, '0', '0', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('WOM', '��������', null, '0', '0', null, null, null, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('WOM001', '����ͳ�Ʋ�ѯ', '../womInquiryTotalMain.do', '0', 'WOM', null, null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('WOM002', '������ϸ��ѯ', '../womInquiryDetailMain.do', '0', 'WOM', null, null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('busi01', 'ҵ����ϸ��ѯ', '../businessDetailMain.do?dataFuncCode=SYS300&busiID=DETAIL', '0', 'SYS20', null, null, 3, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('busirpt', 'ҵ���ر���', null, '0', '0', null, null, 7, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('busisend', '����ҵ�����ʵʱ���', '../businessTotalMain.do?dataFuncCode=SYS300&busiID=SUM_SEND', '0', 'SYS20', null, null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('flow', '���̽ڵ�', '../flowMain.do', '0', 'NODEMNG', null, null, 3, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('ftp02', 'FTPվ������', '../ftpsitesMain.do', '0', 'SYS016', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('ftp03', 'FTP�ű�����', '../ftpScriptMain.do', '1', 'SYS016', '1;2;3;', null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('hostchk', '����Ѳ��', null, '0', '0', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('hostchk1', '����Ѳ������', '../hostCheckMain.do', '0', 'hostchk', '1;2;3;5;', null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('hostchk2', '�ռ�������', '../hostCheckItemMain.do', '0', 'SysChkD', '1;2;3;', null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('hostchk3', '����Ѳ��', '../hostCheckDataMain.do?dataFuncCode=hostchk1', '0', 'hostchk', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('hostchk4', '�ռ���չʾ', '../hostCheckResultMain.do', '0', 'SysChkD', null, null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('progMng', '���̹���', null, '0', '0', null, null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('rpt01', 'ҵ���ر���', '../businessReportMain.do', '0', 'busirpt', null, null, 1, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('sys100', '������Ϣ����', '../progInfoMain.do', '0', 'progMng', '1;2;3;4;5;6;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('sys101', '���̽ű�����', '../progMain.do?dataFuncCode=sys100', '0', 'progMng', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('sys102', '������ͣ', '../progRunMain.do?dataFuncCode=sys100', '0', 'progMng', '5;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('sys110', '�������������', '../workOrderMain.do', '0', 'SYS15', '1;2;3;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('sys111', '������ؽű�����', '../workOrderScriptMain.do?dataFuncCode=sys110', '0', 'SYS15', '1;2;3;5;', null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('sys112', '������ؽ����ѯ', '../cronTaskDataMain.do?dataFuncCode=sys110', '0', 'SYS15', null, null, 0, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('trans', '���׽ڵ�����', '../transactionMain.do?dataFuncCode=SYS300', '0', 'SYS017', '1;2;3;', null, 2, 1);

insert into ROM_SYS_FUNCTION (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ,OPEN_TYPE)
values ('transGp', '�������', '../transGroupMain.do?dataFuncCode=SYS300', '0', 'SYS017', '1;2;3;', null, 3, 1);

Insert into ROM_SYS_FUNCTION(FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ, OPEN_TYPE)
Values ('kqjf', '�����ɷ�', NULL, '0', '0', NULL, NULL, NULL, '1');

Insert into ROM_SYS_FUNCTION(FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ, OPEN_TYPE)
Values ('clpz', '��������', '../clpzMain.do', '0', 'kqjf', '1;2;3;', NULL, 1, '1');

Insert into ROM_SYS_FUNCTION(FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, REMARKS, NOTE_SEQ, OPEN_TYPE)
Values ('ycjk', '�쳣���', '../ycjkMain.do', '0', 'kqjf', NULL, NULL, 2, '1');

Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, NODE_TYPE, PARENT_CODE, OPEN_TYPE)
 Values
   ('COPYTAB', 'ͬ������', '0', '0', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPEN_TYPE)
 Values
   ('COPYTAB1', '����ͬ����ѯ', '../gotoAddCopyTable.do', '0', 'COPYTAB6', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPEN_TYPE)
 Values
   ('COPYTAB2', 'ȫ��ͬ����ѯ', '../gotoAllCopyTable.do', '0', 'COPYTAB6', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, NODE_TYPE, PARENT_CODE, OPEN_TYPE)
 Values
   ('COPYTAB3', 'ͬ������', '0', 'COPYTAB', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, OPEN_TYPE)
 Values
   ('COPYTAB4', '����ͬ����ѯ����', '../gotoAddCopyTableCfg.do', '0', 'COPYTAB3', '1;2;3;', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, OPEN_TYPE)
 Values
   ('COPYTAB5', 'ȫ��ͬ����������', '../gotoAllCopyTableHostCfg.do', '0', 'COPYTAB3', '1;2;3;', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, NODE_TYPE, PARENT_CODE, OPEN_TYPE)
 Values
   ('COPYTAB6', 'ͬ����ѯ', '0', 'COPYTAB', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, OPEN_TYPE)
 Values
   ('COPYTAB7', 'ȫ��ͬ�����ϵ����', '../gotoAllCopyTableTabCfg.do', '0', 'COPYTAB3', '1;2;3;', '1');

commit;

/*==============================================================*/
/* Table: ROM_SYS_LOGIN    ϵͳ���ű�      111111                     */
/*==============================================================*/
insert into ROM_SYS_LOGIN (LOGIN_NO, LOGIN_NAME, LOGIN_PWD, USE_FLG, EXPIRE_TIME, LOGIN_FLG, PHONE_NO, LOGIN_IP, REMARK, PROVINCE_CODE)
values ('admin', '��������Ա', '79fe00adb01e2791420db84c678197fa', '0', null, null, null, null, null, '00');

commit;

/*==============================================================*/
/* Table: ROM_SYS_POPEDOM     Ȩ��ע���                        */
/*==============================================================*/
insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'busConfigMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'gotoAddBusConfig.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'addBusConfig.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'gotoGetLoginTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'gotoUpdateBusConfig.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'updateBusConfig.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCFG', 'delBusConfig.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'busScriptMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'gotoAddBusScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'updateBusScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'gotoUpdateBusScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'addBusScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'getItemInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSCRIPT', 'delBusScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSMAIN', 'busMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSRUN', 'qryBusScriptsInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSRUN', 'busRun.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('BUSRUN', 'busRunMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('CMDCFG1', 'gotoInstructionConfig_browser.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('CMDCFG1', 'gotoInstructionConfig.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('IFM001', 'portcheckCmdDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('IFM001', 'portcheckMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('IFM001', 'portcheckShowLog.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'gotoNc001Update.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'nc001Update.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'nc001AddPort.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'gotoNc001AddPort.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'nc001ScriptConf.do', '7');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'nc001Delete.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'gotoNc001ScriptConf.do', '7');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'nc001Add.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'gotoNc001Add.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC001', 'nc001Main.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC002', 'nc002Main.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC002', 'gotoNc002Update.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NC002', 'nc002Update.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('NE001', 'netElementMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'gotoQryBusiInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'gotoGetLoginTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'pm001Add.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'pm001Delete.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'gotoPm001ScriptConfig.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'pm001ScriptConfig.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'pm001Update.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'gotoPm001Update.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM001', 'pm001Main.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM002', 'pm002Main.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PM002', 'pm002ExeCmd.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PROCCFG1', 'gotoProcessManagement.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('PROCCFG1', 'gotoProcessManagement_browser.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SCGDLOG1', 'gotoInquireSyslog_browser.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SCGDLOG1', 'gotoInquireSyslog.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'businessScriptMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'gotoAddBusinessScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'exceBusinessScriptByAuto.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'gotoUpdateBusinessScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'updateBusinessScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'delBusinessScript.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'exceBusinessScriptByManual.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'stopBusinessScriptByAuto.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'getItemInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS018', 'addBusinessScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'businessDataMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'businessDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'businessFailDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'businessTime.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'businessQuantity.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS019', 'businessDataChart.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'delRole.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'gotoSetPopedom.do', '4');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'gotoAddRole.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'addRole.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'gotoUpdateRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'updateRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'setPopedom.do', '4');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS02', 'role.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'businessDataChart.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'businessDataMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'businessDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'businessFailDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'businessTime.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS020', 'businessQuantity.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'loginMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'gotoAddLogin.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'setLoginRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'gotoSetLoginRole.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'addLogin.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'gotoUpdateLogin.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'delLogin.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS03', 'updateLogin.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS04', 'resetPassword.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS04', 'passMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'gotoAddHost.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'addHost.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'host.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'updateHost.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'delHost.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'gotoUpdateHost.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'doRelateHost.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS06', 'gotoQryRelateHost.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'hostuser.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'gotoAddHostUser.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'addHostUser.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'gotoUpdateHostUser.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'updateHostUser.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS07', 'delHostUser.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS10', 'cmdMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS10', 'cmdExec.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS10', 'getCmdExecRemoteDir.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS10', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'setProductFunction.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'gotoUpdateProduct.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'updateProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'gotoUpdateProductFunc.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'delProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'addProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'gotoAddProduct.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS12', 'product.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'function.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'functionUpdate.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'gotoFuncUpdate.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'getFuncTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'functionAdd.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'gotoFuncAdd.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'getFuncDetail.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS13', 'functionDelete.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'gotoUpdatePopereg.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'updatePopereg.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'delPopereg.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'addPopereg.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'popereg.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'gotoAddPopereg.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS14', 'getFuncOpers.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'busiTotalQuantity.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'businessTotalAmount.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'getBusiTrans.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'getGroupList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'businessTotalMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'businessTotalTime.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS19', 'getDefaultHostGroup.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS200', 'gotoQryFtpInfo.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS200', 'remoteFileMng.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS200', 'remoteFileUpload.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS201', 'remoteFileUpload.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS201', 'gotoQryFtpInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS201', 'gotoRemoteFileUpload.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS201', 'gotoQryFtpScriptInfo.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS201', 'getRemoteDir.do', '6');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'gotoGetLoginTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'delBusiness.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'updateBusiness.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'gotoUpdateBusiness.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'businessMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'addBusiness.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYS300', 'gotoAddBusiness.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYSLOG1', 'logReportExport.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYSLOG1', 'logMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYSLOG1', 'getFunctionByProCode.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('SYSLOG2', 'gotoInquireSyslog.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM001', 'checkTableName.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM001', 'womInquiryTotalMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM001', 'womInquiryTotalExport.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM001', 'getTableName.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM002', 'getTableName.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM002', 'womInquiryDetailExport.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM002', 'womInquiryDetailMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('WOM002', 'checkTableName.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busi01', 'businessDetailMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busi01', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busi01', 'businessDetailList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'busiTotalQuantity.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'businessTotalMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'getDefaultHostGroup.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'getBusiTrans.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'getGroupList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'businessTotalAmount.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('busisend', 'businessTotalTime.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('flow', 'flowMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'ftpsitesMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'gotoGetLoginTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'gotoAddFtpsite.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'gotoUpdateFtpsite.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'updateFtpsite.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'delFtpsite.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'addFtpsite.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp02', 'getFtpsiteInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'ftpScriptMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'getFtpsiteInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'gotoAddFtpScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'addFtpScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'updateFtpScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'delFtpScript.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('ftp03', 'gotoUpdateFtpScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk', 'gotoChkHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'addHostCheckScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'gotoUpdateHostCheckScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'exceHostCheckScriptByAuto.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'exceHostCheckScriptByManual.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'stopHostCheckScriptByAuto.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'hostCheckMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'hostCheckScriptMain.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'updateHostCheckScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk1', 'gotoAddHostCheckScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'delHostChekcItem.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'gotoUpdateHostCheckItem.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'updateHostCheckItem.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'gotoAddHostCheckItem.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'addHostCheckItem.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'hostCheckItemMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'addMessageNotification.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk2', 'gotoAddMessageNotification.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk3', 'gotoChkHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk3', 'hostCheckDataMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk4', 'hostCheckResultMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('hostchk4', 'hostCheckResultExport.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('rpt01', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('rpt01', 'businessReportMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('rpt01', 'businessReportChart.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('rpt01', 'businessReportExport.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'gotoUpdateProgInfoConf.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'addProgInfoConf.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'setProcItemScript.do', '4');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'gotoAddProgInfoConf.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'delProgInfoConf.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'updateProgInfoConf.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'progInfoMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'gotoSetProcItemScript.do', '4');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys100', 'gotoGetLoginTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'progMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'delAppProgConf.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'processStartOrStop.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'updateAppProgConf.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'gotoAddAppProgConf.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'addAppProgConf.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'gotoUpdateAppProgConf.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys101', 'getItemInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys102', 'processRun.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys102', 'progRunMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys102', 'qryItemActionScriptsInfo.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'gotoGetLoginTree.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'updateWorkOrder.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'workOrderMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'delWorkOrder.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'gotoAddWorkOrder.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'gotoUpdateWorkOrder.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys110', 'addWorkOrder.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'getItemInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'exceWorkOrderScriptByAuto.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'workOrderScriptMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'gotoAddWorkOrderScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'delWorkOrderScript.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'updateWorkOrderScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'gotoUpdateWorkOrderScript.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'stopWorkOrderScriptByAuto.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'exceWorkOrderScriptByManual.do', '5');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys111', 'addWorkOrderScript.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys112', 'cronTaskDataMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys112', 'gotoItemSet.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('sys112', 'cronTaskDataChart.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'addTransaction.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'transactionMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'getItemInfoList.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'gotoUpdateTransaction.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'updateTransaction.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'delTransaction.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('trans', 'gotoAddTransaction.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'addTransGroup.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'transGroupMain.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'gotoAddTransGroup.do', '1');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'gotoQryHostInfo.do', null);

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'setTransRelate.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'updateTransGroup.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'delTransGroup.do', '3');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'gotoSetTransRelate.do', '2');

insert into ROM_SYS_POPEDOM (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
values ('transGp', 'gotoUpdateTransGroup.do', '2');

Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'getClpzNameList.do', NULL);
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'gotoClpzUpdate.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'clpzDelete.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'clpzAdd.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'clpzUpdate.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'clpzMain.do', NULL);
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('clpz', 'gotoClpzAdd.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('ycjk', 'ycjkMain.do', NULL);
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB1', 'gotoAddCopyTable.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB1', 'selectAddCopyTable.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB1', 'exportAddCopyTable.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB2', 'exportAllCopyTable.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB2', 'gotoAllCopyTable.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB2', 'selectAllCopyTable.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB4', 'addCopyTableCfgDel.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB4', 'addCopyTableCfgUpdate.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB4', 'addCopyTableCfgAdd.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB4', 'gotoAddCopyTableCfgUpdate.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB4', 'gotoAddCopyTableCfgAdd.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB4', 'gotoAddCopyTableCfg.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB5', 'gotoAllCopyTableHostCfgAdd.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB5', 'gotoAllCopyTableHostCfg.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB5', 'allCopyTableHostCfgDel.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB5', 'allCopyTableHostCfgAdd.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB5', 'gotoAllCopyTableHostCfgUpdate.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB5', 'allCopyTableHostCfgUpdate.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB7', 'gotoAllCopyTableTabCfgAdd.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB7', 'allCopyTableTabCfgDel.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB7', 'allCopyTableTabCfgUpdate.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB7', 'gotoAllCopyTableTabCfgUpdate.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('COPYTAB7', 'gotoAllCopyTableTabCfg.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('COPYTAB7', 'allCopyTableTabCfgAdd.do', '1');
COMMIT;

/*==============================================================*/
/* Table: ROM_SYS_PRO_FUNCTION    ��Ʒ���ܹ�ϵ��                */
/*==============================================================*/
insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS01', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS02', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS03', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS04', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS12', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS13', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYS14', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYSLOG', '���ò�Ʒ����');

insert into rom_sys_pro_function (PRO_CODE, FUNCTION_CODE, REMARKS)
values ('SYSTEM', 'SYSLOG1', '���ò�Ʒ����');

commit;

/*==============================================================*/
/* Table: ROM_SYS_ROLE_FUNCTION       ��ɫ���ܹ�ϵ��            */
/*==============================================================*/
insert into ROM_SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_TYPE, ROLE_STATE, PRO_CODE, PROVINCE_CODE, TELL_TYPE, REMARKS)
values ('1', '��������Ա,��ɾ', '0', '0', 'SYSTEM', null, null, '��������Ա');

commit;

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

commit;

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

commit;


/*==============================================================*/
/* Table: ROM_EXPAND_CODE  ��չ���Դ����                       */
/*==============================================================*/
SET DEFINE OFF;
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('CMD_FILE_NAME', 'ָ�������ļ�������', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('CMD_FILE_PATH', 'ָ�������ļ���·��', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('IP_ADDR', 'IP��ַ', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('LOG_FILE_PATH', '��־�ļ���·��', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('PORT', '�˿�', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('PROGRESS_FILE_NAME', '���������ļ�������', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
Insert into ROM_EXPAND_CODE
   (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
 Values
   ('PROGRESS_FILE_PATH', '���������ļ���·��', 'ROM_NETCELL_INFO', '��Ԫ��Ϣ��');
COMMIT;





/*==============================================================*/
/* Table: ROM_SYS_FUNCTION    ϵͳ���ܱ�                        */
/*==============================================================*/
 
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, NODE_TYPE, PARENT_CODE, OPEN_TYPE)
 Values
   ('1005', '���˽��滯', '0', '0', '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, NOTE_SEQ, OPEN_TYPE)
 Values
   ('1006', '�������', '../gotoF1006Main.do', '0', '1005', '1;2;3;4;5;', 1, '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, NOTE_SEQ, OPEN_TYPE)
 Values
   ('1007', '���̹���', '../gotoF1007Main.do', '0', '1005', '1;2;3;4;5;6;', 2, '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, NOTE_SEQ, OPEN_TYPE)
 Values
   ('1008', 'ģ�����', '../gotoF1008Main.do', '0', '1005', '1;2;3;4;5;', 3, '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, NOTE_SEQ, OPEN_TYPE)
 Values
   ('1009', 'ʵ������', '../gotoF1009Main.do', '0', '1005', '1;2;3;4;5;6;', 4, '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, NOTE_SEQ, OPEN_TYPE)
 Values
   ('1010', 'ʵ��ִ��', '../gotoF1010Main.do', '0', '1005', '1;2;3;4;5;', 5, '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, NOTE_SEQ, OPEN_TYPE)
 Values
   ('1011', '���б���', '../gotoF1011Main.do', '0', '1005', '1;2;3;4;5;', 6, '1');
Insert into ROM_SYS_FUNCTION
   (FUNCTION_CODE, FUNCTION_NAME, ACTION_NAME, NODE_TYPE, PARENT_CODE, OPERATION_CODE, OPEN_TYPE)
 Values
   ('1012', '��Ʒ����', '../gotoF1012Main.do', '0', '1005', '1;2;3;', '1');
COMMIT;


/*==============================================================*/
/* Table: ROM_SYS_POPEDOM     Ȩ��ע���         ���˽��滯�������� begin               */
/*==============================================================*/
 SET DEFINE OFF;
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1012', 'f1012Delete.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'f1010EditFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'f1010OpCodeTask.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1006', 'f1006Update.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1006', 'f1006Delete.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'f1006TestScript.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoF1008EditScript.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010Flow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1012', 'gotoF1012Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1012', 'f1012Add.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1012', 'gotoF1012Add.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'gotoF1006Add.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1006', 'f1006Add.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1006', 'f1006Verify.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'gotoF1006Copy.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1006', 'f1006Copy.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoF1008Update.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1008', 'f1008Update.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1008', 'f1008Delete.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1008', 'f1008Verify.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoF1008Copy.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1008', 'f1008Copy.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010AddFlowList.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1010', 'f1010DelFlowList.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'f1010ViewLog.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1011', 'gotoF1011Export.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010Task.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'gotoF1006Update.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoF1008Add.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1008', 'f1008Add.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010HostInfo.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'gotoF1006Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1012', 'gotoF1012Update.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1012', 'f1012Update.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoShowTemplate.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'gotoF1006EditScript.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1006', 'f1006EditScript.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1006', 'gotoF1006TestScript.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoF1008Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010View.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1011', 'gotoF1011Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1011', 'gotoF1011RunReport.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoDrawTemplate.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1008', 'addDrawTemplate.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoF1009AddFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009AddFlow.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009DelFlow.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'gotoF1010EditFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009Add.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009Edit.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009DelDetail.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009Del.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009Ver.do', '4');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoF1009Edit.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoF1009Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1007', 'f1007Add.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1007', 'f1007Edit.do', '2');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1007', 'f1007Del.do', '3');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1007', 'f1007Ver.do', '4');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1007', 'f1007Copy.do', '5');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoF1007Edit.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoF1007Add.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoF1007Main.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoF1007Copy.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoF1007DrawTask.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoDrawFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1007', 'addDrawFlow.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1007', 'gotoShowFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1008', 'gotoF1008DrawFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoF1009Add.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoDrawIns.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoShowIns.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'addDrawIns.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoF1009DrawFlow.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1009', 'gotoF1009Ins.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME, OPERATION_CODE)
 Values
   ('1009', 'f1009Ins.do', '1');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'getF1010Task.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'f1010TaskExe.do');
Insert into ROM_SYS_POPEDOM
   (FUNCTION_CODE, ACTION_NAME)
 Values
   ('1010', 'getNewf1010ViewLog.do');
COMMIT;

/*==============================================================*/
/* Table: ROM_SYS_POPEDOM     Ȩ��ע���         ���˽��滯�������� end               */
/*==============================================================*/
