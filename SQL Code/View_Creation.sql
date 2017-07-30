Create view DA_ANALYTICS_SNAP AS 
SELECT 
/*time_of_year, quarter, district_code, district, */
qtb.time_of_year as YEAR, 
qtb.quarter as Quarter, 
qtb.district_code as District_Code, 
qtb.district as District, 
qtb.state  as State, 
qtb.q_total_snap_households as Total_Snap_Housholds, 
qtb.q_total_snap_persons as Total_Snap_Persons, 
qtb.q_total_snap_benefits  as Total_Snap_Benefits, 
fp.feds_cases_referred as FEDS_CASES_REFERRED, 
fp.feds_total_investigated as FEDS_TOTAL_INVESTIGATED, 
fp.feds_cases_denied_grant_reduced AS FEDS_CASES_DENIED_GRANT_REDUCED, 
fp.feds_cases_no_impact as FEDS_CASES_NO_IMPACT, 
fp.feds_cases_no_errors as FEDS_CASES_NO_ERRORS, 
fp.intentional_program_violation as IPV, 
fp.total_ipv AS TOTAL_IPV, 
fp.prison_total_matches as PRISON_MATCHES, 
fp.prison_closed_prior_resolved as PRISON_CLOSED_PRIOR_RESOLVED, 
fp.prison_closed_resolved as PRISON_CLOSED_RESOLVED, 
fp.prison_exonerated_resolved as PRISON_EXONERATED_RESOLVED, 
fp.prison_unresolved as PRISON_UNRESOLVED, 
fp.paris_total_matches as PARIS_TOTAL_MATCHES, 
fp.paris_closed_prior_resolved as PARIS_CLOSED_PRIOR_RESOLVED, 
fp.paris_closed_resolved as PARIS_CLOSED_RESOLVED, 
fp.paris_exonerated_resolved as PARIS_EXONERATED_RESOLVED, 
fp.paris_unresolved as PARIS_UNRESOLVED,
qtb.q_temporary_assistance_snap_households as Temporary_Assistance_Snap_Households , 
qtb.q_temporary_assistance_snap_persons  as Temporary_Assistance_Snap_Persons, 
qtb.q_temporary_assistance_snap_benefits as Temporary_Assistance_Snap_Benefits, 
qtb.q_non_temporary_assistance_snap_households as Non_Temporary_Assistance_Snap_Households, 
qtb.q_non_temporary_assistance_snap_persons as Non_Temporary_Assistance_Snap_Persons, 
qtb.q_non_temporary_assistance_snap_benefits  as Non_Temporary_Assistance_Snap_Benefits
	FROM public.da_snap_fraud_protection fp inner join quarterly_da_snap_total_benefits qtb 
    on fp.time_of_year = qtb.time_of_year
    and fp.district = qtb.district
    and fp.quarter = qtb.quarter
;
    