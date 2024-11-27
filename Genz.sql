use genz;

select Gender, count(Gender)
from datas
where Country = "India"
group by Gender;

select  High_Edu, count(High_Edu),
count(High_Edu)/(select count(*)from datas) *100 as Percentage   
from datas
where Country = "India"
group by High_Edu;


select Influencers ,count(Influencers) as Top
from datas
where Country = "India"
group by 
Influencers order by 
Top desc
limit 6;

select Gender, Influencers, count(Influencers) as Top
from datas
where Country = "India"
group by
Gender , Influencers 
order by
Top desc;

select 3_Tenu, count(3_Tenu),
count(3_Tenu)/ (select count(*) from datas) * 100 as percent
from datas
where Country ="India"
Group by 3_Tenu;


select  MI, count(MI) as counts
from datas
where Country ="India" and MI<=5
group by MI
order by
counts desc;

select  Gender, count(MI) as counts 
from datas
where Country ="India" and MI<=5
group by Gender
order by
counts desc;


select min(counts) as min_count
from (select count(sal3) AS counts
from datas 
where Country = "India"
group by sal3
) AS subquery;

select initial_sal,
min(counts) as min
from (select count(initial_sal) as counts
from datas
where Country = "India"
group by initial_sal)
as subquery;


select wrkenv, count(wrkenv)/(select count(*) from datas) *100 as percent
from datas
where Country = "Ïndia" and wrkenv ="Remote"
group by
wrkenv;

select wrkhr ,count(wrkhr)
from datas 
where Country = "India"
group by
wrkhr;

select wrkstress,count(wrkstress)/(select count(*) from datas)*100 as percent
from datas 
where Country = "India"
group by
wrkstress
order by
percent desc;


select brkfreq , Gender , count(brkfreq) as counts
from datas
where Country = "India"
group by
brkfreq, Gender
order by
counts desc;

select abusivetol, count(abusivetol) from datas
where Country = "India" and abusivetol = "Yes"
group by Abusivetol;

select sal5,
min(counts) as min
from (select count(sal5) as counts
from datas
where Country = "India"
group by sal5)
as subquery;

select wrkenv , Gender , count(Gender) as counts
from datas
where Country = "India" and wrkenv ="Remote"
group by
wrkenv, Gender
order by
counts desc;


select wrkstress , Gender , count(Gender) as counts
from datas
where Country = "India" 
group by
wrkstress, Gender
order by
counts desc;

select proddriv, count(proddriv) as counts
from datas
where Country ="India"
group by
proddriv
order by 
counts desc ;

select HEA ,count(HEA)/(select count(*) from datas)*100 as percent
from datas 
where Country ="India" and HEA ="Need a Sponsor"
group by
HEA;




