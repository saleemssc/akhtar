LOAD DATA
INFILE 'D:\SYSTEMS\ATILSRC\LOAD\LOAD.SSC'
INTO table temp_timings
( FLAG     POSITION(01:02), 
  TDATE    POSITION(03:10) DATE "YYYYMMDD",
  IOTIME   POSITION(03:14) DATE "YYYYMMDDHH24MI",
  IOFLAG   POSITION(17:18) ,
  EMPCODE  POSITION(19:28) ,
  TERMINAL POSITION(31:32) )