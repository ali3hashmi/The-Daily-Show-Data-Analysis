A = load '/home/kiran/dialy_shows' using PigStorage(',') AS (year:chararray,occupation:chararray,date:chararray,grp:chararray,gusetlist:chararray);
B = foreach A generate occupation,grp;
C = group B by grp;
D = foreach C generate group, COUNT(B) as cnt;
E = order D by cnt desc;
