HR@orcl>ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE EmpPack AS
  2  TYPE EmpInfoTyp IS REF CURSOR;
  3  PROCEDURE EmpInfoRpt (emp_cv IN OUT EmpInfoTyp);
  4  END EmpPack;
  5  / 
  6  Package created.
  7  CREATE OR REPLACE PACKAGE BODY EmpPack AS PROCEDURE
  8  EmpInfoRpt (emp_cv IN OUT EmpInfoTyp) AS
  9  BEGIN
 10  OPEN emp_cv FOR SELECT EMPLOYEE_ID, SALARY
 11  FROM EMP_DETAILS_VIEW
 12  WHERE JOB_ID='SA_MAN';
 13  END;
 14* END;
 15  /

Warning: Package created with compilation errors.

HR@orcl>ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE EmpPack AS
  2  TYPE EmpInfoTyp IS REF CURSOR;
  3  PROCEDURE EmpInfoRpt (emp_cv IN OUT EmpInfoTyp);
  4  END EmpPack;
  5  /
  6  CREATE OR REPLACE PACKAGE BODY EmpPack AS PROCEDURE
  7  EmpInfoRpt (emp_cv IN OUT EmpInfoTyp) AS
  8  BEGIN
  9  OPEN emp_cv FOR SELECT EMPLOYEE_ID, SALARY
 10  FROM EMP_DETAILS_VIEW
 11  WHERE JOB_ID='SA_MAN';
 12  END;
 13* END;
 14  /

Warning: Package created with compilation errors.

HR@orcl>ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE EmpPack AS
  2  TYPE EmpInfoTyp IS REF CURSOR;
  3  PROCEDURE EmpInfoRpt (emp_cv IN OUT EmpInfoTyp);
  4* END EmpPack;
  5  /

Package created.

HR@orcl>ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE BODY EmpPack AS PROCEDURE
  2  EmpInfoRpt (emp_cv IN OUT EmpInfoTyp) AS
  3  BEGIN
  4  OPEN emp_cv FOR SELECT EMPLOYEE_ID, SALARY
  5  FROM EMP_DETAILS_VIEW
  6  WHERE JOB_ID='SA_MAN';
  7  END;
  8* END;
  9  /

Package body created.

HR@orcl>variable cv refcursor
HR@orcl>execute EmpPack.EmpinfoRpt(:cv)

PL/SQL procedure successfully completed.

HR@orcl>print cv

EMPLOYEE_ID     SALARY                                                                              
----------- ----------                                                                              
        145      14000                                                                              
        146      13500                                                                              
        147      12000                                                                              
        148      11000                                                                              
        149      10500                                                                              

HR@orcl>spool off
