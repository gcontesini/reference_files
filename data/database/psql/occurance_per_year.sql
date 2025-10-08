select
    extract( year from publicationdate) as ingestyear,
    count(*) as article_count
from documents 
    group by ingestyear
    order by ingestyear;