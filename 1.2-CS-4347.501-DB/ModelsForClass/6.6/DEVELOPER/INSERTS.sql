SELECT TO_TIMESTAMP ('10-Sep-02 14:10:10.123000', 'DD-Mon-RR HH24:MI:SS.FF') FROM DUAL;

INSERT INTO  AIRPORT (Airport_code, Name, City, State, T1) VALUES(5, 'ALT', 'Atlanta', 'GA', TO_TIMESTAMP('10-SEP-0214:10:10.123000','DD-MON-RRHH24:MI:SS.FF'));