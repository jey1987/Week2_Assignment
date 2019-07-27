create database video_reviews;

use video_reviews;
create table videos
(
video_id decimal(15,0)
,video_title varchar(200)
,video_length integer
,video_URL varchar(1000)
) ;

insert into videos values(50001,'MySQL Crash Course | Learn SQL',72,'https://www.youtube.com/watch?v=9ylj9NR0Lcg');
insert into videos values(50002,'SQL vs NoSQL or MySQL vs MongoDB',21,'https://www.youtube.com/watch?v=ZS_kXvOeQ5Y');
insert into videos values(50003,'What is Hadoop?: SQL Comparison',6,'https://www.youtube.com/watch?v=MfF750YVDxM');

create table reviewers
(
reviewer_ID decimal(15,0)
,reviewer_name varchar(200)
,reviewer_rating integer
,reviewer_review varchar(1000)
,reviewer_video_id decimal(15,0)
);

insert into reviewers values(80001,'Asher',4,'Useful',50001);
insert into reviewers values(80001,'Asher',5,'Enlightening !',50002);
insert into reviewers values(80001,'Asher',1,'Could have been compared better',50003);

insert into reviewers values(80002,'Cyd',1,'Not Presented Well ',50001);
insert into reviewers values(80002,'Cyd',2,'Only brief content',50002);
insert into reviewers values(80002,'Cyd',4,'Average',50003);

insert into reviewers values(80003,'Kyle',5,'Educational',50001);
insert into reviewers values(80003,'Kyle',5,'Excellent',50002);
insert into reviewers values(80003,'Kyle',5,'Would help new comers',50003);

select * from reviewers;

select * from videos vid inner join reviewers rev 
on vid.video_id  = rev.reviewer_video_ID
order by video_id asc;