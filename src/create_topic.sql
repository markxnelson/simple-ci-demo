-- create a TEQ topic 
create or replace procedure create_topic (
    topic_name in varchar2) as
begin
    dbms_aqadm.create_transactional_event_queue(
        queue_name => topic_name,
        multiple_consumers => true
    );
    dbms_aqadm.start_queue(topic_name);
end;
/