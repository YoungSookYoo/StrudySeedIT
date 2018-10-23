/*
--���� �����
create user SEEDIT identified by 1234;
grant connect,resource to SEEDIT;

--���� ����
drop table bbs_flag;
drop table bbs;
DROP TABLE MEMBER;
DROP SEQUENCE BBS_SEQ;
drop sequence member_seq;
*/

CREATE TABLE MEMBER (
    MEMBER_IDX NUMBER PRIMARY KEY,
    ID VARCHAR2(50) NOT NULL ,
    MEMBER_PW VARCHAR2(50) NOT NULL,
    MEMBER_NAME VARCHAR2(50) NOT NULL,
    MEMBER_EMAIL VARCHAR2(50) NOT NULL,
    MEMBER_REGIDATE DATE DEFAULT SYSDATE    
);

CREATE TABLE BBS (
    ID VARCHAR2(50) NOT NULL,  /* �ۼ��� */
	BBS_NO NUMBER PRIMARY KEY, /* �Խ��� �Ϸù�ȣ */
	BBS_TITLE VARCHAR2(50) NOT NULL, /* ���� */
	BBS_CONTENTS VARCHAR2(3000) NOT NULL, /* ���� */
	BBS_REGIDATE DATE DEFAULT SYSDATE, /* �ۼ��� */
	BBS_HIT NUMBER NOT NULL, /* ��ȸ�� */
	BBS_FLAG_CODE NUMBER NOT NULL  /* ��Ƽ�Խ��� */
);

CREATE TABLE BBS_FLAG (
    BBS_FALG_TYPE VARCHAR2(100) PRIMARY KEY, /* ��Ƽ�Խ������� */
	BBS_FLAG_CODE NUMBER NOT NULL /* ��Ƽ�Խ��� */
);


create SEQUENCE bbs_seq
increment by 1
start with 1
nocache
nocycle;

CREATE SEQUENCE MEMBER_SEQ
INCREMENT BY 1
START WITH 1
NOCACHE
NOCYCLE;

INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'magnae', '1111', '������', 'dawun29@gmail.com',sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'yuri', '1111', '������', 'yuri0903@gmail.com' ,sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'kim', '1111', '��·�', 'kim5303123@gmail.com',sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'sook', '1111', '������', 'vaims.yoo@gmail.com',sysdate);
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, 'joo', '1111', '�̿���', 'wowodk099@gmail.com' ,sysdate);


insert into bbs values('magnae',bbs_seq.nextval,'����`s','���� �׽�Ʈ�Դϴ�1'  ,sysdate ,3,10);
insert into bbs values('magnae',bbs_seq.nextval,'����`s2','���� �׽�Ʈ�Դϴ�2' ,sysdate,30,10);
insert into bbs values('yuri',bbs_seq.nextval,'����`s','���� �׽�Ʈ�Դϴ�1'    ,sysdate  ,3,20);
insert into bbs values('yuri',bbs_seq.nextval,'����`s2','���� �׽�Ʈ�Դϴ�2'   ,sysdate ,30,20);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s','�·� �׽�Ʈ�Դϴ�1'     ,sysdate  ,3,30);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s2','�·� �׽�Ʈ�Դϴ�2'    ,sysdate ,30,30);
insert into bbs values('sook',bbs_seq.nextval,'����`s','���� �׽�Ʈ�Դϴ�1'    ,sysdate ,3,40);
insert into bbs values('sook',bbs_seq.nextval,'����`s2','���� �׽�Ʈ�Դϴ�2'   ,sysdate,30,40);
insert into bbs values('joo',bbs_seq.nextval,'����`s','���� �׽�Ʈ�Դϴ�1'     ,sysdate ,3,50);
insert into bbs values('joo',bbs_seq.nextval,'����`s2','���� �׽�Ʈ�Դϴ�2'    ,sysdate,30,50);
insert into bbs values('joo',bbs_seq.nextval,'����`s3','���� �׽�Ʈ�Դϴ�3'    ,sysdate,32,50);
insert into bbs values('joo',bbs_seq.nextval,'����`s4','���� �׽�Ʈ�Դϴ�4'    ,sysdate,33,50);
insert into bbs values('sook',bbs_seq.nextval,'����`s3','���� �׽�Ʈ�Դϴ�3'  ,sysdate,32,40);
insert into bbs values('sook',bbs_seq.nextval,'����`s4','���� �׽�Ʈ�Դϴ�4'  ,sysdate,33,40);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s3','�·� �׽�Ʈ�Դϴ�3'    ,sysdate,32,30);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s4','�·� �׽�Ʈ�Դϴ�4'    ,sysdate,33,30);
insert into bbs values('yuri',bbs_seq.nextval,'����`s3','���� �׽�Ʈ�Դϴ�3'  ,sysdate,32,20);
insert into bbs values('yuri',bbs_seq.nextval,'����`s4','���� �׽�Ʈ�Դϴ�4'   ,sysdate,33,20);
insert into bbs values('magnae',bbs_seq.nextval,'����`s3','���� �׽�Ʈ�Դϴ�3',sysdate ,32,10);
insert into bbs values('magnae',bbs_seq.nextval,'����`s4','���� �׽�Ʈ�Դϴ�4',sysdate ,33,10);
insert into bbs values('magnae',bbs_seq.nextval,'����`s5','���� �׽�Ʈ�Դϴ�5',sysdate ,34,10);
insert into bbs values('yuri',bbs_seq.nextval,'����`s5','���� �׽�Ʈ�Դϴ�5',sysdate ,34,20);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s5','�·� �׽�Ʈ�Դϴ�5'  ,sysdate ,34,30);
insert into bbs values('sook',bbs_seq.nextval,'����`s5','���� �׽�Ʈ�Դϴ�5' ,sysdate,34,40);
insert into bbs values('joo',bbs_seq.nextval,'����`s5','���� �׽�Ʈ�Դϴ�5' ,sysdate,34,50);
insert into bbs values('magnae',bbs_seq.nextval,'����`s6','���� �׽�Ʈ�Դϴ�6',sysdate ,35,10);
insert into bbs values('magnae',bbs_seq.nextval,'����`s7','���� �׽�Ʈ�Դϴ�7',sysdate ,38,10);
insert into bbs values('yuri',bbs_seq.nextval,'����`s6','���� �׽�Ʈ�Դϴ�6',sysdate ,35,20);
insert into bbs values('yuri',bbs_seq.nextval,'����`s7','���� �׽�Ʈ�Դϴ�7',sysdate ,38,20);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s6','�·� �׽�Ʈ�Դϴ�6',sysdate ,35,30);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s7','�·� �׽�Ʈ�Դϴ�7',sysdate ,38,30);
insert into bbs values('sook',bbs_seq.nextval,'����`s6','���� �׽�Ʈ�Դϴ�6',sysdate ,35,40);
insert into bbs values('sook',bbs_seq.nextval,'����`s7','���� �׽�Ʈ�Դϴ�7',sysdate ,38,40);
insert into bbs values('joo',bbs_seq.nextval,'����`s6','���� �׽�Ʈ�Դϴ�6',sysdate ,35,50);
insert into bbs values('joo',bbs_seq.nextval,'����`s7','���� �׽�Ʈ�Դϴ�7',sysdate ,38,50);
insert into bbs values('magnae',bbs_seq.nextval,'����`s8','���� �׽�Ʈ�Դϴ�8',sysdate ,39,10);
insert into bbs values('magnae',bbs_seq.nextval,'����`s9','���� �׽�Ʈ�Դϴ�9',sysdate ,20,10);
insert into bbs values('magnae',bbs_seq.nextval,'����`s10','���� �׽�Ʈ�Դϴ�10',sysdate ,13,10);
insert into bbs values('yuri',bbs_seq.nextval,'����`s8','���� �׽�Ʈ�Դϴ�8',sysdate ,39,20);
insert into bbs values('yuri',bbs_seq.nextval,'����`s9','���� �׽�Ʈ�Դϴ�9',sysdate ,20,20);
insert into bbs values('yuri',bbs_seq.nextval,'����`s10','���� �׽�Ʈ�Դϴ�10',sysdate ,13,20);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s8','�·� �׽�Ʈ�Դϴ�8',sysdate ,39,30);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s9','�·� �׽�Ʈ�Դϴ�9',sysdate ,20,30);
insert into bbs values('kim',bbs_seq.nextval,'�·�`s10','�·� �׽�Ʈ�Դϴ�10',sysdate ,13,30);
insert into bbs values('sook',bbs_seq.nextval,'����`s8','���� �׽�Ʈ�Դϴ�8',sysdate ,39,40);
insert into bbs values('sook',bbs_seq.nextval,'����`s9','���� �׽�Ʈ�Դϴ�9',sysdate ,20,40);
insert into bbs values('sook',bbs_seq.nextval,'����`s10','���� �׽�Ʈ�Դϴ�10',sysdate ,13,40);
insert into bbs values('joo',bbs_seq.nextval,'����`s8','���� �׽�Ʈ�Դϴ�8',sysdate ,39,50);
insert into bbs values('joo',bbs_seq.nextval,'����`s9','���� �׽�Ʈ�Դϴ�9',sysdate ,20,50);
insert into bbs values('joo',bbs_seq.nextval,'����`s10','���� �׽�Ʈ�Դϴ�10',sysdate ,13,50);



insert into bbs_flag values('�����Խ���',10);
insert into bbs_flag values('�����Խ���',20);
insert into bbs_flag values('�·�Խ���',30);
insert into bbs_flag values('�����Խ���',40);
insert into bbs_flag values('���ְԽ���',50);


