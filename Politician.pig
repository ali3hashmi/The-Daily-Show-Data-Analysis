A = load '/home/kiran/dialy_shows' using PigStorage(',') AS (year:chararray,occupation:chararray,date:chararray,group:chararray,gusetlist:chararray);
B = foreach A generate year,group;
C = filter B by group == 'Politician';
D = group C by year;
E = foreach D generate group, COUNT(C) as cnt;
F = order E by cnt desc;
