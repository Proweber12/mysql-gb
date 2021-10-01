select count(*) as count_likes, p.gender 
from profiles p 
join likes l on p.user_id = l.user_id 
group by 2
order by count_likes desc
limit 1;