-- set up user privileges for TEQ
-- parameters:
--  &1  - the user to grant privileges to
--  &2  - the PDB name

alter session set container = &2;
grant execute on dbms_aqadm to &1;
commit;
/