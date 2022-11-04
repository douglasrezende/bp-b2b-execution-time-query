select workflow_id, 'LIST', start_time as DATAINICIO, end_time as DATAFIM, (end_time - start_time)*24*60*60 as Segundos,
 nodeexecuted from WF_INST_S where WFD_ID = 12045
and start_time >= to_date('2022/10/31 00:00:00','yyyy/mm/dd hh24:mi:ss') and start_time <= to_date('2022/11/04 23:59:59','yyyy/mm/dd hh24:mi:ss') 
order by (end_time - start_time)*24*60*60 desc 
