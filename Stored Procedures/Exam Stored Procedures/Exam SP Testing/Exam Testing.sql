----Exam System Testing
--@exam_name VARCHAR(50),
--@exam_Date DATE,
--@max_Grade INT,
--@start_time TIME,
--@End_time TIME,
--@crs_Name VARCHAR(50),
--@NoOfQuestion INT

--Right Data
exec [EX_Generate_Exam-1]
    @exam_name = 'Final AI Test',
    @exam_Date = '2025-07-01',
    @max_Grade = 100,
    @start_time = '10:00:00',
    @End_time = '12:00:00',
    @crs_Name = 'AI Fundamentals',
    @NoOfQuestion = 10

--Wronge Data
exec [EX_Generate_Exam-1]
    @exam_name = 'Final AI Test',
    @exam_Date = '2025-07-01',
    @max_Grade = 100,
    @start_time = '10:00:00',
    @End_time = '12:00:00',
    @crs_Name = 'A Fundamentals',
    @NoOfQuestion = 10
-------------------------

----Assign exams
--st_id ,exam_id

--Right Data
select top(1) * 
from Student --12

select *
from Track_Crs
where Track_ID = 12  --crs_id = 1 is ai and in track 12

select top(1) * from Exam order by Exam_ID desc ---exam of crs 1 is 1502

EXEC [EX_Assign_Exam-2] @st_id = 1, @exam_id = 1502


--Wrong data
EXEC [EX_Assign_Exam-2] @st_id = 255, @exam_id = 1502

select Track_ID from student where St_ID = 255

select * from Track_Crs where Track_ID = 16 ---No Crs_id = 1 with This Name In Track 16

-------------------------------------------
----Taking Student Answers
--Right Data

select * from St_Exam_Ques where St_ID = 1 and Exam_ID = 1502
--13/135/184/575/598/659/699/728/816/1051

exec [EX_Submit_Answer-3] @st_id = 1,@exam_id = 1501,@question_id = 1051 , @st_answer = 'A'

--Wrong Data

exec [EX_Submit_Answer-3] @st_id = 1,@exam_id = 1501,@question_id = 1052 , @st_answer = 'A'


-------------------------------------------
--Getting Results
--Right Data
select * from Result 
where St_ID = 1 and Exam_ID = 1502

exec [EX_Get_Result-4] @st_id = 1 ,@exam_id = 1502


--Wrong Data

exec [EX_Get_Result-4] @st_id = 1 ,@exam_id = 1503
