LOAD DATA
INFILE 'D:\atil\app\par_load.SSC'
INTO table temp_stlpar
FIELDS TERMINATED BY "," OPIONALLY ENCLOSED WITH '"'
(stlno,szcode,farea,fpar,ftype)
