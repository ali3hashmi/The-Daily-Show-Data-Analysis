A = load '/home/kiran/dialy_shows' using PigStorage(',') AS (year:chararray,occupation:chararray,date:chararray,group:chararray,gusetlist:chararray);
B = foreach A generate occupation,group;
C = group B by (group,occupation);
D = foreach C generate group, COUNT(B) as cnt;
E = order D by group;
