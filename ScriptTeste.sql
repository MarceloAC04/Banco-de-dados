CREATE EVENT SESSION [DatabaseEvent] ON SERVER 
ADD EVENT sqlserver.database_attached(
    ACTION(sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.server_principal_name,sqlserver.server_principal_sid,sqlserver.username)),
ADD EVENT sqlserver.database_created(
    ACTION(sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.server_principal_name,sqlserver.server_principal_sid,sqlserver.username)),
ADD EVENT sqlserver.database_detached(
    ACTION(sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.server_principal_name,sqlserver.server_principal_sid,sqlserver.username)),
ADD EVENT sqlserver.database_started(
    ACTION(sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.server_principal_name,sqlserver.server_principal_sid,sqlserver.username)),
ADD EVENT sqlserver.database_stopped(
    ACTION(sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.server_principal_name,sqlserver.server_principal_sid,sqlserver.username))
ADD TARGET package0.event_file(SET filename=N'C:\ProgramData\DatabaseEvent.xel')
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=OFF,STARTUP_STATE=OFF)
GO


