       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       
       ENVIRONMENT DIVISION.
          INPUT-OUTPUT SECTION.
          FILE-CONTROL.
          SELECT FILEN ASSIGN TO INPUT.
             ORGANIZATION IS SEQUENTIAL.
             ACCESS IS SEQUENTIAL.
       
       DATA DIVISION.
          FILE SECTION.
          FD FILEN
          01 NAME PIC A(25).
          
          WORKING-STORAGE SECTION.
          01 WS-STUDENT PIC A(30).
          01 WS-ID PIC 9(5).
       
          LOCAL-STORAGE SECTION.
          01 LS-CLASS PIC 9(3).
          
          LINKAGE SECTION.
          01 LS-ID PIC 9(5).
          
       PROCEDURE DIVISION.
       
       0000-INITIALIZE-PARA.
          EXEC SQL
          DECLARE DSN8C10.DEPT TABLE
          (DEPTNO    CHAR(3)           NOT NULL,
           DEPTNAME  VARCHAR(36)       NOT NULL,
           MGRNO     CHAR(6)                   ,
           ADMRDEPT  CHAR(3)           NOT NULL,
           LOCATION  CHAR(16)                  ) 
          END-EXEC. 
        
       DISPLAY 'Executing COBOL program using JCL'.
       STOP RUN.
