/*Insert to Quarterly Table */
INSERT INTO quarterly_da_snap_total_benefits
(select distinct 
  time_of_year
, quarter  
, district_code
, district
, state
, sum(total_snap_households) 
    over (partition by quarter, time_of_year, district) q_total_snap_households
, sum(total_snap_persons) 
    over (partition by quarter, time_of_year, district) q_total_snap_persons 
, sum(total_snap_benefits) 
    over (partition by quarter, time_of_year, district) q_total_snap_benefits 
, sum(temporary_assistance_snap_households) 
    over (partition by quarter, time_of_year, district) q_temporary_assistance_snap_households 
, sum(temporary_assistance_snap_persons) 
    over (partition by quarter, time_of_year, district) q_temporary_assistance_snap_persons
, sum(temporary_assistance_snap_benefits) 
    over (partition by quarter, time_of_year, district) q_temporary_assistance_snap_benefits
, sum(non_temporary_assistance_snap_households) 
    over (partition by quarter, time_of_year, district) q_non_temporary_assistance_snap_households
, sum(non_temporary_assistance_snap_persons) 
    over (partition by quarter, time_of_year, district) q_non_temporary_assistance_snap_persons
, sum(non_temporary_assistance_snap_benefits)
    over (partition by quarter, time_of_year, district) q_non_temporary_assistance_snap_benefits
from da_snap_total_benefits);
