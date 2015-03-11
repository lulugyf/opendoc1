/*======================================================================================*/
/* ά������ƽ̨oracle���ݿ⽨����䣬Ĭ�ϱ�ռ�(OBOSS_DATA)��������ռ�(OBOSS_IDX)�����*/
/*ʵ������޸ı��ű�.�ڽ������ݿ����֮ǰ����ɾ���ö��󣬽����ڳ�ʼ�����ݿ⣬һ����ʹ�� */
/*======================================================================================*/


/*==============================================================*/
/* SEQUENCE: SEQ_EXPAND             ��չ��Ϣ���õ�����                        */
/*==============================================================*/
DROP SEQUENCE SEQ_EXPAND;

CREATE SEQUENCE SEQ_EXPAND
  START WITH 1
  MAXVALUE 1000000
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;

/*==============================================================*/
/* SEQUENCE: SEQ_COMMON             ����                        */
/*==============================================================*/
/* drop SEQUENCE */
drop sequence SEQ_COMMON;
/* create SEQUENCE */
create sequence SEQ_COMMON
minvalue 0
maxvalue 999999999999999
start with 2
increment by 1
nocache;

/*==============================================================*/
/* SEQUENCE: SEQ_HOSTCHECK          ���������ռ���Ŀ����        */
/*==============================================================*/
/* drop SEQUENCE */
drop sequence SEQ_HOSTCHECK;
-- Create sequence 
create sequence SEQ_HOSTCHECK
minvalue 1
maxvalue 99999
start with 1
increment by 1
nocache;

/*==============================================================*/
/* Table: ONEBOSS_BUSIGRO_RELATION    һ��BOSSҵ��������ϵ��  */
/*==============================================================*/
--drop table 
drop table ONEBOSS_BUSIGRO_RELATION;
-- Create table
create table ONEBOSS_BUSIGRO_RELATION
(
  group_id INTEGER not null,
  trans_id INTEGER not null,
  reserve1 VARCHAR2(256),
  reserve2 VARCHAR2(256),
  reserve3 VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ONEBOSS_BUSIGRO_RELATION
  add constraint PK_ONEBOSS_BUSIGRO_RELATION primary key (GROUP_ID, TRANS_ID)
  using index ;
-- Add comments to the table 
comment on table ONEBOSS_BUSIGRO_RELATION
  is 'һ��BOSSҵ��������ϵ��';
-- Add comments to the columns 
comment on column ONEBOSS_BUSIGRO_RELATION.group_id
  is '����ID';
comment on column ONEBOSS_BUSIGRO_RELATION.trans_id
  is '����ID';
comment on column ONEBOSS_BUSIGRO_RELATION.reserve1
  is 'Ԥ���ֶ�1';
comment on column ONEBOSS_BUSIGRO_RELATION.reserve2
  is 'Ԥ���ֶ�2';
comment on column ONEBOSS_BUSIGRO_RELATION.reserve3
  is 'Ԥ���ֶ�3';
  
/*==============================================================*/
/* Table: ONEBOSS_BUSI_GROUPS               һ��BOSSҵ������  */
/*==============================================================*/
--drop table 
drop table ONEBOSS_BUSI_GROUPS;
-- Create table
create table ONEBOSS_BUSI_GROUPS
(
  group_id   INTEGER not null,
  pro_code   VARCHAR2(8),
  host_id    INTEGER,
  group_name VARCHAR2(64),
  isdefault  INTEGER,
  login_no   VARCHAR2(8),
  remarks    VARCHAR2(256),
  reserve1   VARCHAR2(256),
  reserve2   VARCHAR2(256),
  reserve3   VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ONEBOSS_BUSI_GROUPS
  add constraint PK_ONEBOSS_BUSI_GROUPS primary key (GROUP_ID)
  using index ;
-- Add comments to the table 
comment on table ONEBOSS_BUSI_GROUPS
  is 'һ��BOSSҵ������';
-- Add comments to the columns 
comment on column ONEBOSS_BUSI_GROUPS.group_id
  is '����ID';
comment on column ONEBOSS_BUSI_GROUPS.pro_code
  is '��Ʒ����';
comment on column ONEBOSS_BUSI_GROUPS.host_id
  is '��������';
comment on column ONEBOSS_BUSI_GROUPS.group_name
  is '��������';
comment on column ONEBOSS_BUSI_GROUPS.isdefault
  is '0������Ĭ�ϣ�1��Ĭ��';
comment on column ONEBOSS_BUSI_GROUPS.login_no
  is '��������';
comment on column ONEBOSS_BUSI_GROUPS.remarks
  is '��ע';
comment on column ONEBOSS_BUSI_GROUPS.reserve1
  is 'Ԥ���ֶ�1';
comment on column ONEBOSS_BUSI_GROUPS.reserve2
  is 'Ԥ���ֶ�2';
comment on column ONEBOSS_BUSI_GROUPS.reserve3
  is 'Ԥ���ֶ�3';
   
/*==============================================================*/
/* Table: ONEBOSS_BUSI_NOTES               һ��BOSS���׽ڵ��  */
/*==============================================================*/
--drop table 
drop table ONEBOSS_BUSI_NOTES;
-- Create table
create table ONEBOSS_BUSI_NOTES
(
  trans_id   INTEGER not null,
  trans_name VARCHAR2(64),
  item_id    INTEGER not null,
  trans_code VARCHAR2(10),
  reserve1   VARCHAR2(256),
  reserve2   VARCHAR2(256),
  reserve3   VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ONEBOSS_BUSI_NOTES
  add constraint PK_ONEBOSS_BUSI_NOTES primary key (TRANS_ID, ITEM_ID)
  using index ;
-- Add comments to the table 
comment on table ONEBOSS_BUSI_NOTES
  is 'һ��BOSS���׽ڵ��';
-- Add comments to the columns 
comment on column ONEBOSS_BUSI_NOTES.trans_id
  is '����ID,��������';
comment on column ONEBOSS_BUSI_NOTES.trans_name
  is '��������';
comment on column ONEBOSS_BUSI_NOTES.item_id
  is 'ҵ�����,����Ŀ������Ŀ����';
comment on column ONEBOSS_BUSI_NOTES.trans_code
  is '���״���';
comment on column ONEBOSS_BUSI_NOTES.reserve1
  is 'Ԥ���ֶ�1';
comment on column ONEBOSS_BUSI_NOTES.reserve2
  is 'Ԥ���ֶ�2';
comment on column ONEBOSS_BUSI_NOTES.reserve3
  is 'Ԥ���ֶ�3';
  
/*==============================================================*/
/* ROM_CRON_DATA_REPORT            �ص�ҵ���ر���             */
/*==============================================================*/
--drop table 
Drop table ROM_CRON_DATA_REPORT;
--create table 
create table ROM_CRON_DATA_REPORT
(
  task_id        INTEGER,
  create_date    DATE,
  bipcode        VARCHAR2(8),
  activitycode   VARCHAR2(8),
  tradetotal     VARCHAR2(8),
  tradesucc      VARCHAR2(8),
  failforuser    VARCHAR2(8),
  failnotforuser VARCHAR2(8),
  failtimeout    VARCHAR2(8),
  faildelay      VARCHAR2(8),
  opttime        DATE
) ;
-- Add comments to the table 
comment on table ROM_CRON_DATA_REPORT
  is '�ص�ҵ���ر���';
-- Add comments to the columns 
comment on column ROM_CRON_DATA_REPORT.bipcode
  is 'ҵ���ܴ���';
comment on column ROM_CRON_DATA_REPORT.activitycode
  is '���״���';
comment on column ROM_CRON_DATA_REPORT.tradetotal
  is '��������';
comment on column ROM_CRON_DATA_REPORT.tradesucc
  is '�ɹ�������';
comment on column ROM_CRON_DATA_REPORT.failforuser
  is '�û���ԭ��ʧ����';
comment on column ROM_CRON_DATA_REPORT.failnotforuser
  is '���û���ԭ��ʧ����';
comment on column ROM_CRON_DATA_REPORT.failtimeout
  is '��ʱʧ�ܽ�����';
comment on column ROM_CRON_DATA_REPORT.faildelay
  is '��Ӧ����ʱ������';
comment on column ROM_CRON_DATA_REPORT.opttime
  is '�������ʱ��';  
  
/*==============================================================*/
/* Table: ROM_CRON_TASK_CONF      ��ʱ�������ñ�                */
/*==============================================================*/
-- drop table
drop table ROM_CRON_TASK_CONF;
-- Create table
create table ROM_CRON_TASK_CONF
(
  task_id       INTEGER,
  pro_code      VARCHAR2(8) not null,
  func_code     VARCHAR2(8) not null,
  scripts_id    INTEGER not null,
  begin_time    DATE,
  end_time      DATE,
  interval_time INTEGER,
  next_run_time DATE,
  task_state    CHAR(1),
  user_flag     CHAR(1),
  remark        VARCHAR2(2048)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_CRON_TASK_CONF
  add constraint PK_ROM_CRON_TASK_CONF primary key (PRO_CODE, FUNC_CODE, SCRIPTS_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_CRON_TASK_CONF
  is '��ʱ�������ñ�';
-- Add comments to the columns 
comment on column ROM_CRON_TASK_CONF.task_id
  is '��ʱ����ID';
comment on column ROM_CRON_TASK_CONF.pro_code
  is '��Ʒ����';
comment on column ROM_CRON_TASK_CONF.func_code
  is '���ܴ���';
comment on column ROM_CRON_TASK_CONF.scripts_id
  is '�ű�����';
comment on column ROM_CRON_TASK_CONF.begin_time
  is '����ʼʱ��';
comment on column ROM_CRON_TASK_CONF.end_time
  is '�������ʱ��';
comment on column ROM_CRON_TASK_CONF.interval_time
  is '����ִ�м��';
comment on column ROM_CRON_TASK_CONF.next_run_time
  is '�´�ִ��ʱ��';
comment on column ROM_CRON_TASK_CONF.task_state
  is '����ִ��״̬ 0��δִ�У�1������ִ�У�2��ִ�����';
comment on column ROM_CRON_TASK_CONF.user_flag
  is '��Ч��ʶ';
comment on column ROM_CRON_TASK_CONF.remark
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_CRON_TASK_DATA      ��ʱ����ִ�н����            */
/*==============================================================*/
-- drop table
drop table ROM_CRON_TASK_DATA;
-- Create table
create table ROM_CRON_TASK_DATA
(
  task_id        INTEGER,
  create_date    DATE,
  item_name      VARCHAR2(64),
  item_desc      VARCHAR2(64),
  item_data      VARCHAR2(8),
  item_dimension VARCHAR2(8),
  remark         VARCHAR2(2048)
) ;
-- Add comments to the table 
comment on table ROM_CRON_TASK_DATA
  is '��ʱ����ִ�н����';
-- Add comments to the columns 
comment on column ROM_CRON_TASK_DATA.task_id
  is '��ʱ����ID';
comment on column ROM_CRON_TASK_DATA.create_date
  is '��������ʱ��';
comment on column ROM_CRON_TASK_DATA.item_name
  is '���������';
comment on column ROM_CRON_TASK_DATA.item_desc
  is '���������';
comment on column ROM_CRON_TASK_DATA.item_data
  is '���������';
comment on column ROM_CRON_TASK_DATA.item_dimension
  is '����λ';  
comment on column ROM_CRON_TASK_DATA.remark
  is '��ע'; 

/*==============================================================*/
/* Table: ROM_FTPSITES_INFO      FTPվ���                      */
/*==============================================================*/ 
--drop table
drop table ROM_FTPSITES_INFO;
-- Create table
create table ROM_FTPSITES_INFO
(
  site_id     INTEGER not null,
  site_name   VARCHAR2(64),
  host_id     INTEGER,
  ftp_port    INTEGER default 21,
  ftp_user    VARCHAR2(32),
  ftp_passwd  VARCHAR2(32),
  local_path  VARCHAR2(128),
  remote_path VARCHAR2(128),
  agent_addr  VARCHAR2(32),
  ssl_flag    INTEGER default 0,
  login_no     VARCHAR2(8),
  grant_logins VARCHAR2(1024),
  isgrant      INTEGER default 0,
  remarks     VARCHAR2(256)
) ;
-- Create/Recreate indexes 
create index IDX_SITE_NAME on ROM_FTPSITES_INFO (SITE_NAME)
  ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_FTPSITES_INFO
  add constraint PK_ROM_FTPSITES_INFO primary key (SITE_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_FTPSITES_INFO
  is 'FTPվ���';
-- Add comments to the columns 
comment on column ROM_FTPSITES_INFO.site_id
  is 'վ�����';
comment on column ROM_FTPSITES_INFO.site_name
  is 'վ������';
comment on column ROM_FTPSITES_INFO.host_id
  is '��������';
comment on column ROM_FTPSITES_INFO.ftp_port
  is 'FTP�˿�,Ĭ��ֵ21';
comment on column ROM_FTPSITES_INFO.ftp_user
  is 'FTP�û�';
comment on column ROM_FTPSITES_INFO.ftp_passwd
  is 'FTP����';
comment on column ROM_FTPSITES_INFO.local_path
  is '����·��';
comment on column ROM_FTPSITES_INFO.remote_path
  is 'Զ��·��';
comment on column ROM_FTPSITES_INFO.agent_addr
  is '�����ַ';
comment on column ROM_FTPSITES_INFO.ssl_flag
  is '0����SSL��֤;1����SSL��֤;Ĭ��Ϊ0';
comment on column ROM_FTPSITES_INFO.login_no
  is '��������';
comment on column ROM_FTPSITES_INFO.grant_logins
  is '��Ȩ����';
comment on column ROM_FTPSITES_INFO.isgrant
  is '�Ƿ���Ȩ';
comment on column ROM_FTPSITES_INFO.remarks
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_FTP_SCRIPT_RELATION      FTPԶ�̽ű���ϵ��        */
/*==============================================================*/
drop table ROM_FTP_SCRIPT_RELATION;
-- Create table
create table ROM_FTP_SCRIPT_RELATION
(
  site_id   INTEGER not null,
  script_id INTEGER not null,
  action_id INTEGER not null
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_FTP_SCRIPT_RELATION
  add constraint PK_ROM_FTP_SCRIPT_RELATION primary key (SITE_ID, SCRIPT_ID, ACTION_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_FTP_SCRIPT_RELATION
  is 'FTPԶ�̽ű���ϵ��';
-- Add comments to the columns 
comment on column ROM_FTP_SCRIPT_RELATION.action_id
  is 'վ�����';
comment on column ROM_FTP_SCRIPT_RELATION.action_id
  is '�ű�����';
comment on column ROM_FTP_SCRIPT_RELATION.action_id
  is '��Ŀ����.��������Ŀ������';
  
/*==============================================================*/
/* Table: ROM_HOST_INFO      Զ�����������                     */
/*==============================================================*/
--drop table
drop table ROM_HOST_INFO;
-- Create table
create table ROM_HOST_INFO
(
  host_id       INTEGER not null,
  province_code VARCHAR2(8),
  tell_type     CHAR(1),
  host_env      CHAR(1),
  host_ip       VARCHAR2(32),
  host_name     VARCHAR2(32),
  host_os       CHAR(1),
  update_time   DATE,
  remark        VARCHAR2(128)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_HOST_INFO
  add constraint PK_ROM_HOST_INFO primary key (HOST_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_HOST_INFO
  is 'Զ�����������';
-- Add comments to the columns 
comment on column ROM_HOST_INFO.host_id
  is '��������';
comment on column ROM_HOST_INFO.province_code
  is 'ʡ�ݱ���';
comment on column ROM_HOST_INFO.tell_type
  is '0���ƶ�
1������
2����ͨ
3�����
4��ȫ��ҵ';
comment on column ROM_HOST_INFO.host_env
  is '0�����Ի���
1����������
2����������
';
comment on column ROM_HOST_INFO.host_ip
  is '����IP';
comment on column ROM_HOST_INFO.host_name
  is '��������';
comment on column ROM_HOST_INFO.host_os
  is '��������ϵͳ,0��aix
1��hp
2��sun
3��linux
4������
';
comment on column ROM_HOST_INFO.UPDATE_TIME
  is '���һ�θ���ʱ��';
comment on column ROM_HOST_INFO.REMARK
  is '��ע';

 /*==============================================================*/
/* Table: ROM_ITEM_ACTION      ������Ŀ������                   */
/*==============================================================*/
--drop table
drop table ROM_ITEM_ACTION;
-- Create table
create table ROM_ITEM_ACTION
(
  action_id   INTEGER not null,
  action_name VARCHAR2(64) not null,
  remarks     VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_ITEM_ACTION
  add constraint PK_ROM_ITEM_ACTION primary key (ACTION_ID, ACTION_NAME)
  using index ;
-- Add comments to the table 
comment on table ROM_ITEM_ACTION
  is '������Ŀ������';
-- Add comments to the columns 
comment on column ROM_ITEM_ACTION.action_id
  is '��������,0����������
1������ֹͣ
2������״̬���
3���������
4���ļ��ϴ�
5���ļ�����
6��һ��BOSS������ͳ��
7��һ��BOSS����ʱ��ͳ��
8��һ��bossҵ����ܽ�������ѯ
9��һ��bossҵ����ܽ���ʱ����ѯ
10��������ʱѲ��';
comment on column ROM_ITEM_ACTION.action_name
  is '��������';
comment on column ROM_ITEM_ACTION.remarks
  is '��ע';


/*==============================================================*/
/* Table: ROM_ITEM_SCRIPT_RELATION    ������Ŀ��ű���ϵ��      */
/*==============================================================*/
drop table ROM_ITEM_SCRIPT_RELATION;
-- Create table
create table ROM_ITEM_SCRIPT_RELATION
(
  item_id   INTEGER not null,
  script_id INTEGER not null,
  action_id INTEGER not null
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_ITEM_SCRIPT_RELATION
  add constraint PK_ROM_ITEM_SCRIPT_RELATION primary key (ITEM_ID, SCRIPT_ID, ACTION_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_ITEM_SCRIPT_RELATION
  is '������Ŀ��ű���ϵ��';
-- Add comments to the columns 
comment on column ROM_ITEM_SCRIPT_RELATION.item_id
  is '������Ŀ����';
comment on column ROM_ITEM_SCRIPT_RELATION.script_id
  is '�ű�����';
comment on column ROM_ITEM_SCRIPT_RELATION.action_id
  is '��Ŀ����';

/*==============================================================*/
/* Table: ROM_LOGIN_ROLE_RELATION     ���Ž�ɫ��ϵ��            */
/*==============================================================*/
--drop table
drop table ROM_LOGIN_ROLE_RELATION;
-- Create table
create table ROM_LOGIN_ROLE_RELATION
(
  login_no VARCHAR2(8) not null,
  role_id  INTEGER not null,
  remarks  VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_LOGIN_ROLE_RELATION
  add constraint PK_ROM_LOGIN_ROLE_RELATION primary key (LOGIN_NO, ROLE_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_LOGIN_ROLE_RELATION
  is '���Ž�ɫ��ϵ��';
-- Add comments to the columns 
comment on column ROM_LOGIN_ROLE_RELATION.login_no
  is '��¼����';
-- Add comments to the columns 
comment on column ROM_LOGIN_ROLE_RELATION.role_id
  is '��ɫID';
-- Add comments to the columns 
comment on column ROM_LOGIN_ROLE_RELATION.remarks
  is '��ע';  
  
/*==============================================================*/
/* Table: ROM_MAINTAIN_ITEMS  Զ��ά��������Ŀ��                */
/*==============================================================*/
--drop table 
drop table ROM_MAINTAIN_ITEMS;
-- Create table
create table ROM_MAINTAIN_ITEMS
(
  pro_code  VARCHAR2(8),
  func_code VARCHAR2(8),
  host_id   INTEGER,
  item_id   INTEGER not null,
  item_name VARCHAR2(128),
  item_desc VARCHAR2(1024),
  login_no     VARCHAR2(8),
  grant_logins VARCHAR2(1024),
  isgrant      INTEGER default 0,
  remark    VARCHAR2(2048)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_MAINTAIN_ITEMS
  add constraint PK_ROM_MAINTAIN_ITEMS primary key (ITEM_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_MAINTAIN_ITEMS
  is 'Զ��ά��������Ŀ��';
-- Add comments to the columns 
comment on column ROM_MAINTAIN_ITEMS.pro_code
  is '��Ʒ����:ʡ�ݱ���+��������+3λ����';
comment on column ROM_MAINTAIN_ITEMS.func_code
  is '���ܴ���';
comment on column ROM_MAINTAIN_ITEMS.host_id
  is 'Զ����������';
comment on column ROM_MAINTAIN_ITEMS.item_id
  is '������Ŀ����';
comment on column ROM_MAINTAIN_ITEMS.item_name
  is '������Ŀ����';
comment on column ROM_MAINTAIN_ITEMS.item_desc
  is '������Ŀ����';
comment on column ROM_MAINTAIN_ITEMS.login_no
  is '��������';
comment on column ROM_MAINTAIN_ITEMS.grant_logins
  is '��Ȩ����';
comment on column ROM_MAINTAIN_ITEMS.isgrant
  is '�Ƿ���Ȩ';  
comment on column ROM_MAINTAIN_ITEMS.remark
  is '��ע';   

/*==============================================================*/
/* Table: ROM_OPERA_CODE     ���������                         */
/*==============================================================*/
--drop table
drop table ROM_OPERA_CODE;
-- Create table
create table ROM_OPERA_CODE
(
  opera_code VARCHAR2(2) not null,
  opera_name VARCHAR2(64),
  remarks    VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_OPERA_CODE
  add constraint PK_ROM_OPERA_CODE primary key (OPERA_CODE)
  using index ;
-- Add comments to the table 
comment on table ROM_OPERA_CODE
  is '���������';
-- Add comments to the columns 
comment on column ROM_OPERA_CODE.opera_code
  is '��������,1������
2��ɾ��
3���޸�
4����Ȩ
5��������ֹͣ
6���ļ��ϴ�����';
comment on column ROM_OPERA_CODE.opera_name
  is '��������';
comment on column ROM_OPERA_CODE.remarks
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_PROVINCE_CODE      ʡ�ݴ����                     */
/*==============================================================*/
--drop table
drop table ROM_PROVINCE_CODE;
-- Create table
create table ROM_PROVINCE_CODE
(
  province_code VARCHAR2(3),
  province_name VARCHAR2(64),
  remarks       VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_PROVINCE_CODE
  add constraint PK_ROM_PROVINCE_CODE primary key (province_code)
  using index ;
-- Add comments to the table 
comment on table ROM_PROVINCE_CODE
  is 'ʡ�ݴ����';
-- Add comments to the columns 
comment on column ROM_PROVINCE_CODE.province_code
  is 'ʡ�ݴ���';
comment on column ROM_PROVINCE_CODE.province_name
  is 'ʡ������';
comment on column ROM_PROVINCE_CODE.remarks
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_PRO_CODE   ��Ʒ�����                             */
/*==============================================================*/
--drop table
drop table ROM_PRO_CODE;
-- Create table
create table ROM_PRO_CODE
(
  pro_code    VARCHAR2(8) not null,
  pro_name    VARCHAR2(64),
  pro_version VARCHAR2(10),
  remarks     VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_PRO_CODE
  add constraint PK_ROM_PRO_CODE primary key (PRO_CODE)
  using index ;
-- Add comments to the table 
comment on table ROM_PRO_CODE
  is '��Ʒ�����';
-- Add comments to the columns 
comment on column ROM_PRO_CODE.pro_code
  is '��Ʒ����';
comment on column ROM_PRO_CODE.pro_name
  is '��Ʒ����';
comment on column ROM_PRO_CODE.pro_version
  is '��Ʒ�汾';
comment on column ROM_PRO_CODE.remarks
  is '��ע';

/*==============================================================*/
/* Table: ROM_PRO_FTPSITE_RELATION      ��ƷFTPվ���ϵ��       */
/*==============================================================*/
--drop table 
drop table ROM_PRO_FTPSITE_RELATION;
-- Create table
create table ROM_PRO_FTPSITE_RELATION
(
  pro_code VARCHAR2(8) not null,
  site_id  INTEGER not null,
  remarks  VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_PRO_FTPSITE_RELATION
  add constraint PK_ROM_PRO_FTPSITE_RELATION primary key (PRO_CODE, SITE_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_PRO_FTPSITE_RELATION
  is '��ƷFTPվ���ϵ��';
-- Add comments to the columns 
comment on column ROM_PRO_FTPSITE_RELATION.pro_code
  is '��Ʒ����';
comment on column ROM_PRO_FTPSITE_RELATION.site_id
  is 'վ�����'; 
comment on column ROM_PRO_FTPSITE_RELATION.remarks
  is '��ע';  
    
/*==============================================================*/
/* Table: ROM_PRO_HOST_RELATION  ��ƷԶ��������ϵ��             */
/*==============================================================*/
--drop table
drop table ROM_PRO_HOST_RELATION;
-- Create table
create table ROM_PRO_HOST_RELATION
(
  pro_code VARCHAR2(8) not null,
  host_id  INTEGER not null,
  remarks  VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_PRO_HOST_RELATION
  add constraint PK_ROM_PRO_HOST_RELATION primary key (PRO_CODE, HOST_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_PRO_HOST_RELATION
  is '��ƷԶ��������ϵ��';
-- Add comments to the columns
comment on column ROM_PRO_HOST_RELATION.pro_code
  is '��Ʒ����';
comment on column ROM_PRO_HOST_RELATION.host_id
  is '��������';
comment on column ROM_PRO_HOST_RELATION.remarks
  is '��ע';

/*==============================================================*/
/* Table: ROM_SCRIPTS_CONFIG     Զ�̽ű����ñ�                 */
/*==============================================================*/
--drop table
drop table ROM_SCRIPTS_CONFIG;
-- Create table
create table ROM_SCRIPTS_CONFIG
(
  scripts_id   INTEGER not null,
  host_id      INTEGER,
  scripts_dir  VARCHAR2(256),
  scripts_name VARCHAR2(512),
  scripts_type CHAR(1),
  req_url      VARCHAR2(128),
  visit_user   VARCHAR2(8),
  visit_pswd   VARCHAR2(128),
  remarks      VARCHAR2(2048)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SCRIPTS_CONFIG
  add constraint PK_ROM_SCRIPTS_CONFIG primary key (SCRIPTS_ID)
  using index ;   
-- Add comments to the table 
comment on table ROM_SCRIPTS_CONFIG
  is 'Զ�̽ű����ñ�:���Զ���������ܿض��������Ľű�Ŀ¼�ͽű�����';
-- Add comments to the columns 
comment on column ROM_SCRIPTS_CONFIG.scripts_id
  is '�ű�����';
comment on column ROM_SCRIPTS_CONFIG.host_id
  is 'ʡ�ݱ���+��������+3λ����';
comment on column ROM_SCRIPTS_CONFIG.scripts_dir
  is '�ű�Ŀ¼';
comment on column ROM_SCRIPTS_CONFIG.scripts_name
  is '�ű�����';
comment on column ROM_SCRIPTS_CONFIG.scripts_type
  is '0����ʱִ�еĽű�
1���ֹ�ִ�еĽű�';
comment on column ROM_SCRIPTS_CONFIG.req_url
  is '�ű���Ӧ��Զ������URL';
comment on column ROM_SCRIPTS_CONFIG.visit_user
  is 'Զ�̷���Զ��URL���û���';
comment on column ROM_SCRIPTS_CONFIG.visit_pswd
  is 'Զ�̷���Զ��URL�Ŀ���';
comment on column ROM_SCRIPTS_CONFIG.remarks
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_SYS_FUNCTION    ϵͳ���ܱ�                        */
/*==============================================================*/
--drop table
drop table ROM_SYS_FUNCTION;
-- Create table
create table ROM_SYS_FUNCTION
(
  function_code  VARCHAR2(64) not null,
  function_name  VARCHAR2(64),
  action_name    VARCHAR2(1024),
  node_type      CHAR(1),
  parent_code    VARCHAR2(8),
  operation_code VARCHAR2(32),
  remarks        VARCHAR2(256),
  note_seq       INTEGER default 0,
  open_type char(1)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SYS_FUNCTION
  add constraint PK_ROM_SYS_FUNCTION primary key (FUNCTION_CODE)
  using index ;
-- Add comments to the table 
comment on table ROM_SYS_FUNCTION
  is '�Բ�Ʒ���������Ĺ��ܴ������Բ�Ʒ�����';
-- Add comments to the columns 
comment on column ROM_SYS_FUNCTION.function_code
  is '���ܴ���';
comment on column ROM_SYS_FUNCTION.function_name
  is '��������';
comment on column ROM_SYS_FUNCTION.action_name
  is '���ܵ�url';
comment on column ROM_SYS_FUNCTION.node_type
  is '0���ɼ�
1�����ɼ�';
comment on column ROM_SYS_FUNCTION.parent_code
  is '���ڵ�';
comment on column ROM_SYS_FUNCTION.operation_code
  is '����';
comment on column ROM_SYS_FUNCTION.remarks
  is '��ע';
comment on column ROM_SYS_FUNCTION.note_seq
  is '�ڵ�����';
comment on column ROM_SYS_FUNCTION.open_type
  is '�򿪷�ʽ';
  
/*==============================================================*/
/* Table: ROM_SYS_LOGIN    ϵͳ���ű�                           */
/*==============================================================*/
drop table ROM_SYS_LOGIN;
-- Create table
create table ROM_SYS_LOGIN
(
  login_no    VARCHAR2(8) not null,
  login_name  VARCHAR2(64),
  login_pwd   VARCHAR2(128),
  use_flg     CHAR(1),
  expire_time DATE,
  login_flg   CHAR(1),
  phone_no    VARCHAR2(15),
  login_ip    VARCHAR2(128),
  remark      VARCHAR2(64),
  province_code varchar2(4)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SYS_LOGIN
  add constraint PK_ROM_SYS_LOGIN primary key (LOGIN_NO)
  using index ;
-- Add comments to the table 
comment on table ROM_SYS_LOGIN
  is 'ϵͳ���ű�';
-- Add comments to the columns 
comment on column ROM_SYS_LOGIN.login_no
  is '��½����';
comment on column ROM_SYS_LOGIN.login_name
  is '����';
comment on column ROM_SYS_LOGIN.login_pwd
  is '��������';
comment on column ROM_SYS_LOGIN.use_flg
  is 'ʹ�ñ�ʶ,0����Ч
1����Ч';
comment on column ROM_SYS_LOGIN.expire_time
  is '��������';
comment on column ROM_SYS_LOGIN.login_flg
  is '��½��ʶ';
comment on column ROM_SYS_LOGIN.phone_no
  is '��ϵ����';
comment on column ROM_SYS_LOGIN.login_ip
  is '��¼IP';
comment on column ROM_SYS_LOGIN.remark
  is '��ע';

/*==============================================================*/
/* Table: ROM_SYS_OP_LOG   ������־��                           */
/*==============================================================*/
--drop table 
drop table ROM_SYS_OP_LOG;
-- Create table
create table ROM_SYS_OP_LOG
(
  op_date       VARCHAR2(8),
  op_staff      VARCHAR2(64),
  staff_name    VARCHAR2(64),
  pro_code      VARCHAR2(8),
  function_code VARCHAR2(8),
  op_time       DATE,
  op_content    VARCHAR2(1024),
  remarks       VARCHAR2(256)
) ;
-- Create/Recreate indexes 
create index PK_OP_DATE_OP_LOG on ROM_SYS_OP_LOG (OP_DATE)
   ;
-- Add comments to the table 
comment on table ROM_SYS_OP_LOG
  is '������־��';
-- Add comments to the columns 
comment on column ROM_SYS_OP_LOG.op_date
  is '�磺YYYYMMDD';
comment on column ROM_SYS_OP_LOG.op_staff
  is 'ͬϵͳ���ű����½�����ֶ�';
comment on column ROM_SYS_OP_LOG.staff_name
  is 'ͬϵͳ���ű��������ֶ�';
comment on column ROM_SYS_OP_LOG.pro_code
  is 'ͬ��Ʒ��������Ʒ�����ֶ�';
comment on column ROM_SYS_OP_LOG.function_code
  is 'ͬϵͳ���ܱ��﹦�ܱ���';
comment on column ROM_SYS_OP_LOG.op_time
  is '����ʱ��';
comment on column ROM_SYS_OP_LOG.op_content
  is '��������';
comment on column ROM_SYS_OP_LOG.remarks
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_SYS_POPEDOM     Ȩ��ע���                        */
/*==============================================================*/
--drop table
drop table ROM_SYS_POPEDOM;
-- Create table
create table ROM_SYS_POPEDOM
(
  function_code  VARCHAR2(8) not null,
  action_name    VARCHAR2(256) not null,
  operation_code VARCHAR2(32)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SYS_POPEDOM
  add constraint PK_ROM_SYS_POPEDOM primary key (function_code,action_name)
  using index ;
-- Create/Recreate indexes 
create index IDX_ROM_SYS_POPEDOM on ROM_SYS_POPEDOM (FUNCTION_CODE)
    ;
-- Add comments to the table 
comment on table ROM_SYS_POPEDOM
  is 'Ȩ��ע���';
-- Add comments to the columns 
comment on column ROM_SYS_POPEDOM.function_code
  is '���ܴ���';
comment on column ROM_SYS_POPEDOM.action_name
  is '���ܵ�url';
comment on column ROM_SYS_POPEDOM.operation_code
  is '����';

/*==============================================================*/
/* Table: ROM_SYS_PRO_FUNCTION    ��Ʒ���ܹ�ϵ��                */
/*==============================================================*/
--drop table
drop table ROM_SYS_PRO_FUNCTION;
-- Create table
create table ROM_SYS_PRO_FUNCTION
(
  pro_code      VARCHAR2(8) not null,
  function_code VARCHAR2(8) not null,
  remarks       VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SYS_PRO_FUNCTION
  add constraint PK_ROM_SYS_PRO_FUNCTION primary key (PRO_CODE, FUNCTION_CODE)
  using index ;
-- Add comments to the table 
comment on table ROM_SYS_PRO_FUNCTION
  is '��Ʒ���ܹ�ϵ��';
-- Add comments to the columns 
comment on column ROM_SYS_PRO_FUNCTION.pro_code
  is '��Ʒ����';  
comment on column ROM_SYS_PRO_FUNCTION.function_code
  is '���ܴ���';  
comment on column ROM_SYS_PRO_FUNCTION.remarks
  is '��ע';  
   
/*==============================================================*/
/* Table: ROM_SYS_ROLE                    ��ɫ��Ϣ��            */
/*==============================================================*/  
--drop table
drop table ROM_SYS_ROLE;
-- Create table
create table ROM_SYS_ROLE
(
  role_id       INTEGER not null,
  role_name     VARCHAR2(64),
  role_type     CHAR(1),
  role_state    CHAR(1),
  pro_code      VARCHAR2(8),
  province_code VARCHAR2(3),
  tell_type     CHAR(1),
  remarks       VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SYS_ROLE
  add constraint PK_ROM_SYS_ROLE primary key (ROLE_ID)
  using index ; 
-- Add comments to the table 
comment on table ROM_SYS_ROLE
  is '��ɫ��Ϣ��';  
-- Add comments to the columns 
comment on column ROM_SYS_ROLE.role_id
  is '��ɫID';
comment on column ROM_SYS_ROLE.role_name
  is '��ɫ����';
comment on column ROM_SYS_ROLE.role_type
  is '0����������Ա
1����ͨ����Ա';
comment on column ROM_SYS_ROLE.role_state
  is '0����Ч
1����Ч';
comment on column ROM_SYS_ROLE.pro_code
  is '��Ʒ����';
comment on column ROM_SYS_ROLE.province_code
  is 'ʡ�ݱ���';
comment on column ROM_SYS_ROLE.tell_type
  is '0���ƶ�
1������
2����ͨ
3�����
4��ȫ��ҵ';   
comment on column ROM_SYS_ROLE.remarks
  is '��ע';

/*==============================================================*/
/* Table: ROM_SYS_ROLE_FUNCTION       ��ɫ���ܹ�ϵ��            */
/*==============================================================*/
drop table ROM_SYS_ROLE_FUNCTION;
-- Create table
create table ROM_SYS_ROLE_FUNCTION
(
  role_id        INTEGER not null,
  function_code  VARCHAR2(8) not null,
  operation_code VARCHAR2(32) not null
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_SYS_ROLE_FUNCTION
  add constraint PK_ROM_SYS_ROLE_FUNCTION primary key (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
  using index ;
-- Create/Recreate indexes 
create index IDX_ROM_SYS_ROLE_FUNCTION on ROM_SYS_ROLE_FUNCTION (ROLE_ID)
    ;
-- Add comments to the table 
comment on table ROM_SYS_ROLE_FUNCTION
  is '��ɫ���ܹ�ϵ��';  
-- Add comments to the columns 
comment on column ROM_SYS_ROLE_FUNCTION.role_id
  is '��ɫID';
comment on column ROM_SYS_ROLE_FUNCTION.function_code
  is '���ܴ���';
comment on column ROM_SYS_ROLE_FUNCTION.operation_code
  is '����������;�ָ�';  
   
/*==============================================================*/
/* Table: ROM_TELLCORP_CODE  ��Ӫ�̴����                       */
/*==============================================================*/
--drop table
drop table ROM_TELLCORP_CODE;
-- Create table
create table ROM_TELLCORP_CODE
(
  tellcorp_code VARCHAR2(1),
  tellcorp_name VARCHAR2(64),
  remarks       VARCHAR2(256)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_TELLCORP_CODE
  add constraint PK_ROM_TELLCORP_CODE primary key (tellcorp_code)
  using index ;
-- Add comments to the table 
comment on table ROM_TELLCORP_CODE
  is '��Ӫ�̴����'; 
-- Add comments to the columns 
comment on column ROM_TELLCORP_CODE.tellcorp_code
  is '��Ӫ�̴���';
comment on column ROM_TELLCORP_CODE.tellcorp_name
  is '��Ӫ������';
comment on column ROM_TELLCORP_CODE.remarks
  is '��ע';
   
/*==============================================================*/
/* Table: ROM_USER_INFO      Զ���û������                     */
/*==============================================================*/
--drop table
drop table ROM_USER_INFO;
-- Create table
create table ROM_USER_INFO
(
  user_id   INTEGER not null,
  host_id   INTEGER,
  user_name VARCHAR2(32),
  passwd    VARCHAR2(32),
  home_dir  VARCHAR2(64),
  remark    VARCHAR2(128)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_USER_INFO
  add constraint PK_ROM_USER_INFO primary key (USER_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_USER_INFO
  is 'Զ���û������'; 
-- Add comments to the columns 
comment on column ROM_USER_INFO.user_id
  is 'Զ���û����';
comment on column ROM_USER_INFO.host_id
  is '��������';
comment on column ROM_USER_INFO.user_name
  is '�û���';
comment on column ROM_USER_INFO.passwd
  is '����';
comment on column ROM_USER_INFO.home_dir
  is 'HOMEĿ¼';
comment on column ROM_USER_INFO.remark
  is '��ע';

/*==============================================================*/
/* Table: EAI_APP_RULES       APPID�����                     */
/*==============================================================*/
--drop table
drop table EAI_APP_RULES;
-- Create table
create table EAI_APP_RULES
(
  instance_id INTEGER,
  min_appid   INTEGER,
  max_appid   INTEGER
) ;
-- Add comments to the table 
comment on table EAI_APP_RULES
  is 'Ӧ�ü���ƽ̨appid�����';
-- Add comments to the columns 
comment on column EAI_APP_RULES.instance_id
  is 'ʵ��ID';
comment on column EAI_APP_RULES.min_appid
  is '��Сappid';
comment on column EAI_APP_RULES.max_appid
  is '���appid';
 
/*==============================================================*/
/* Table: EAI_BUS_ADAPT_RELATION       ��������������ϵ��       */
/*==============================================================*/
--drop table
drop table EAI_BUS_ADAPT_RELATION;
-- Create table
create table EAI_BUS_ADAPT_RELATION
(
  bus_id       INTEGER not null,
  adapt_id     INTEGER,
  in_flag      CHAR(1),
  appid        INTEGER,
  transcode    VARCHAR2(8),
  server_count INTEGER,
  reserver1    VARCHAR2(64),
  reserver2    VARCHAR2(256)
);
-- Add comments to the table 
comment on table EAI_BUS_ADAPT_RELATION
  is '��������������ϵ��';
-- Add comments to the columns 
comment on column EAI_BUS_ADAPT_RELATION.bus_id
  is '���߽ڵ�ID';
comment on column EAI_BUS_ADAPT_RELATION.adapt_id
  is '0������
1��tuxedo������
2��webservice������
3��http+xml������
4��mml������
5��tongeasy������
6��uasp������
7��socket��������lua�棩';
comment on column EAI_BUS_ADAPT_RELATION.in_flag
  is '0���������� 1���ӳ�����';
comment on column EAI_BUS_ADAPT_RELATION.APPID
  is 'APPID';
comment on column EAI_BUS_ADAPT_RELATION.transcode
  is '���ױ���';
comment on column EAI_BUS_ADAPT_RELATION.server_count
  is '�������';
comment on column EAI_BUS_ADAPT_RELATION.RESERVER1
  is '������1';
comment on column EAI_BUS_ADAPT_RELATION.RESERVER2
  is '������2';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EAI_BUS_ADAPT_RELATION
  add constraint PK_EAI_BUS_ADAPT_RELATION primary key (BUS_ID)
  using index ;

/*==============================================================*/
/* Table: EAI_CONF_INST_RELATION       EAI����ʵ����ϵ��       */
/*==============================================================*/
--drop table
drop table EAI_CONF_INST_RELATION;
-- Create table
create table EAI_CONF_INST_RELATION
(
  node_id       INTEGER not null,
  instance_id   INTEGER,
  static_flag   INTEGER
);
-- Add comments to the table 
comment on table EAI_CONF_INST_RELATION
  is ' ���ú�ʵ����ϵ��';
-- Add comments to the columns 
comment on column EAI_CONF_INST_RELATION.node_id
  is '�ڵ�ID';
comment on column EAI_CONF_INST_RELATION.instance_id
  is 'ʵ��ID 0������
1��tuxedo������
2��webservice������
3��http+xml������
4��mml������
5��tongeasy������
6��uasp������
7��socket��������lua�棩';
comment on column EAI_CONF_INST_RELATION.static_flag
  is '��̬��־ 0���Ǿ�̬����
1���Ǿ�̬����
��̬���ú��壺����ʵ����ͬ�����ü��Ǿ�̬���á���tuxedo��������WSNADDR��������ʵ������Ϊ��̬���á�';

/*==============================================================*/
/* Table: EAI_NODES_CONFINFO       EAI�ڵ�������Ϣ��       */
/*==============================================================*/
--drop table
drop table EAI_NODES_CONFINFO;
-- Create table
create table EAI_NODES_CONFINFO
(
  node_id   INTEGER not null,
  node_flag INTEGER,
  node_name VARCHAR2(32),
  node_desc VARCHAR2(64),
  reserve1  VARCHAR2(256),
  reserve2  VARCHAR2(256)
);
-- Add comments to the table 
comment on table EAI_NODES_CONFINFO
  is 'Ӧ�ü���ƽ̨�ڵ���Ϣ���������ߡ�����������Ϣ';
-- Add comments to the columns 
comment on column EAI_NODES_CONFINFO.node_id
  is '�ڵ�ID';
comment on column EAI_NODES_CONFINFO.node_flag
  is '0������
1��tuxedo������
2��webservice������
3��http+xml������
4��mml������
5��tongeasy������
6��uasp������
7��socket��������lua�棩';
comment on column EAI_NODES_CONFINFO.node_name
  is '�ڵ�����';
comment on column EAI_NODES_CONFINFO.node_desc
  is '�ڵ�����';
comment on column EAI_NODES_CONFINFO.reserve1
  is '������1';
comment on column EAI_NODES_CONFINFO.reserve2
  is '������2';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EAI_NODES_CONFINFO
  add constraint PK_EAI_NODES_CONFINFO primary key (NODE_ID)
  using index ;

/*==============================================================*/
/* Table: EAI_NODES_INSTANCE       EAI�ڵ�ʵ����                */
/*==============================================================*/
--drop table
drop table EAI_NODES_INSTANCE;
-- Create table
create table EAI_NODES_INSTANCE
(
  instance_id INTEGER not null,
  section     VARCHAR2(32),
  item_name   VARCHAR2(64),
  item_value  VARCHAR2(256),
  item_seq    INTEGER,
  reserve1    VARCHAR2(256),
  reserve2    VARCHAR2(256)
) ;
-- Add comments to the table 
comment on table EAI_NODES_INSTANCE
  is 'Ӧ�ü���ƽ̨�ڵ�ʵ�����������ߡ��������Ȳ���ʵ����ҵ��������ñ�Ϊ������';
-- Add comments to the columns 
comment on column EAI_NODES_INSTANCE.instance_id
  is 'ʵ��ID';
comment on column EAI_NODES_INSTANCE.section
  is 'section��';
comment on column EAI_NODES_INSTANCE.item_name
  is '���ü���';
comment on column EAI_NODES_INSTANCE.item_value
  is '���ü�ֵ';
comment on column EAI_NODES_INSTANCE.item_seq
  is '����˳��';
comment on column EAI_NODES_INSTANCE.reserve1
  is '������1';
comment on column EAI_NODES_INSTANCE.reserve2
  is '������2';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EAI_NODES_INSTANCE
  add constraint PK_EAI_NODES_INSTANCE primary key (INSTANCE_ID)
  using index ;

/*==============================================================*/
/* Table: ROM_DAYMONITOR_CONF       �ճ�Ѳ����Ŀ�����          */
/*==============================================================*/
--drop table
drop table ROM_DAYMONITOR_CONF;
-- Create table
create table ROM_DAYMONITOR_CONF
(
  seq_id         INTEGER not null,
  province_code  VARCHAR2(3) not null,
  tell_type  CHAR(1) not null,
  pro_code       VARCHAR2(8) not null,
  father_section VARCHAR2(64) not null,
  child_section  VARCHAR2(64) not null,
  kpi_id         VARCHAR2(32) not null,
  check_cycle    VARCHAR2(32),
  reserved1      VARCHAR2(32),
  reserved2      VARCHAR2(64),
  remark         VARCHAR2(64)
) ;
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_DAYMONITOR_CONF
  add constraint PK_ROM_DAYMONITOR_CONF primary key (SEQ_ID, PROVINCE_CODE, tell_type, PRO_CODE, FATHER_SECTION, CHILD_SECTION, KPI_ID)
  using index ;
-- Add comments to the table 
comment on table ROM_DAYMONITOR_CONF
  is '�ճ�Ѳ����Ŀ�����';
-- Add comments to the columns 
comment on column ROM_DAYMONITOR_CONF.seq_id
  is '���к�';
comment on column ROM_DAYMONITOR_CONF.province_code
  is 'ʡ�ݴ���';
comment on column ROM_DAYMONITOR_CONF.tell_type
  is '��Ӫ�̴���';
comment on column ROM_DAYMONITOR_CONF.pro_code
  is '��Ʒ����';
comment on column ROM_DAYMONITOR_CONF.father_section
  is '�ռ츸�ڵ���';
comment on column ROM_DAYMONITOR_CONF.child_section
  is '�ռ��ӽڵ���';
comment on column ROM_DAYMONITOR_CONF.kpi_id
  is 'KPI���';
comment on column ROM_DAYMONITOR_CONF.check_cycle
  is '�������';
comment on column ROM_DAYMONITOR_CONF.reserved1
  is 'Ԥ���ֶ�1';
comment on column ROM_DAYMONITOR_CONF.reserved2
  is 'Ԥ���ֶ�2';
comment on column ROM_DAYMONITOR_CONF.remark
  is '��ע';



/*==============================================================*/
/* Table: ROM_DAYMONITOR_DATA       �ճ�Ѳ����Ŀʵ����          */
/*==============================================================*/
--drop table
drop table ROM_DAYMONITOR_DATA;
-- Create table
create table ROM_DAYMONITOR_DATA
(
  seq_id           INTEGER,
  check_time       DATE,
  mul_section_name VARCHAR2(128),
  check_value      VARCHAR2(32),
  err_flag         CHAR(1),
  reserved1        VARCHAR2(32),
  reserved2        VARCHAR2(64),
  remark           VARCHAR2(64)
) ;
-- Add comments to the table 
comment on table ROM_DAYMONITOR_DATA
  is '�ճ�Ѳ����Ŀʵ����';
-- Add comments to the columns 
comment on column ROM_DAYMONITOR_DATA.seq_id
  is '���к�';
comment on column ROM_DAYMONITOR_DATA.check_time
  is '�ռ�ʱ��';
comment on column ROM_DAYMONITOR_DATA.mul_section_name
  is '��ά�ռ���������';
comment on column ROM_DAYMONITOR_DATA.check_value
  is '�����ֵ';
comment on column ROM_DAYMONITOR_DATA.err_flag
  is '�쳣��ʶ 0������ 1���쳣';
comment on column ROM_DAYMONITOR_DATA.reserved1
  is 'Ԥ���ֶ�1';
comment on column ROM_DAYMONITOR_DATA.reserved2
  is 'Ԥ���ֶ�2';
comment on column ROM_DAYMONITOR_DATA.remark
  is '��ע';
  
/*==============================================================*/
/* Table: ROM_BUSICHECK_DATA       ���̼��ʵ����          */
/*==============================================================*/
--drop table
drop table ROM_BUSICHECK_DATA;
-- Create table
create table ROM_BUSICHECK_DATA
(
  seq_id           INTEGER,
  check_time       DATE,
  mul_section_name VARCHAR2(128),
  check_value      VARCHAR2(32),
  err_flag         CHAR(1),
  reserved1        VARCHAR2(32),
  reserved2        VARCHAR2(64),
  remark           VARCHAR2(64)
) ;
-- Add comments to the table 
comment on table ROM_BUSICHECK_DATA
  is '���̼��ʵ����';
-- Add comments to the columns 
comment on column ROM_BUSICHECK_DATA.seq_id
  is '���к�';
comment on column ROM_BUSICHECK_DATA.check_time
  is '���̼��ʱ��';
comment on column ROM_BUSICHECK_DATA.mul_section_name
  is '���̼��������';
comment on column ROM_BUSICHECK_DATA.check_value
  is '���̼�ؽ��ֵ';
comment on column ROM_BUSICHECK_DATA.err_flag
  is '�쳣��ʶ 0������ 1���쳣';
comment on column ROM_BUSICHECK_DATA.reserved1
  is 'Ԥ���ֶ�1';
comment on column ROM_BUSICHECK_DATA.reserved2
  is 'Ԥ���ֶ�2';
comment on column ROM_BUSICHECK_DATA.remark
  is '��ע';
/*==============================================================*/
/* Table: ROM_NETCELL_INFO       ��Ԫ��Ϣ��                  */
/*==============================================================*/
--drop table
drop table ROM_NETCELL_INFO;
-- Create table
create table ROM_NETCELL_INFO
(
  cell_id       INTEGER not null,
  province_code VARCHAR2(3) not null,
  tell_type     CHAR(1) not null,
  cell_code     VARCHAR2(8) not null,
  cell_name     VARCHAR2(32),
  hlr_code      VARCHAR2(8) not null,
  ip_addr       VARCHAR2(32) not null,
  port          NUMBER(6) not null,
  use_flag      CHAR(1),
  reserved1     VARCHAR2(32),
  reserved2     VARCHAR2(64),
  remark        VARCHAR2(64)
)  ;

-- Add comments to the columns 
comment on column ROM_NETCELL_INFO.use_flag
  is 'y:��Ч n:��Ч';
-- Create/Recreate indexes 
create unique index NETCELL_INDEX on ROM_NETCELL_INFO (PROVINCE_CODE, TELL_TYPE, CELL_CODE, HLR_CODE, IP_ADDR, PORT)
   ;
 
-- Create/Recreate primary, unique and foreign key constraints 
alter table ROM_NETCELL_INFO
  add constraint PK_ROM_NETCELL_INFO primary key (CELL_ID)
  using index 
  ;


/*==============================================================*/
/* Table: ROM_EXPAND_CODE       ��չ���Դ����                  */
/*==============================================================*/
--drop table
drop table ROM_EXPAND_CODE;  
-- Create table
create table ROM_EXPAND_CODE
(
  property_key      VARCHAR2(60) not null,
  property_key_desc VARCHAR2(200) not null,
  table_name        VARCHAR2(30) not null,
  table_name_desc   VARCHAR2(30) not null
) ;

-- Create/Recreate indexes 
create unique index PK_ROM_EXPAND_CODE on ROM_EXPAND_CODE (PROPERTY_KEY, PROPERTY_KEY_DESC, TABLE_NAME, TABLE_NAME_DESC)
  ;
 
/*==============================================================*/
/* Table: ROM_EXPAND_INFO       ��չ����ʵ����                  */
/*==============================================================*/
--drop table
drop table ROM_EXPAND_INFO;  
-- Create table
create table ROM_EXPAND_INFO
(
  expand_id      INTEGER not null,
  record_id      INTEGER not null,
  property_key   VARCHAR2(60),
  property_value VARCHAR2(200) not null,
  property_order INTEGER not null,
  remark         VARCHAR2(200)
) ;
-- Create/Recreate indexes 
create unique index IDK1_ROM_EXPAND_INFO on ROM_EXPAND_INFO (RECORD_ID, PROPERTY_KEY, PROPERTY_VALUE, PROPERTY_ORDER)
  ;
create unique index PK_ROM_EXPAND_INFO on ROM_EXPAND_INFO (EXPAND_ID)
  ;


/*==============================================================*/
/* Table:  ROM_BUSICHECK_CONF      ҵ�������ñ�                  */
/*==============================================================*/
DROP TABLE ROM_BUSICHECK_CONF CASCADE CONSTRAINTS;

CREATE TABLE ROM_BUSICHECK_CONF
(
  SEQ_ID             INTEGER                    NOT NULL,
  PROVINCE_CODE      VARCHAR2(3 BYTE)           NOT NULL,
  TELL_TYPE          CHAR(1 BYTE)               NOT NULL,
  BUSI_TYPE          INTEGER                    NOT NULL,
  BUSI_IDENTIFY      VARCHAR2(3 BYTE)           NOT NULL,
  BUSI_NAME          VARCHAR2(64 BYTE)          NOT NULL,
  CHECK_NODES        VARCHAR2(64 BYTE),
  CHILD_NODE         VARCHAR2(64 BYTE),
  HOST_IP            VARCHAR2(32 BYTE),
  USER_NAME          VARCHAR2(16 BYTE),
  HOST_DIR           VARCHAR2(128 BYTE),
  CHECK_LIMIT_VALUE  VARCHAR2(16 BYTE)          NOT NULL,
  LOGIN_NO           VARCHAR2(8 BYTE),
  GRANT_LOGINS       VARCHAR2(1024 BYTE),
  ISGRANT            INTEGER,
  RESERVED1          VARCHAR2(32 BYTE),
  RESERVED2          VARCHAR2(64 BYTE),
  RESERVED3          VARCHAR2(64 BYTE),
  REMARK             VARCHAR2(64 BYTE)
)
;


CREATE UNIQUE INDEX PK_ROM_BUSICHECK_CONF ON ROM_BUSICHECK_CONF
(SEQ_ID)
;
  
/*==============================================================*/
/* Table:  CMSWORKORDERSAVERULE      ��Ԫ����Ԫ��־��Ķ�Ӧ��ϵ���ñ�                  */
/*CmsWorkOrderSaveRule  ����Ҫ�� �ڹ�����ϸ��ѯ�͹���ͳ�Ʋ�ѯʱ��ͨ��ѡ�� ��Ԫ���룬�Զ���ȡ��Ӧ�ĵ������ݴ洢�Ĺ�����������ʷ�������1.1. �� ������ʷ��Ĭ�����ڹ������������ _his����jspҳ��ʵ�֣�, ��̬��ѯͳ�ƹ������ݡ� */
/*==============================================================*/
create table CMSWORKORDERSAVERULE
(
  cell_code VARCHAR2(8),
  hlr_code  VARCHAR2(8),
  save_code VARCHAR2(64),
  use_flag  CHAR(1),
  remarks   VARCHAR2(1000)
) ;
 
comment on column CMSWORKORDERSAVERULE.cell_code 
  is '��Ԫ����';
comment on column CMSWORKORDERSAVERULE.hlr_code 
is '��Ԫ���';
comment on column CMSWORKORDERSAVERULE.save_code 
is '�������������ݴ洢�Ĺ�����';
comment on column CMSWORKORDERSAVERULE.use_flag 
is '�Ƿ�����';
comment on column CMSWORKORDERSAVERULE.remarks
is '��ע';
  
/*==============================================================*/
/* Table:  ROM_OBSMONITOR_CFG      ɽ��ҵ֧������ʾ�쳣����Ƶ�εĽ��׺˲��¼���ؼ�¼���ñ��Ǽ�ز��Ե����ñ�                  */
/*==============================================================*/
CREATE TABLE ROM_OBSMONITOR_CFG
(
  ID             INTEGER                        NOT NULL,
  PROVINCE_CODE  VARCHAR2(3 BYTE)               NOT NULL,
  TELL_TYPE      CHAR(1 BYTE)                   NOT NULL,
  TYPE           NUMBER                         NOT NULL,
  NAME           VARCHAR2(60 BYTE)              NOT NULL,
  OP_TYPE        NUMBER                         NOT NULL,
  DEFAULT_VALUE  NUMBER,
  REMARK         VARCHAR2(200 BYTE)
)
;

COMMENT ON TABLE ROM_OBSMONITOR_CFG IS 'ɽ��ҵ֧������ʾ�쳣����Ƶ�εĽ��׺˲��¼���ؼ�¼���ñ��Ǽ�ز��Ե����ñ�';

/*==============================================================*/
/* Table:  WOBSPANPROVOPRALL      ɽ��ҵ֧������ʾ�쳣����Ƶ�εĽ��׺˲��¼���ؼ�¼���ñ���Ҫ��ѯ��������Դ��                  */
/*==============================================================*/
CREATE TABLE WOBSPANPROVOPRALL
(
  OP_TYPE       CHAR(1 BYTE)                    NOT NULL,
  ACTIVITYCODE  CHAR(8 BYTE)                    NOT NULL,
  CUTOFFDAY     CHAR(8 BYTE)                    NOT NULL,
  OSNDUNS       CHAR(4 BYTE),
  HSNDUNS       CHAR(4 BYTE),
  RSPCODE       CHAR(4 BYTE),
  PHONE_NO      VARCHAR2(15 BYTE)               NOT NULL,
  LOGIN_ACCEPT  NUMBER                          NOT NULL,
  SM_CODE       CHAR(2 BYTE)                    NOT NULL,
  LOGIN_NO      VARCHAR2(9 BYTE)                NOT NULL,
  OP_TIME       VARCHAR2(30 BYTE)               NOT NULL,
  PAY_MONEY     NUMBER(15,2)                    NOT NULL,
  BACK_FLAG     CHAR(1 BYTE)                    NOT NULL,
  NOTE          VARCHAR2(60 BYTE)
)
;

COMMENT ON TABLE WOBSPANPROVOPRALL IS 'ɽ��ҵ֧������ʾ�쳣����Ƶ�εĽ��׺˲��¼���ؼ�¼���ñ���Ҫ��ѯ��������Դ��';

/*=============================�Ĵ��ƶ� ��ͬ����ѯ����=================================*/
CREATE TABLE  ROM_COPYTABLE_HOST    
(
  HOSTID      NUMBER(10)                        NOT NULL,
  HOSTIP      VARCHAR2(20 BYTE)                 NOT NULL,
  USERNAME    VARCHAR2(20 BYTE)                 NOT NULL,
  USERPASSWD  VARCHAR2(20 BYTE)                 NOT NULL,
  FILEDIR     VARCHAR2(256 BYTE)                NOT NULL,
  FILENAME    VARCHAR2(256 BYTE)                NOT NULL,
  FILETYPE    VARCHAR2(1 BYTE)                  NOT NULL
)
;

COMMENT ON TABLE ROM_COPYTABLE_HOST IS 'ȫ��ͬ���������ñ�';


CREATE TABLE ROM_COPYTABLE_ALL
(
  HOSTID            NUMBER(10)                  NOT NULL,
  SRC_TABLE_OWNER   VARCHAR2(30 BYTE)           NOT NULL,
  SRC_TABLE_NAME    VARCHAR2(60 BYTE)           NOT NULL,
  DESC_TABLE_OWNER  VARCHAR2(30 BYTE)           NOT NULL,
  DESC_TABLE_NAME   VARCHAR2(60 BYTE)           NOT NULL
);

COMMENT ON TABLE ROM_COPYTABLE_ALL IS 'ȫ��ͬ�����ϵ���ñ�';


CREATE TABLE ROM_COPYTABLE_ADD
(
  DBFLAG      VARCHAR2(4 BYTE)                  NOT NULL,
  DBSTR       VARCHAR2(100 BYTE)                NOT NULL,
  TABLEOWNER  VARCHAR2(30 BYTE)                 NOT NULL,
  TABLENAME   VARCHAR2(60 BYTE)                 NOT NULL,
  SQLSTR      VARCHAR2(256 BYTE),
  REMARK      VARCHAR2(256 BYTE)
);

COMMENT ON TABLE ROM_COPYTABLE_ADD IS 'ȫ������ͬ����ѯ���ñ�';


CREATE TABLE ROM_BUSICHECK_DATA
(
  SEQ_ID            INTEGER,
  CHECK_TIME        DATE,
  MUL_SECTION_NAME  VARCHAR2(128 BYTE),
  CHECK_VALUE       VARCHAR2(32 BYTE),
  ERR_FLAG          CHAR(1 BYTE),
  RESERVED1         VARCHAR2(32 BYTE),
  RESERVED2         VARCHAR2(64 BYTE),
  REMARK            VARCHAR2(64 BYTE)
);

COMMENT ON TABLE ROM_BUSICHECK_DATA IS '���̼�ر�';

/*==============================================================*/
/* Table:  ROM_DATASCRIPT_CONFIG ɽ��ҵ֧���� �ű���ȡ�������ñ� */
/*==============================================================*/

DROP TABLE ROM_DATASCRIPT_CONFIG CASCADE CONSTRAINTS;

CREATE TABLE ROM_DATASCRIPT_CONFIG
(
  FUNCTION_CODE        VARCHAR2(64 BYTE)        NOT NULL,
  PROVINCE_CODE        VARCHAR2(8 BYTE)         NOT NULL,
  TELL_TYPE            VARCHAR2(1 BYTE)         NOT NULL,
  HOST_ID              INTEGER                  NOT NULL,
  START_SCRIPTS_DIR    VARCHAR2(256 BYTE)       NOT NULL,
  START_SCRIPTS_NAME   VARCHAR2(512 BYTE)       NOT NULL,
  STOP_SCRIPTS_DIR     VARCHAR2(256 BYTE),
  STOP_SCRIPTS_NAME    VARCHAR2(512 BYTE),
  CHECK_SCRIPTS_ORDER  VARCHAR2(512 BYTE)       NOT NULL,
  SCRIPTS_PARAM_NUM    INTEGER                  NOT NULL,
  SCRIPTS_PARAM_NAME   VARCHAR2(512 BYTE),
  SCRIPTS_LOG_DIR      VARCHAR2(512 BYTE)       NOT NULL,
  SCRIPTS_LOG_NAME     VARCHAR2(512 BYTE)       NOT NULL,
  USER_NAME            VARCHAR2(64 BYTE)        NOT NULL,
  USER_PASSWD          VARCHAR2(64 BYTE)        NOT NULL,
  REMARK    VARCHAR2(256 BYTE) 
);
 
 
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.FUNCTION_CODE           IS 'ģ�����';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.PROVINCE_CODE           IS 'ģʡ�ݴ���';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.TELL_TYPE               IS '������Ӫ��';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.HOST_ID                 IS '����ID ���� rom_host_info��';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.START_SCRIPTS_DIR       IS '��ʼ�ű����ڵ�Ŀ¼';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.START_SCRIPTS_NAME      IS '��ʼ�ű�������';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.STOP_SCRIPTS_DIR        IS 'ֹͣ�ű����ڵ�Ŀ¼';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.STOP_SCRIPTS_NAME       IS 'ֹͣ�ű�������';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.CHECK_SCRIPTS_ORDER     IS '��ѯ��ʼ�ű��Ƿ������е�����';
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.SCRIPTS_PARAM_NUM       IS '��ʼ�ű����������ĸ���' ;
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.SCRIPTS_PARAM_NAME      IS '��ʼ�ű���������������' ;
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.SCRIPTS_LOG_DIR         IS '�ű���־���ڵ�Ŀ¼' ;
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.SCRIPTS_LOG_NAME        IS '�ű���־������' ;
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.USER_NAME               IS '�������û���' ;
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.USER_PASSWD             IS '����������' ;
COMMENT ON COLUMN  ROM_DATASCRIPT_CONFIG.REMARK                  IS '��ע' ;

                                                                                                                  


CREATE UNIQUE INDEX  UIDK1_ROM_DATASCRIPT_CONFIG ON ROM_DATASCRIPT_CONFIG
(FUNCTION_CODE, PROVINCE_CODE, TELL_TYPE);
 

/*==============================================================*/
/* Table:  ROM_DATASQL_CONFIG ɽ��ҵ֧����SQL��ȡ�������ñ�   */
/*==============================================================*/
 

DROP TABLE ROM_DATASQL_CONFIG CASCADE CONSTRAINTS;

CREATE TABLE ROM_DATASQL_CONFIG
(
  FUNCTION_CODE  VARCHAR2(64 BYTE)              NOT NULL,
  PROVINCE_CODE  VARCHAR2(64 BYTE)              NOT NULL,
  TELL_TYPE      VARCHAR2(64 BYTE)              NOT NULL,
  SQL_DESC       VARCHAR2(4000 BYTE)            NOT NULL,
  SQL_PARAM      VARCHAR2(128 BYTE)             NOT NULL,
  SQL_TITLE      VARCHAR2(128 BYTE)             NOT NULL,
  DB_ID          VARCHAR2(64 BYTE)              NOT NULL,
  REMARK         VARCHAR2(256 BYTE)
);
 
 
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.FUNCTION_CODE      IS 'ģ�����';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.PROVINCE_CODE      IS 'ģʡ�ݴ���';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.TELL_TYPE          IS '������Ӫ��';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.SQL_DESC           IS 'SQL��� ��ѯ�������ʺŴ���';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.SQL_PARAM          IS '��ѯ����������';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.SQL_TITLE          IS '��ѯ�ֶε�����';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.DB_ID              IS '���ݿ��ʶ ���� ROM_DATATITLE_CONFIG ��';
COMMENT ON COLUMN  ROM_DATASQL_CONFIG.REMARK             IS '��ע';



CREATE UNIQUE INDEX  UIDK1_ROM_DATASQL_CONFIG ON ROM_DATASQL_CONFIG
(FUNCTION_CODE, PROVINCE_CODE, TELL_TYPE);


/*==============================================================*/
/* Table:  ROM_DATATITLE_CONFIG ɽ��ҵ֧�������ݿ��ʶ���ñ�   */
/*==============================================================*/
 

DROP TABLE ROM_DATATITLE_CONFIG CASCADE CONSTRAINTS;

CREATE TABLE ROM_DATATITLE_CONFIG
(
  DB_ID          VARCHAR2(64 BYTE)              NOT NULL,
  PROVINCE_CODE  VARCHAR2(64 BYTE)              NOT NULL,
  TELL_TYPE      VARCHAR2(64 BYTE)              NOT NULL,
  DB_NAME        VARCHAR2(64 BYTE)              NOT NULL,
  REMARK         VARCHAR2(256 BYTE)
);
 
COMMENT ON COLUMN  ROM_DATATITLE_CONFIG.DB_ID              IS '���ݿ��ʶ';
COMMENT ON COLUMN  ROM_DATATITLE_CONFIG.PROVINCE_CODE      IS 'ģʡ�ݴ���';
COMMENT ON COLUMN  ROM_DATATITLE_CONFIG.TELL_TYPE          IS '������Ӫ��';
COMMENT ON COLUMN  ROM_DATATITLE_CONFIG.DB_NAME            IS '���ݿ�����';
COMMENT ON COLUMN  ROM_DATATITLE_CONFIG.REMARK             IS '��ע';

CREATE UNIQUE INDEX  UIDK1_ROM_DATATITLE_CONFIG ON ROM_DATATITLE_CONFIG
(DB_ID, PROVINCE_CODE, TELL_TYPE);
 

/*==============================================================*/
/* Table:  ROM_WF_PRODUCT �����ƶ���֧���� ��Ʒ��Ϣ��*/  
/*==============================================================*/
 
DROP TABLE ROM_WF_PRODUCT CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_PRODUCT
(
  PRODUCT_ID     INTEGER                        NOT NULL,
  PROVINCE_CODE  VARCHAR2(3 BYTE)               NOT NULL,
  TELLCORP_CODE  VARCHAR2(1 BYTE)               NOT NULL,
  PRODUCT_NAME   VARCHAR2(128 BYTE)             NOT NULL,
  DEPART         VARCHAR2(30 BYTE),
  VERSION        VARCHAR2(30 BYTE),
  MANAGER        VARCHAR2(30 BYTE),
  REMARK         VARCHAR2(256 BYTE)
);

COMMENT ON COLUMN ROM_WF_PRODUCT.PRODUCT_ID IS '��Ʒ���ID';

COMMENT ON COLUMN ROM_WF_PRODUCT.PROVINCE_CODE IS 'ʡ��';

COMMENT ON COLUMN ROM_WF_PRODUCT.TELLCORP_CODE IS '��Ӫ��';

COMMENT ON COLUMN ROM_WF_PRODUCT.PRODUCT_NAME IS '��Ʒ����';

COMMENT ON COLUMN ROM_WF_PRODUCT.DEPART IS '��Ʒ��������';

COMMENT ON COLUMN ROM_WF_PRODUCT.VERSION IS '��Ʒ�汾';

COMMENT ON COLUMN ROM_WF_PRODUCT.MANAGER IS '�����ˣ����ڱ�ʶ����Ʒ�ڸ���ʡ�ݵĸ�����';

COMMENT ON COLUMN ROM_WF_PRODUCT.REMARK IS '��ע';


CREATE UNIQUE INDEX IDK1_ROM_WF_PRODUCT ON ROM_WF_PRODUCT
(PRODUCT_ID);



/*==============================================================*/
/* Table:  ROM_WF_TASK �����ƶ���֧���� ������Ϣ��*/  
/*==============================================================*/

 
DROP TABLE ROM_WF_TASK CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_TASK
(
  TASK_ID     VARCHAR2(30 BYTE)                 NOT NULL,
  PRODUCT_ID  INTEGER                           NOT NULL,
  STATUS      VARCHAR2(1 BYTE)                  NOT NULL,
  TASK_NAME   VARCHAR2(100 BYTE)                NOT NULL,
  REMARK      VARCHAR2(256 BYTE)
);

COMMENT ON COLUMN ROM_WF_TASK.TASK_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_TASK.PRODUCT_ID IS '��ƷID';

COMMENT ON COLUMN ROM_WF_TASK.STATUS IS '״̬ҵ��ȡֵ���壺''0''  ����� ''1''  �����';

COMMENT ON COLUMN ROM_WF_TASK.TASK_NAME IS '��������';

COMMENT ON COLUMN ROM_WF_TASK.REMARK IS '��ע';


CREATE UNIQUE INDEX IDK1_ROM_WF_TASK ON ROM_WF_TASK
(TASK_ID);

/*==============================================================*/
/* Table:  ROM_WF_TASK �����ƶ���֧���� ������Ϣ��*/  
/*==============================================================*/

DROP TABLE ROM_WF_TASK_OP CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_TASK_OP
(
  TASK_ID      VARCHAR2(30 BYTE)                NOT NULL,
  OP_TYPE      VARCHAR2(1 BYTE)                 NOT NULL,
  ENV_INST_ID  VARCHAR2(30 BYTE)                NOT NULL,
  OP_INFO      VARCHAR2(1024 BYTE),
  REMARK       VARCHAR2(256 BYTE)
);

COMMENT ON COLUMN ROM_WF_TASK_OP.TASK_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_TASK_OP.OP_TYPE IS '''0'' ��ʼ ''1'' ֹͣ ''2'' ��ͣ ''3'' ȡ�� ''4'' ����';

COMMENT ON COLUMN ROM_WF_TASK_OP.ENV_INST_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_TASK_OP.OP_INFO IS '������ע';


CREATE UNIQUE INDEX PK_ROM_WF_TASK_OP ON ROM_WF_TASK_OP
(TASK_ID,OP_TYPE);


/*==============================================================*/
/* Table:  ROM_WF_TASK �����ƶ���֧����             ���������*/  
/*==============================================================*/

DROP TABLE ROM_WF_TASK_OP CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_TASK_OP
(
  TASK_ID      VARCHAR2(30 BYTE)                NOT NULL,
  OP_TYPE      VARCHAR2(1 BYTE)                 NOT NULL,
  ENV_INS_ID   VARCHAR2(30 BYTE)                NOT NULL,
  OP_INFO      VARCHAR2(1024 BYTE),
  REMARK       VARCHAR2(256 BYTE)
);

COMMENT ON COLUMN ROM_WF_TASK_OP.TASK_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_TASK_OP.OP_TYPE IS '''0'' ��ʼ ''1'' ֹͣ ''2'' ��ͣ ''3'' ȡ�� ''4'' ����';

COMMENT ON COLUMN ROM_WF_TASK_OP.ENV_INS_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_TASK_OP.OP_INFO IS '������ע';


CREATE UNIQUE INDEX PK_ROM_WF_TASK_OP ON ROM_WF_TASK_OP
(TASK_ID, OP_TYPE);

/*==============================================================*/
/* Table:  ROM_WF_FLOW �����ƶ���֧���� ���̱�                */
/*==============================================================*/
 
 
DROP TABLE  ROM_WF_FLOW CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_FLOW
(
  FLOW_ID     VARCHAR2(30 BYTE)                 NOT NULL,
  PRODUCT_ID  INTEGER                           NOT NULL,
  STATUS      VARCHAR2(1 BYTE),
  FLOW_NAME   VARCHAR2(100 BYTE),
  REMARK      VARCHAR2(256 BYTE)
);

COMMENT ON COLUMN  ROM_WF_FLOW.FLOW_ID IS '����ID';
COMMENT ON COLUMN  ROM_WF_FLOW.PRODUCT_ID IS '��ƷID';
COMMENT ON COLUMN  ROM_WF_FLOW.STATUS IS '״̬ҵ��ȡֵ���壺''0''  ����� ''1''  �����';
COMMENT ON COLUMN  ROM_WF_FLOW.FLOW_NAME IS '��������';
COMMENT ON COLUMN  ROM_WF_FLOW.REMARK IS '��ע';

CREATE UNIQUE INDEX  IDK1_ROM_WF_FLOW ON  ROM_WF_FLOW
(FLOW_ID);


/*==============================================================*/
/* Table:  ROM_WF_FLOW_TASK �����ƶ���֧���� ���������ϵ��    */
/*==============================================================*/

DROP TABLE  ROM_WF_FLOW_TASK CASCADE CONSTRAINTS;

CREATE TABLE  ROM_WF_FLOW_TASK
(
  FLOW_ID       VARCHAR2(30 BYTE)               NOT NULL,
  TASK_ID_FROM  VARCHAR2(30 BYTE),
  TASK_ID_TO    VARCHAR2(30 BYTE)
);
 

COMMENT ON COLUMN ROM_WF_FLOW_TASK.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_FLOW_TASK.TASK_ID_FROM IS 'ǰ������ID';
COMMENT ON COLUMN ROM_WF_FLOW_TASK.TASK_ID_TO IS '��������ID';


CREATE INDEX IDK1_ROM_WF_FLOW_TASK ON ROM_WF_FLOW_TASK
(FLOW_ID,TASK_ID_FROM,TASK_ID_TO);
 
/*==============================================================*/
/* Table:  ROM_WF_FLOW_TASK_GUI �����ƶ���֧���� �������������    */
/*==============================================================*/

DROP TABLE  ROM_WF_FLOW_TASK_GUI CASCADE CONSTRAINTS;

CREATE TABLE  ROM_WF_FLOW_TASK_GUI
(
  FLOW_ID       VARCHAR2(30 BYTE)               NOT NULL,
  TASK_ID       VARCHAR2(30 BYTE)               NOT NULL,
  GUI_X         VARCHAR2(30 BYTE),
  GUI_Y         VARCHAR2(30 BYTE)
);
 

COMMENT ON COLUMN ROM_WF_FLOW_TASK_GUI.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_FLOW_TASK_GUI.TASK_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_FLOW_TASK_GUI.GUI_X IS 'GUI����X������';
COMMENT ON COLUMN ROM_WF_FLOW_TASK_GUI.GUI_Y IS 'GUI����Y������';


CREATE INDEX IDK1_ROM_WF_FLOW_TASK_GUI ON ROM_WF_FLOW_TASK_GUI
(FLOW_ID,TASK_ID);


/*==============================================================*/
/* Table:  ROM_WF_TEMPLATE �����ƶ���֧���� ģ����Ϣ��*/  
/*==============================================================*/ 
 
 
DROP TABLE ROM_WF_TEMPLATE CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_TEMPLATE
(
  TEMPLATE_ID    VARCHAR2(30 BYTE)              NOT NULL,
  PRODUCT_ID     INTEGER                        NOT NULL,
  STATUS         VARCHAR2(1 BYTE)               NOT NULL,
  TEMPLATE_NAME  VARCHAR2(100 BYTE),
  REMARK         VARCHAR2(256 BYTE)
);

COMMENT ON COLUMN ROM_WF_TEMPLATE.TEMPLATE_ID IS 'ģ��ID';

COMMENT ON COLUMN ROM_WF_TEMPLATE.PRODUCT_ID IS '��ƷID';

COMMENT ON COLUMN ROM_WF_TEMPLATE.STATUS IS '״̬ҵ��ȡֵ���壺''0''  ����� ''1''  �����';

COMMENT ON COLUMN ROM_WF_TEMPLATE.TEMPLATE_NAME IS 'ģ������';

COMMENT ON COLUMN ROM_WF_TEMPLATE.REMARK IS '��ע';


CREATE UNIQUE INDEX IDK1_ROM_WF_TEMPLATE ON ROM_WF_TEMPLATE
(TEMPLATE_ID);


/*==============================================================*/
/* Table:  ROM_WF_TEMPLATE_FLOW �����ƶ���֧���� ����ģ�����̹�ϵ��*/  
/*==============================================================*/ 
 
DROP TABLE ROM_WF_TEMPLATE_FLOW CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_TEMPLATE_FLOW
(
  TEMPLATE_ID   VARCHAR2(30 BYTE)               NOT NULL,
  FLOW_ID_FROM  VARCHAR2(30 BYTE),
  FLOW_ID_TO    VARCHAR2(30 BYTE)
);

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW.TEMPLATE_ID IS 'ģ��ID';

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW.FLOW_ID_FROM IS 'ǰ������ID';

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW.FLOW_ID_TO IS '��������ID';

CREATE UNIQUE INDEX PK_ROM_WF_TEMPLATE_FLOW ON ROM_WF_TEMPLATE_FLOW
(TEMPLATE_ID,  FLOW_ID_FROM, FLOW_ID_TO);


/*==============================================================*/
/* Table:  ROM_WF_TEMPLATE_FLOW_GUI �����ƶ���֧���� ����ģ�����������*/  
/*==============================================================*/ 
 
DROP TABLE ROM_WF_TEMPLATE_FLOW_GUI CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_TEMPLATE_FLOW_GUI
(
  TEMPLATE_ID   VARCHAR2(30 BYTE)               NOT NULL,
  FLOW_ID       VARCHAR2(30 BYTE)               NOT NULL,
  GUI_X         VARCHAR2(30 BYTE),
  GUI_Y         VARCHAR2(30 BYTE)
);

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW_GUI.TEMPLATE_ID IS 'ģ��ID';

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW_GUI.FLOW_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW_GUI.GUI_X IS '���̽���X������';

COMMENT ON COLUMN ROM_WF_TEMPLATE_FLOW_GUI.GUI_Y IS '���̽���Y������';

CREATE UNIQUE INDEX PK_ROM_WF_TEMPLATE_FLOW_GUI ON ROM_WF_TEMPLATE_FLOW_GUI
(TEMPLATE_ID , FLOW_ID);

/*==============================================================*/
/* Table:  ROM_WF_INS �����ƶ���֧���� ʵ����Ϣ��            */
/*==============================================================*/
 
DROP TABLE ROM_WF_INS CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS
(
  INS_ID       VARCHAR2(30 BYTE)                NOT NULL,
  PRODUCT_ID   INTEGER                          NOT NULL,
  INS_NAME     VARCHAR2(100 BYTE),
  STATUS       VARCHAR2(1 BYTE)                 NOT NULL,
  ACCT_MON     VARCHAR2(6 BYTE),
  TEMPLATE_ID  VARCHAR2(30 BYTE),
  CREATE_TIME  VARCHAR2(14 BYTE),
  EFF_TIME     VARCHAR2(14 BYTE),
  EXP_TIME     VARCHAR2(14 BYTE),
  REMARK       VARCHAR2(256 BYTE)
); 
COMMENT ON COLUMN ROM_WF_INS.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN ROM_WF_INS.PRODUCT_ID IS '��ƷID';
COMMENT ON COLUMN ROM_WF_INS.INS_NAME IS 'ʵ��������';
COMMENT ON COLUMN ROM_WF_INS.STATUS IS '''0'' δʵ����  ''1'' ��ʵ����  ''2'' ���ͨ��  ''3'' ִ��δ��ʼ  ''4'' ִ�н�����';
COMMENT ON COLUMN ROM_WF_INS.ACCT_MON IS '����,6λ���·�����';
COMMENT ON COLUMN ROM_WF_INS.TEMPLATE_ID IS '�̳е�ģ��ID';
COMMENT ON COLUMN ROM_WF_INS.CREATE_TIME IS '����ʱ�䣨��ʽΪ��yyyymmddhhmiss��';
COMMENT ON COLUMN ROM_WF_INS.EFF_TIME IS '��Ч��ʼʱ�䣨������Ч���ڵ�ʵ�����ܱ�ִ�У�';
COMMENT ON COLUMN ROM_WF_INS.EXP_TIME IS '��Ч����ʱ��';
COMMENT ON COLUMN ROM_WF_INS.REMARK IS '��ע';


CREATE UNIQUE INDEX IDK1_ROM_WF_INS ON ROM_WF_INS
(INS_ID);



/*==============================================================*/
/* Table:  ROM_WF_INS_FLOW_REL �����ƶ���֧���� ����ʵ�����̱� */
/*==============================================================*/
DROP TABLE ROM_WF_INS_FLOW_REL CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_FLOW_REL
(
  INS_ID         VARCHAR2(30 BYTE)              NOT NULL,
  FLOW_ID        VARCHAR2(30 BYTE)              NOT NULL,
  INS_FLOW_TYPE  VARCHAR2(10 BYTE)              NOT NULL,
  INS_TIME       VARCHAR2(14 BYTE)              NOT NULL,
  INS_LOGIN_NO   VARCHAR2(30 BYTE)              NOT NULL
);

COMMENT ON COLUMN ROM_WF_INS_FLOW_REL.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_REL.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_REL.INS_FLOW_TYPE IS '�������� 0-ͨ��ģ���ʼ��,1-��ʼ��ʱ��������,2-����ʱ��������';
COMMENT ON COLUMN ROM_WF_INS_FLOW_REL.INS_TIME IS 'ʵ����ʱ��';
COMMENT ON COLUMN ROM_WF_INS_FLOW_REL.INS_LOGIN_NO IS 'ʵ�����˵Ĺ���';

CREATE UNIQUE INDEX IDK1_ROM_WF_INS_FLOW_REL ON ROM_WF_INS_FLOW_REL
(INS_ID, FLOW_ID);


/*==============================================================*/
/* Table:  ROM_WF_INS_FLOW �����ƶ���֧���� ����ʵ�����̹�ϵ�� */
/*==============================================================*/
 
DROP TABLE ROM_WF_INS_FLOW CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_FLOW
(
  INS_ID         VARCHAR2(30 BYTE)              NOT NULL,
  FLOW_ID_FROM   VARCHAR2(30 BYTE),
  FLOW_ID_TO     VARCHAR2(30 BYTE)
) ;

COMMENT ON COLUMN ROM_WF_INS_FLOW.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW.FLOW_ID_FROM IS 'ǰ������ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW.FLOW_ID_TO IS '��������ID';
 


CREATE UNIQUE INDEX IDK1_ROM_WF_INS_FLOW_ID ON ROM_WF_INS_FLOW
(INS_ID, FLOW_ID_FROM, FLOW_ID_TO );


/*==============================================================*/
/* Table:  ROM_WF_INS_FLOW_GUI �����ƶ���֧���� ����ʵ����������� */
/*==============================================================*/
DROP TABLE ROM_WF_INS_FLOW_GUI CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_FLOW_GUI
(
  INS_ID   VARCHAR2(30 BYTE),
  FLOW_ID  VARCHAR2(30 BYTE),
  GUI_X    VARCHAR2(30 BYTE),
  GUI_Y    VARCHAR2(30 BYTE)
);

COMMENT ON COLUMN ROM_WF_INS_FLOW_GUI.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_GUI.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_GUI.GUI_X IS '����X����';
COMMENT ON COLUMN ROM_WF_INS_FLOW_GUI.GUI_Y IS '����Y����';
 

CREATE UNIQUE INDEX IDK1_ROM_WF_INS_FLOW_GUI ON ROM_WF_INS_FLOW_GUI
(INS_ID, FLOW_ID);

 
/*==============================================================*/
/* Table:  ROM_WF_INS_FLOW_TASK �����ƶ���֧���󣺳���ʵ����������� */
/*==============================================================*/
  
 
DROP TABLE ROM_WF_INS_FLOW_TASK CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_FLOW_TASK
(
  INS_ID        VARCHAR2(30 BYTE)               NOT NULL,
  FLOW_ID       VARCHAR2(30 BYTE)               NOT NULL,
  TASK_ID_FROM  VARCHAR2(30 BYTE)               NOT NULL,
  TASK_ID_TO    VARCHAR2(30 BYTE)               NOT NULL
);

COMMENT ON COLUMN ROM_WF_INS_FLOW_TASK.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_TASK.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_TASK.TASK_ID_FROM IS 'ǰ������ID';
COMMENT ON COLUMN ROM_WF_INS_FLOW_TASK.TASK_ID_TO IS '��������ID';


CREATE UNIQUE INDEX IDK1_ROM_WF_INS_FLOW_TASK_ID ON ROM_WF_INS_FLOW_TASK
(INS_ID, FLOW_ID, TASK_ID_FROM, TASK_ID_TO);


/*==============================================================*/
/* Table:  ROM_WF_INS_TASK_GUI �����ƶ���֧����������������� */
/*==============================================================*/
  
 
DROP TABLE ROM_WF_INS_TASK_GUI CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_TASK_GUI
(
  INS_ID        VARCHAR2(30 BYTE)               NOT NULL,
  FLOW_ID       VARCHAR2(30 BYTE)               NOT NULL,
  TASK_ID       VARCHAR2(30 BYTE)               NOT NULL,
  GUI_X         VARCHAR2(30 BYTE)               NOT NULL,
  GUI_Y         VARCHAR2(30 BYTE)               NOT NULL
);

COMMENT ON COLUMN ROM_WF_INS_TASK_GUI.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN ROM_WF_INS_TASK_GUI.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_INS_TASK_GUI.FLOW_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_INS_TASK_GUI.GUI_X IS 'GUI����X������';
COMMENT ON COLUMN ROM_WF_INS_TASK_GUI.GUI_Y IS 'GUI����Y������';


CREATE UNIQUE INDEX IDK1_ROM_WF_INS_TASK_GUI ON ROM_WF_INS_TASK_GUI
(INS_ID,FLOW_ID,TASK_ID);


/*==============================================================*/
/* Table:  ROM_WF_INS_FLOW_RUN �����ƶ���֧���󣺳���ʵ������������Ϣ�� */
/*==============================================================*/
 
DROP TABLE  ROM_WF_INS_FLOW_RUN CASCADE CONSTRAINTS;

CREATE TABLE  ROM_WF_INS_FLOW_RUN
(
  INS_ID      VARCHAR2(30 BYTE)                 NOT NULL,
  FLOW_ID     VARCHAR2(30 BYTE)                 NOT NULL,
  START_TIME  VARCHAR2(14 BYTE)                 NOT NULL,
  END_TIME    VARCHAR2(14 BYTE)                 NOT NULL,
  OP_STATUS   VARCHAR2(1 BYTE)                  NOT NULL,
  OP_TIME     VARCHAR2(14 BYTE)                 NOT NULL
);

COMMENT ON COLUMN  ROM_WF_INS_FLOW_RUN.INS_ID IS '����ʵ��ID';
COMMENT ON COLUMN  ROM_WF_INS_FLOW_RUN.FLOW_ID IS '����ID';
COMMENT ON COLUMN  ROM_WF_INS_FLOW_RUN.START_TIME IS '��ʼʱ��';
COMMENT ON COLUMN  ROM_WF_INS_FLOW_RUN.END_TIME IS '����ʱ��';
COMMENT ON COLUMN  ROM_WF_INS_FLOW_RUN.OP_STATUS IS '���̲���״̬ 0-δ��ʼ,1-������,2-����,3-δ���������,4-���������';
COMMENT ON COLUMN  ROM_WF_INS_FLOW_RUN.OP_TIME IS '����ʱ��';


CREATE UNIQUE INDEX  IDK1_ROM_WF_INS_FLOW_RUN_ID ON ROM_WF_INS_FLOW_RUN
(INS_ID, FLOW_ID);


/*==============================================================*/
/* Table:  ROM_WF_INS_TASK_RUN �����ƶ���֧���� ����ʵ������������Ϣ�� */  
/*==============================================================*/
 
DROP TABLE ROM_WF_INS_TASK_RUN CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_TASK_RUN
(
  INS_ID       VARCHAR2(30 BYTE)                NOT NULL,
  FLOW_ID      VARCHAR2(30 BYTE)                NOT NULL,
  TASK_ID      VARCHAR2(30 BYTE)                NOT NULL,
  ENV_INS_ID  VARCHAR2(30 BYTE)                NOT NULL,
  START_TIME   VARCHAR2(14 BYTE),
  END_TIME     VARCHAR2(14 BYTE),
  OP_STATUS    VARCHAR2(1 BYTE)                 NOT NULL,
  PERCENT      NUMBER(3)                        NOT NULL,
  OP_TIME      VARCHAR2(14 BYTE)                NOT NULL
);

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.INS_ID IS '����ʵ��ID';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.FLOW_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.TASK_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.ENV_INS_ID IS '������ʶ';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.START_TIME IS '��ʼʱ��';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.END_TIME IS '����ʱ��';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.OP_STATUS IS '���̲���״̬ 0-δ��ʼ,1-������,2-����,3-δ���������,4-���������';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.PERCENT IS '���ȣ���ɰٷֱȣ���λ��������23��ʾ23%';

COMMENT ON COLUMN ROM_WF_INS_TASK_RUN.OP_TIME IS '����ʱ��';


CREATE UNIQUE INDEX IDK1_ROM_WF_INS_TASK_RUN ON ROM_WF_INS_TASK_RUN
(INS_ID, FLOW_ID, TASK_ID);


/*==============================================================*/
/* Table:  ROM_WF_INS_TASKOP_RUN �����ƶ���֧���󣺳���ʵ�����������Ϣ�� */
/*==============================================================*/
DROP TABLE ROM_WF_INS_TASKOP_RUN CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_TASKOP_RUN
(
  INS_ID       VARCHAR2(30 BYTE)                NOT NULL,
  FLOW_ID      VARCHAR2(30 BYTE)                NOT NULL,
  TASK_ID      VARCHAR2(30 BYTE)                NOT NULL,
  OP_TYPE      VARCHAR2(1 BYTE)                 NOT NULL,
  STATUS       VARCHAR2(1 BYTE)                 NOT NULL, 
  ENV_INS_ID 	VARCHAR(30) not null, -- defalut 'XXX', 
  OP_REMARK    VARCHAR2(100 BYTE),           
  OP_TIME      VARCHAR2(14 BYTE)                NOT NULL,
  OP_LOGIN_NO   VARCHAR2(30 BYTE)               NOT NULL
);

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.INS_ID IS '����ʵ��ID';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.FLOW_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.TASK_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.OP_TYPE IS '�������ͣ�0-��ʼ 1-ֹͣ 2-��ͣ3-ȡ�� 4-���� 5-����';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.STATUS IS  '״̬��0-δ������ʾǰ̨�����ݲ��뵽��̨,A-�������Ѿ����ղ�������,B-����ʼ,C-����ɹ�,D-����ʧ�� ';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.OP_REMARK IS '��ע';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.OP_TIME IS '����ʱ��';

COMMENT ON COLUMN ROM_WF_INS_TASKOP_RUN.OP_LOGIN_NO IS '��������';


CREATE UNIQUE INDEX IDK1_ROM_WF_INS_TASKOP_RUN ON ROM_WF_INS_TASKOP_RUN
(INS_ID,FLOW_ID,TASK_ID,OP_TYPE);



/*==============================================================*/
/* Table:  ROM_WF_INS_RUN_LOG �����ƶ���֧���󣺳���ʵ��������־�� */
/*==============================================================*/
DROP TABLE ROM_WF_INS_RUN_LOG CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_INS_RUN_LOG
(
  LOG_ID       INTEGER                          NOT NULL,
  INS_ID       VARCHAR2(30 BYTE)                NOT NULL,
  FLOW_ID      VARCHAR2(30 BYTE)                NOT NULL,
  TASK_ID      VARCHAR2(30 BYTE)                NOT NULL,
  LOG_TYPE     VARCHAR2(1 BYTE)                 NOT NULL,
  op_type VARCHAR2(1) not null,
  LOG_INFO     VARCHAR2(1024 BYTE),
  OP_TIME      VARCHAR2(25 BYTE)                NOT NULL,
  OP_LOGIN_NO  VARCHAR2(30 BYTE)                NOT NULL
);

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.LOG_ID IS '��ˮID��ʹ����������';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.INS_ID IS '����ʵ��ID';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.FLOW_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.TASK_ID IS '����ID';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.LOG_TYPE IS '0-������־��¼ ,1-�쳣��־��¼';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.LOG_INFO IS '��־��Ϣ';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.OP_TIME IS '����ʱ��';

COMMENT ON COLUMN ROM_WF_INS_RUN_LOG.OP_LOGIN_NO IS '��������';


CREATE UNIQUE INDEX IDK1_ROM_WF_INS_RUN_LOG ON ROM_WF_INS_RUN_LOG
(LOG_ID);
 
/*==============================================================*/
/* Table:  ROM_WF_HOST_INFO �����ƶ���֧���� ������Ϣ��    */
/*==============================================================*/

DROP TABLE ROM_WF_HOST_INFO CASCADE CONSTRAINTS;

CREATE TABLE ROM_WF_HOST_INFO
(
  ENV_INS_ID   VARCHAR2(30 BYTE),
  HOST_IP      VARCHAR2(30 BYTE),
  CPU          VARCHAR2(30 BYTE),
  MEM          VARCHAR2(30 BYTE),
  OP_REMARK    VARCHAR2(100 BYTE),
  OP_TIME      VARCHAR2(14 BYTE)
);

COMMENT ON COLUMN ROM_WF_HOST_INFO.ENV_INS_ID IS '����ID';
COMMENT ON COLUMN ROM_WF_HOST_INFO.HOST_IP IS '����IP';
COMMENT ON COLUMN ROM_WF_HOST_INFO.CPU IS 'CPU��Ϣ';
COMMENT ON COLUMN ROM_WF_HOST_INFO.MEM IS '�ڴ���Ϣ';
COMMENT ON COLUMN ROM_WF_HOST_INFO.OP_REMARK IS '������ע';
COMMENT ON COLUMN ROM_WF_HOST_INFO.OP_TIME IS '����ʱ��';


CREATE UNIQUE INDEX IDK1_ROM_WF_HOST_INFO ON ROM_WF_HOST_INFO
(ENV_INS_ID);



