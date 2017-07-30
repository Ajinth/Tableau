CREATE TABLE DA_SNAP_FRAUD_PROTECTION (
 Time_of_year int 
,Quarter int 
,District_Code int  
,District varchar(250)
,FEDS_Cases_Referred numeric(5,4)
,FEDS_Total_Investigated int 
,FEDS_Cases_Denied_Grant_Reduced numeric(5,4)
,FEDS_Cases_No_Impact numeric(5,4)
,FEDS_Cases_No_Errors numeric(5,4)
,Intentional_Program_Violation int 
,Total_IPV numeric(5,4)
,Prison_Total_Matches int 
,Prison_Closed_Prior_Resolved numeric(5,4)
,Prison_Closed_Resolved numeric(5,4)
,Prison_Exonerated_Resolved numeric(5,4)
,Prison_Unresolved numeric(5,4)
,Paris_Total_Matches int 
,PARIS_Closed_Prior_Resolved numeric(5,4)
,PARIS_Closed_Resolved numeric(5,4)
,PARIS_Exonerated_Resolved numeric(5,4)
,PARIS_Unresolved numeric(5,4)
);


CREATE TABLE DA_SNAP_TOTAL_BENEFITS (
  Time_of_year int 
, Month_of_year varchar
, Month_Code int 
, District_Code int 
, District varchar
, Total_Snap_Households bigint 
, Total_Snap_Persons bigint 
, Total_Snap_Benefits money 
, Temporary_Assistance_SNAP_Households bigint
, Temporary_Assistance_SNAP_Persons bigint
, Temporary_Assistance_SNAP_Benefits money
, Non_Temporary_Assistance_SNAP_Households bigint 
, Non_Temporary_Assistance_SNAP_Persons bigint 
, Non_Temporary_Assistance_SNAP_Benefits bigint 
 
);


CREATE TABLE QUARTERLY_DA_SNAP_TOTAL_BENEFITS (
  Time_of_year int 
, quarter_int int 
, District_Code int 
, District varchar(150)
, state varchar(150)
, q_Total_Snap_Households bigint 
, q_Total_Snap_Persons bigint 
, q_Total_Snap_Benefits money 
, q_Temporary_Assistance_SNAP_Households bigint
, q_Temporary_Assistance_SNAP_Persons bigint
, q_Temporary_Assistance_SNAP_Benefits money
, q_Non_Temporary_Assistance_SNAP_Households bigint 
, q_Non_Temporary_Assistance_SNAP_Persons bigint 
, q_Non_Temporary_Assistance_SNAP_Benefits bigint 
 
);