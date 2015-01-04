
# WebLogic Job Scheduler Data Store DDL for Oracle
# Copyright (c) 2005 by BEA, Inc., All Rights Reserved

DROP TABLE WEBLOGIC_TIMERS;

CREATE TABLE WEBLOGIC_TIMERS (
  TIMER_ID VARCHAR2(100) NOT NULL,
  LISTENER BLOB NOT NULL,
  START_TIME NUMBER NOT NULL,
  INTERVAL NUMBER NOT NULL,
  TIMER_MANAGER_NAME VARCHAR2(100) NOT NULL,
  DOMAIN_NAME VARCHAR2(100) NOT NULL,
  CLUSTER_NAME VARCHAR2(100) NOT NULL,
  PRIMARY KEY (TIMER_ID, CLUSTER_NAME, DOMAIN_NAME)
); 
