/*======================================================================================*/
/* ά������ƽ̨oracle���ݿ⽨����䣬Ĭ�ϱ�ռ�(OBOSS_DATA)��������ռ�(OBOSS_IDX)�����*/
/*ʵ������޸ı��ű�.�ڽ������ݿ����֮ǰ����ɾ���ö��󣬽����ڳ�ʼ�����ݿ⣬һ����ʹ�� */
/*======================================================================================*/


/*==============================================================*/
/* SEQUENCE: SEQ_EXPAND             ��չ��Ϣ���õ�����                        */
/*==============================================================*/
DROP TABLE IF EXISTS rom_sequence;  
CREATE TABLE rom_sequence (  
name              VARCHAR(50) NOT NULL,  
current_value bigint NOT NULL,  
increment       bigint NOT NULL DEFAULT 1,  
PRIMARY KEY (name)  
) ENGINE=InnoDB;

insert into rom_sequence values('SEQ_EXPAND', 1, 1);
insert into rom_sequence values('SEQ_COMMON', 1, 1);
insert into rom_sequence values('SEQ_HOSTCHECK', 1, 1);

delimiter //
CREATE function nextval (seq_name VARCHAR(50))
returns bigint
MODIFIES SQL DATA 
BEGIN
   declare val bigint;
   UPDATE rom_sequence  SET  current_value = current_value + increment  
   WHERE name = seq_name;  
   if ROW_COUNT() < 1 then
	insert into rom_sequence values(seq_name, 1, 1);
	return 1;
   else
     select current_value into val from rom_sequence where name=seq_name;
     return val;
   end if;
END//
delimiter ;

/*==============================================================*/
/* Table: ROM_CRON_TASK_CONF      ��ʱ�������ñ�                */
/*==============================================================*/
-- drop table
drop table if exists ROM_CRON_TASK_CONF;
-- Create table
create table ROM_CRON_TASK_CONF
(
  task_id       INTEGER,
  pro_code      VARCHAR(8) not null comment '��Ʒ����',
  func_code     VARCHAR(8) not null comment '���ܴ���',
  scripts_id    INTEGER not null   comment '�ű�����',
  begin_time    DATETIME,
  end_time      DATETIME,
  interval_time INTEGER   comment '����ִ�м��',
  next_run_time DATE,
  task_state    CHAR(1)   comment '����ִ��״̬ 0��δִ�У�1������ִ�У�2��ִ�����',
  user_flag     CHAR(1),
  remark        VARCHAR(2048),
  primary key (PRO_CODE, FUNC_CODE, SCRIPTS_ID)
) ;

/*==============================================================*/
/* Table: ROM_CRON_TASK_DATA      ��ʱ����ִ�н����            */
/*==============================================================*/
drop table if exists ROM_CRON_TASK_DATA;
-- Create table
create table ROM_CRON_TASK_DATA
(
  task_id        INTEGER,
  create_date    DATE,
  item_name      VARCHAR(64) comment '���������',
  item_desc      VARCHAR(64) comment '���������',
  item_data      VARCHAR(8)  comment '���������',
  item_dimension VARCHAR(8)  comment '����λ',
  remark         VARCHAR(2048)
) ;

/*==============================================================*/
/* Table: ROM_SCRIPTS_CONFIG     Զ�̽ű����ñ�                 */
/*==============================================================*/
drop table ROM_SCRIPTS_CONFIG;
create table ROM_SCRIPTS_CONFIG
(
  scripts_id   INTEGER not null,
  host_id      INTEGER,
  scripts_dir  VARCHAR(256),
  scripts_name VARCHAR(512),
  scripts_type CHAR(1),
  req_url      VARCHAR(128),
  visit_user   VARCHAR(8),
  visit_pswd   VARCHAR(128),
  remarks      VARCHAR(2048),
  primary key (SCRIPTS_ID)
) ;


 
 
/*==============================================================*/
/* Table: ROM_LOGIN_ROLE_RELATION     ���Ž�ɫ��ϵ��            */
/*==============================================================*/
drop table if exists ROM_LOGIN_ROLE_RELATION;
-- Create table
create table ROM_LOGIN_ROLE_RELATION
(
  login_no VARCHAR(8) not null,
  role_id  INTEGER not null,
  remarks  VARCHAR(256),
  primary key (LOGIN_NO, ROLE_ID)
) ;

/*==============================================================*/
/* Table: ROM_OPERA_CODE     ��������� 
'��������,1������
2��ɾ��
3���޸�
4����Ȩ
5��������ֹͣ
6���ļ��ϴ�����'                        */
/*==============================================================*/
drop table if exists ROM_OPERA_CODE;
create table ROM_OPERA_CODE
(
  opera_code VARCHAR(2) not null,
  opera_name VARCHAR(64),
  remarks    VARCHAR(256),
  primary key (OPERA_CODE)
) ;


/*==============================================================*/
/* Table: ROM_PROVINCE_CODE      ʡ�ݴ����                     */
/*==============================================================*/
drop table if exists ROM_PROVINCE_CODE;
create table ROM_PROVINCE_CODE
(
  province_code VARCHAR(3),
  province_name VARCHAR(64),
  remarks       VARCHAR(256),
  primary key (province_code)
) ;


/*==============================================================*/
/* Table: ROM_PRO_CODE   ��Ʒ�����                             */
/*==============================================================*/
drop table if exists ROM_PRO_CODE;
create table ROM_PRO_CODE
(
  pro_code    VARCHAR(8) not null,
  pro_name    VARCHAR(64),
  pro_version VARCHAR(10),
  remarks     VARCHAR(256),
  primary key (PRO_CODE)
) ;

/*==============================================================*/
/* Table: ROM_SYS_FUNCTION    ϵͳ���ܱ�                        */
/*==============================================================*/
drop table ROM_SYS_FUNCTION;
create table ROM_SYS_FUNCTION
(
  function_code  VARCHAR(64) not null,
  function_name  VARCHAR(64),
  action_name    VARCHAR(1024),
  node_type      CHAR(1),
  parent_code    VARCHAR(8),
  operation_code VARCHAR(32),
  remarks        VARCHAR(256),
  note_seq       INTEGER default 0,
  open_type char(1),
  primary key (FUNCTION_CODE)
) ;

/*==============================================================*/
/* Table: ROM_SYS_LOGIN    ϵͳ���ű�                           */
/*==============================================================*/
drop table ROM_SYS_LOGIN;
create table ROM_SYS_LOGIN
(
  login_no    VARCHAR(8) not null,
  login_name  VARCHAR(64),
  login_pwd   VARCHAR(128),
  use_flg     CHAR(1),
  expire_time DATE,
  login_flg   CHAR(1),
  phone_no    VARCHAR(15),
  login_ip    VARCHAR(128),
  remark      VARCHAR(64),
  province_code VARCHAR(4),
  primary key (LOGIN_NO)
) ;


/*==============================================================*/
/* Table: ROM_SYS_OP_LOG   ������־��                           */
/*==============================================================*/
drop table ROM_SYS_OP_LOG;
create table ROM_SYS_OP_LOG
(
  op_date       VARCHAR(8),
  op_staff      VARCHAR(64),
  staff_name    VARCHAR(64),
  pro_code      VARCHAR(8),
  function_code VARCHAR(8),
  op_time       DATE,
  op_content    VARCHAR(1024),
  remarks       VARCHAR(256)
) ;
create index PK_OP_DATE_OP_LOG on ROM_SYS_OP_LOG (OP_DATE);

/*==============================================================*/
/* Table: ROM_SYS_POPEDOM     Ȩ��ע���                        */
/*==============================================================*/
drop table if exists ROM_SYS_POPEDOM;
create table ROM_SYS_POPEDOM
(
  function_code  VARCHAR(8) not null,
  action_name    VARCHAR(256) not null comment '���ܵ�url',
  operation_code VARCHAR(32)
) ;
create index pk_ROM_SYS_POPEDOM on ROM_SYS_POPEDOM(function_code, action_name);
create index IDX_ROM_SYS_POPEDOM on ROM_SYS_POPEDOM (FUNCTION_CODE);

/*==============================================================*/
/* Table: ROM_SYS_PRO_FUNCTION    ��Ʒ���ܹ�ϵ��                */
/*==============================================================*/
drop table ROM_SYS_PRO_FUNCTION;
create table ROM_SYS_PRO_FUNCTION
(
  pro_code      VARCHAR(8) not null,
  function_code VARCHAR(8) not null,
  remarks       VARCHAR(256),
  primary key (PRO_CODE, FUNCTION_CODE)
) ;

/*==============================================================*/
/* Table: ROM_SYS_ROLE                    ��ɫ��Ϣ��            */
/*==============================================================*/  
drop table ROM_SYS_ROLE;
create table ROM_SYS_ROLE
(
  role_id       INTEGER not null,
  role_name     VARCHAR(64),
  role_type     CHAR(1),
  role_state    CHAR(1),
  pro_code      VARCHAR(8),
  province_code VARCHAR(3),
  tell_type     CHAR(1),
  remarks       VARCHAR(256),
  primary key (ROLE_ID)
) ;


/*==============================================================*/
/* Table: ROM_SYS_ROLE_FUNCTION       ��ɫ���ܹ�ϵ��            */
/*==============================================================*/
drop table ROM_SYS_ROLE_FUNCTION;
create table ROM_SYS_ROLE_FUNCTION
(
  role_id        INTEGER not null,
  function_code  VARCHAR(8) not null,
  operation_code VARCHAR(32) not null,
  primary key (ROLE_ID, FUNCTION_CODE, OPERATION_CODE)
) ;
create index IDX_ROM_SYS_ROLE_FUNCTION on ROM_SYS_ROLE_FUNCTION (ROLE_ID);

/*==============================================================*/
/* Table: ROM_TELLCORP_CODE  ��Ӫ�̴����                       */
/*==============================================================*/
drop table ROM_TELLCORP_CODE;
create table ROM_TELLCORP_CODE
(
  tellcorp_code VARCHAR(1),
  tellcorp_name VARCHAR(64),
  remarks       VARCHAR(256),
  primary key (tellcorp_code)
) ;


ALTER TABLE ROM_LOGIN_ROLE_RELATION CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_OPERA_CODE CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_PROVINCE_CODE CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_PRO_CODE CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_FUNCTION CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_LOGIN CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_OP_LOG CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_POPEDOM CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_PRO_FUNCTION CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_ROLE CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_SYS_ROLE_FUNCTION CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE ROM_TELLCORP_CODE CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


/*
** deleted:
Table: ONEBOSS_BUSIGRO_RELATION    һ��BOSSҵ��������ϵ��
Table: ONEBOSS_BUSI_GROUPS               һ��BOSSҵ������ 
Table: ONEBOSS_BUSI_NOTES               һ��BOSS���׽ڵ�� 
Table: ROM_CRON_DATA_REPORT            �ص�ҵ���ر���
Table: ROM_FTPSITES_INFO      FTPվ���
Table: ROM_FTP_SCRIPT_RELATION      FTPԶ�̽ű���ϵ��
Table: ROM_HOST_INFO      Զ�����������
Table: ROM_PRO_FTPSITE_RELATION      ��ƷFTPվ���ϵ��
Table: ROM_PRO_HOST_RELATION  ��ƷԶ��������ϵ��
Table: ROM_USER_INFO      Զ���û������
Table: EAI_APP_RULES       APPID�����
Table: EAI_BUS_ADAPT_RELATION       ��������������ϵ��
Table: EAI_CONF_INST_RELATION       EAI����ʵ����ϵ��
Table: EAI_NODES_CONFINFO       EAI�ڵ�������Ϣ��
Table: EAI_NODES_INSTANCE       EAI�ڵ�ʵ����
Table: ROM_DAYMONITOR_CONF       �ճ�Ѳ����Ŀ�����
Table: ROM_DAYMONITOR_DATA       �ճ�Ѳ����Ŀʵ����
Table: ROM_BUSICHECK_DATA       ���̼��ʵ����
Table: ROM_NETCELL_INFO       ��Ԫ��Ϣ��
Table: ROM_EXPAND_CODE       ��չ���Դ����
Table: ROM_EXPAND_INFO       ��չ����ʵ����
Table:  ROM_BUSICHECK_CONF      ҵ�������ñ�
Table:  CMSWORKORDERSAVERULE      ��Ԫ����Ԫ��־��Ķ�Ӧ��ϵ���ñ�   
Table:  ROM_OBSMONITOR_CFG      ɽ��ҵ֧������ʾ�쳣����Ƶ�εĽ��׺˲��¼���ؼ�¼���ñ��Ǽ�ز��Ե����ñ�
Table:  WOBSPANPROVOPRALL      ɽ��ҵ֧������ʾ�쳣����Ƶ�εĽ��׺˲��¼���ؼ�¼���ñ���Ҫ��ѯ��������Դ�� 
ROM_COPYTABLE_HOST
TABLE ROM_COPYTABLE_ALL IS 'ȫ��ͬ�����ϵ���ñ�';
TABLE ROM_COPYTABLE_ADD IS 'ȫ������ͬ����ѯ���ñ�';
TABLE ROM_BUSICHECK_DATA IS '���̼�ر�';
Table:  ROM_DATASCRIPT_CONFIG ɽ��ҵ֧���� �ű���ȡ�������ñ�
Table:  ROM_DATASQL_CONFIG ɽ��ҵ֧����SQL��ȡ�������ñ�
Table:  ROM_DATATITLE_CONFIG ɽ��ҵ֧�������ݿ��ʶ���ñ�
Table:  ROM_WF_PRODUCT �����ƶ���֧���� ��Ʒ��Ϣ��
Table:  ROM_WF_TASK �����ƶ���֧���� ������Ϣ��
Table:  ROM_WF_TASK �����ƶ���֧���� ������Ϣ��
Table:  ROM_WF_TASK �����ƶ���֧����             ���������
Table:  ROM_WF_FLOW �����ƶ���֧���� ���̱�
Table:  ROM_WF_FLOW_TASK �����ƶ���֧���� ���������ϵ��
Table:  ROM_WF_FLOW_TASK_GUI �����ƶ���֧���� �������������
Table:  ROM_WF_TEMPLATE �����ƶ���֧���� ģ����Ϣ��
Table:  ROM_WF_TEMPLATE_FLOW �����ƶ���֧���� ����ģ�����̹�ϵ��
Table:  ROM_WF_TEMPLATE_FLOW_GUI �����ƶ���֧���� ����ģ�����������
Table:  ROM_WF_INS �����ƶ���֧���� ʵ����Ϣ��
Table:  ROM_WF_INS_FLOW_REL �����ƶ���֧���� ����ʵ�����̱�
Table:  ROM_WF_INS_FLOW �����ƶ���֧���� ����ʵ�����̹�ϵ��
Table:  ROM_WF_INS_FLOW_GUI �����ƶ���֧���� ����ʵ�����������
Table:  ROM_WF_INS_FLOW_TASK �����ƶ���֧���󣺳���ʵ�����������
Table:  ROM_WF_INS_TASK_GUI �����ƶ���֧�����������������
Table:  ROM_WF_INS_FLOW_RUN �����ƶ���֧���󣺳���ʵ������������Ϣ��
Table:  ROM_WF_INS_TASK_RUN �����ƶ���֧���� ����ʵ������������Ϣ��
Table:  ROM_WF_INS_TASKOP_RUN �����ƶ���֧���󣺳���ʵ�����������Ϣ��
Table:  ROM_WF_INS_RUN_LOG �����ƶ���֧���󣺳���ʵ��������־��
Table:  ROM_WF_HOST_INFO �����ƶ���֧���� ������Ϣ��

*/

drop table if exists t_dbconns;
create table t_dbconns(
  label varchar(60) primary key, 
  host varchar(64) not null,
  user varchar(32) not null, 
  pswd varchar(64) not null,
  db varchar(64),
  dbtype varchar(20) not null,
  remarks varchar(128)
);

create table t_dbtypes(
  dbtype varchar(20) primary key
);
insert into t_dbtypes values('mysql');
insert into t_dbtypes values('oracle');
insert into t_dbtypes values('sybase');
insert into t_dbtypes values('mssql');





-- �����������
drop table if exists t_paramtype;
create table t_paramtype(
   typeid int primary key,
   name varchar(60) comment '����',
   datatype varchar(10) comment '��������  String Long Float Date',
   remarks varchar(128) null  comment '��ע'
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE t_paramtype CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- �������ݱ� �����α������ĵݹ��ϵ
drop table if exists t_paramdata;
create table t_paramdata(
   paramid int comment 'ʹ�����в����� ���ظ�',
   typeid int  comment 'referenced by t_paramtype.typeid',
   paramValue varchar(128) comment '����ֵ����������룬 ���ű���',
   paramName  varchar(60) comment '�������ƣ� ���������ƣ� �������Ƶ�',
   parentid int comment '�ϼ�id�� 0Ϊroot',
   remarks varchar(60) comment '����ֵ',
   primary key (paramid, typeid)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create index idx1_paramdata on t_paramdata(parentid);

-- ����ֵ���¼�û�(ROM_SYS_LOGIN)��ϵ��
drop table if exists t_paramuser_rel;
create table t_paramuser_rel
(
	typeid int comment '��������id',
	paramid int comment '����id����Ϊ�ڲ�������paramid��Ψһ�ģ� ����û�м��� typeid',
	login_no varchar(8),
	primary key (paramid, login_no)
);

alter table t_paramuser_rel add typeid int comment '��������id' default 0;

-- ����ֵ���¼�û�(ROM_SYS_LOGIN) �� ����t_doc����ϵ�� �� �����t_paramuser_rel��Զ��Ե��������ã� ���������ʱ�� �ɶ�Ĭ�ϵĹ�ϵ������
drop table if exists t_paramuser_rel_ex;
create table t_paramuser_rel_ex
(
	docid  int  comment '����id',
	typeid int comment '��������id',
	paramid int comment '����id',
	login_no varchar(8) comment '��¼����',
	ex_flag char(1) comment '���ⷽʽ��1Ϊ��� 0Ϊ�ų�',
	primary key (paramid, login_no)
) comment '����ֵ���¼�û�(ROM_SYS_LOGIN) �� ����t_doc����ϵ�� �� �����t_paramuser_rel��Զ��Ե��������ã� ���������ʱ�� �ɶ�Ĭ�ϵĹ�ϵ������';
create index idx1_t_paramuser_rel_ex on t_paramuser_rel_ex(docid, typeid);

/*��������, ���沿�����ò���*/
drop table if exists t_parameters;
create table t_parameters(
	pname varchar(64) primary key,
	pvalue varchar(128) not null,
	remarks varchar(64)
)DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- bo�������ĵ�ַ �Լ��û����������ã� �� sapbo.Ϊǰ׺��key, value�ĸ�ʽΪ��  server:port;user;password

insert into t_parameters values('sap.user', 'test1', 'sap��¼�û���');
insert into t_parameters values('sap.password', '1qaz2wsx', 'sap��¼����');
insert into t_parameters values('sap.cmsport', 'redtree1:6400', 'sap��cms��ַ');

insert into t_parameters values('doc.basefunc', 'RPTROOT', '������صĹ��������ڵ�');
insert into t_parameters values('doc.defaultrole', 'report1', '���Ӳ�Ʒ��ʱʹ��Ĭ�ϵ��û���ɫ');
insert into t_parameters values('doc.defaultaction', '../rptdoc_main.do', '�����ĵ��鿴��control���ƣ����еı����������');
insert into t_parameters values('doc.popedoms', 'rptdoc_main.do,getparamtree.do', '���������Ҫ���õ�control���ƣ������,�ָ�');


/*SAP open document �������ñ�
�����չʾΪ������ ��һ����飬 �ݲ�֧�ֶ༶����
*/
drop table if exists t_doc;
create table t_doc(
	docid int primary key,
	group_func  varchar(64) comment '�����������ܷ���Ĺ��ܴ���',
	function_code  VARCHAR(64) comment '��Ӧ�������Ĵ���',
	docname varchar(60) comment '��������',
	baseurl varchar(256) comment 'url of open document, include document id',
	
	boid int null comment '��Ӧ t_boserver �е�boid',
	opendocid varchar(64) null comment 'sap�ĵ�id',
	remarks varchar(60) comment '��ע'
)DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create index idx1_t_doc on t_doc(function_code);


/*��������� ��Ҫ�ڱ���չʾ��url��ƴ��Ĳ���*/
drop table if exists t_docparam;
create table t_docparam(
	docid int,
	param varchar(40)          comment 'ƴ��url��Ĳ�������',
	default_value varchar(60)  comment '����Ĭ��ֵ',
	typeid int comment 'referenced by t_paramtype.typeid, �������ͣ� ���Ϊ0����Ϊ�ֹ�����',
	allowchange int DEFAULT '1' comment '�Ƿ������޸Ĳ���ֵ��Ϊ0�Ļ�����鿴����ʱ����ʾ�ò���',
	filterflag char    comment '�Ƿ���ݵ�¼�û����˿�ѡ����ֵ 1-yes�� 0-no',
	remarks varchar(60)   comment '��ע'
)DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
create index idx_docparam1 on t_docparam(docid);




/*==============================================================*/
/* Table: etl_host_msg      ����ԴHost���ñ�                    */
/*==============================================================*/
-- drop table
drop table if exists etl_host_msg;
-- Create table
create table etl_host_msg
(
order_id  int primary key comment '�������',
serv_ip	  varchar(20) comment '���ݿ�IP',
serv_name varchar(20) comment '������',
serv_user varchar(20) comment '�����û���',
serv_pwd  varchar(20) comment '��������',
db_type 	varchar(10) comment 'Դ���ݿ�����',
db_name	  varchar(20) comment '���ݿ���',
db_port	  int comment '���ݿ�˿�',
db_user 	varchar(20) comment '���ݿ��û���',
db_pwd 	  varchar(20) comment '���ݿ�����',
data_dir  varchar(50) comment '���������ļ�·��'
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/*==============================================================*/
/* Table: etl_job_msg      ��ҵ���ñ�                   */
/*==============================================================*/
-- drop table
drop table if exists etl_job_msg;
-- Create table
create table etl_job_msg
(
job_id	      int primary key comment '��ҵID����1001��ʼ���',
job_name	    varchar(20) comment '��ҵ����',
job_mode      char(1) comment '��ҵ���ͣ�����ҵ��D������ҵ��M��ʵʱ��ҵ��S',
job_run_freq	int comment '����Ƶ��  0�������ƣ��������ִ���������д���������Ƕ�ʱ��һ������Ϊ1��ʵʱ����Ϊ0',
job_run_mode	char(1) comment '��ʱ��ʽ  1:��ʱ��2��ʵʱ   Ŀǰ����',
job_enable	  char(1) comment '�ɷ����б�־ 0���������У�1��������',
job_type	    char(1) comment '��������  0:ȫ����1������',
job_run_time	varchar(14) comment '������ҵ��ʼ����ʱ�䣬���������ҵ����ʽΪ��103000,������10��30������ҵ��ʽΪ01103000����ÿ��1������10:30�������ʵʱ����Ϊ���ʱ�䣬����Ϊ��λ',
h_order_id    int comment '��ҵ��Ӧ�����ݿ�������������',
s_tab         varchar(20) comment '����������Դ��',
d_tab         varchar(20) comment '�����Ŀ�ı�',
etl_sql       varchar(2000) comment '�������'
)DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/*==============================================================*/
/* Table: etl_job_log      ��ҵ��־��                   */
/*==============================================================*/
-- drop table
drop table if exists etl_job_log;
-- Create table
create table etl_job_log
(
job_seq      varchar(20) primary key comment '��ҵִ������',
op_date      varchar(8) comment '��ҵִ������yyyymmdd',
job_id       int comment '��ҵID',
start_time   varchar(14) comment '��ҵ��ʼʱ��',
end_time     varchar(14) comment '��ҵ����ʱ��',
run_status   char(1) comment '��ҵ����״̬��0���ȴ����У�1����ʼ������2�������ɹ���3������ʧ�ܣ�4����ʼ���룬5������ɹ���6������ʧ��',
run_msg      varchar(2000) comment '��ҵ�������˵�� '         
)DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- etl���ò���
insert into rom_sys_popedom values('2204', 'taskresult.do', '1');
insert into rom_sys_popedom values('2204', 'taskresultList.do', '1');
insert into rom_sys_popedom values('2202', 'gotoAddTask.do', '1');
insert into rom_sys_popedom values('2202', 'addTask.do', '1');
insert into rom_sys_popedom values('2202', 'gotoUpdateTask.do', '1');
insert into rom_sys_popedom values('2202', 'updateTask.do', '1');
insert into rom_sys_popedom values('2202', 'delTask.do', '1');
insert into rom_sys_popedom values('2205', 'gotoUpdateDBConn.do', '1');





---------------------------------
----  update  2015-1-10
alter table t_doc add	boid int null comment '��Ӧ t_boserver �е�boid';
alter table t_doc add	opendocid varchar(64) null comment 'sap�ĵ�id';
/*
��������ģ��
RPTCFG �£� BOCONF (BO����������)
INSERT INTO `rom_sys_function` VALUES ('BOCONF', 'BO����������', '../boservermain.do', '0', 'RPTCFG', '1;2;3;', NULL, NULL, '1');
Ȩ�����ã�
addBOServer.do 	BOCONF 	1	
boserverList.do 	BOCONF 	���� 	
boservermain.do 	BOCONF 	���� 	
delBOServer.do 	BOCONF 	���� 	
gotoAddBOServer.do 	BOCONF 	���� 	
gotoUpdateBOServer.do 	BOCONF 	���� 	
updateBOServer.do 	BOCONF 	����
*/

/*
  BO���������ò����� ����������֤�������˿�
*/
create table t_boserver(
  boid int primary key,
  boname varchar(64) comment '����',
  authaddr varchar(64) comment '������֤��ַ, �磺 redtree1:6400',
  username varchar(64) comment '�û���',
  password varchar(64) comment '����',
  opendocaddr varchar(64) comment '�ĵ���ַ�˿�, �� redtree1:8080',
  remarks varchar(60)  comment '��ע'
)DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

delete from t_paramtype where typeid=0;

truncate table t_docparam;
ALTER TABLE `t_docparam`
ADD COLUMN `paramid`  int(10) NOT NULL FIRST ,
ADD COLUMN `pnametype`  varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'ƴ�ڲ�������ǰ���ֵ��lsS����ֵ,��lsM����ֵ ��lsR����Χ' AFTER `docid`,
ADD PRIMARY KEY (`paramid`);