# CALL_CENTER_TSC
I'll be doing analysis on a call center data just to test my skills on T-SQL and Tableau, I'll be sticking to using SQL and Tableau for this process and track my steps and challenges. --step one find data and attach file for a call center--
FIND DATA FROM A GITHUB PAGE https://github.com/fedemeister/call_center

DECIDE TO GO WITH A DIFFERENT DATA THE WELL-KNOWN SOURCE FILES ADVENTUREWORKS2016 

I IMPORT THE DATABASE USING THE WIZARD--"C:\AdventureWorks2016.bak" FILE INFO IS ON GITHUB

LINK AND INFORMATION --gh repo clone microsoft/sql-server-samples--

git clone -n https://github.com/Microsoft/sql-server-samples
cd sql-server-samples
git config core.sparsecheckout true
echo samples/features/*| out-file -append -encoding ascii .git/info/sparse-checkout
echo samples/demos/*| out-file -append -encoding ascii .git/info/sparse-checkout
git checkout.

# ASK STEP ONE
The product I am looking to build is a dashboard in tableau for a manager to track KPI for his team.

The name of the company is Adventureworks. Step one is to ask questions and think out design.

For designing I perform pen and paper I'll add the sample drawing in the final.

QUESTIONS WHO, WHAT, WHEN, WHERE, STARTING WITH WHO IS THIS FOR

/*NOTE ASSUMPTIONS ABOUT DATA I KNOW AND ITS THIS DATA IS ALREADY IN A DATABASE IS MANAGED BY AN DBA WHO HAS CREATED THIS DATA FOR US, I WILL BE ANALYZING DATA TO FIND WHAT I NEED*/

WHO- MANAGER, SUP, AND CALL REPS

WHY- MANAGER NEED DASHBOARD TO QUICKLY CHECK TOP THREE METRICS;

TSA= TOP SUPPORT AGENTS
FCR= FIRST CALL RESOLUTIONAL
CVT= CALL VOLUME TRENDS

/*TOOK A PAUSE TO OPEN WORD/ NEED TO DO SPELL CHECKS AS I GO ALONG AND, ALSO DOWNLOADED CODING APP NOTEPAD++--*/

WHAT- THIS TEAM HANDLES TECHINCAL CALLS FOR NATION AND TROUBLESHOOT OVER THE PHONE WITH DIFFERENT DEPO.

WHEN- DAILY, WEEKLY, MONTHLY,

WHERE- LOOKING IN TO HEIARCHY OF LOCATION AND POSTIONS 

WENT TO STUDY ON CALL METRICS TSA,FCR,CVT

--NEXT STEPS WILL BE DECIDING WHAT DATA TO USE AND CREATE ER DIAGRAM THIS IS THE ETL STEP FOR ME ILL CREATE SEVERAL QUERIES AND VIEWS IF NEEDED--