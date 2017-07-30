update da_snap_total_benefits 
set quarter = 1
where month_code in (1,2,3); 

update da_snap_total_benefits 
set quarter = 2
where month_code in (4,5,6); 

update da_snap_total_benefits 
set quarter = 3
where month_code in (7,8,9);

update da_snap_total_benefits 
set quarter = 4
where month_code in (10,11,12);



