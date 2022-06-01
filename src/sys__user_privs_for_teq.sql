-- set up user privileges for TEQ
-- parameters:
--  &1  - the user to grant privileges to

grant execute on dbms_aqadm to &1;
commit;
/