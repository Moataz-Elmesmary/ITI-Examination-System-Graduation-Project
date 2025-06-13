-- Course 4SP
-- GetCourseByID SP

create proc GetCourseByID @CourseID INT
AS
Begin
	IF NOT EXISTS (SELECT 1 FROM Course WHERE Crs_ID = @CourseID) BEGIN PRINT 'Error: Course does not exist.' RETURN END
	SELECT
		CRS_ID
		,CRS_Name
		,Crs_Duration
		,Crs_Description
	From Course
	WHERE Crs_ID = @CourseID
END

-- EXEC GetCourseByID @CourseID = 2
----------------------------------

-- Insert Course
create proc InsertCourse
	@CourseID INT
    ,@CourseName VARCHAR(50)
    ,@Duration INT
    ,@Description VARCHAR(255)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM Course WHERE Crs_ID = @CourseID) BEGIN PRINT 'Error: A course with this ID already exists.' RETURN END

	INSERT INTO Course(Crs_ID, Crs_Name,Crs_Duration, Crs_Description)
	VALUES(@CourseID, @CourseID, @Duration, @Description)
END

-- EXEC InsertCourse @CourseID = 6, @CourseName = 'Tableau', @Duration = 40, @Description = 'Tool for visualization.'
----------------------------------

-- Update Course

create proc UpdateCourse
	@CourseID INT
    ,@NewCourseName VARCHAR(50)
    ,@NewDuration INT
    ,@NewDescription VARCHAR(255)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Course WHERE Crs_ID = @CourseID) BEGIN PRINT 'Error: Course with this ID was not found.' RETURN END	
	UPDATE Course
	SET 
		Crs_Name = @NewCourseName
        ,Crs_Duration = @NewDuration
        ,Crs_Description = @NewDescription

END

-- EXEC UpdateCourse @CourseID = 1, @NewCourseName = 'AI', @NewDuration = 45, @NewDescription = 'Machine Learning and DL.'

----------------------------------

-- Delete Course
create proc DeleteCourse @CourseID INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Course WHERE Crs_ID = @CourseID) BEGIN PRINT 'error: Course with this ID was not found.' RETURN END

    BEGIN TRY

-- deleting student results for exams related to the course.
        DELETE r
        FROM Result r JOIN Exam e 
			ON r.Exam_ID = e.Exam_ID
        WHERE e.Crs_ID = @CourseID

-- deleting student answers for exams/questions related to the course.
		DELETE seq
        FROM St_Exam_Ques AS seq JOIN Questions AS q 
			ON seq.Ques_ID = q.Ques_ID
        WHERE q.Crs_id = @CourseID

-- deleting the link between exams and questions.
		DELETE eq
        FROM Exam_Question eq JOIN Questions q 
			ON eq.question_id = q.Ques_ID
        WHERE q.Crs_id = @CourseID

-- deleting the exams themselves.
        DELETE FROM Exam
        WHERE Crs_ID = @CourseID

-- deleting choices for the questions related to the course.
        DELETE ch
        FROM choices ch JOIN Questions q 
			ON ch.Question_id = q.Ques_ID
        WHERE q.Crs_id = @CourseID

-- deleting the questions.
        DELETE FROM Questions
        WHERE Crs_id = @CourseID

-- deleting topics related to the course.
        DELETE FROM Topic
        WHERE Crs_id = @CourseID

-- deleting course links from tracks.
        DELETE FROM Track_Crs
        WHERE Crs_ID = @CourseID

-- deleting course links from instructors.
        DELETE FROM Inst_Crs
        WHERE Crs_ID = @CourseID

-- Finally, deleting the course itself.
        DELETE FROM Course
        WHERE Crs_ID = @CourseID

        PRINT 'Successfully deleted Course with ID ' + CAST(@CourseID AS VARCHAR) + ' and all related data.'

    END TRY
    BEGIN CATCH

        PRINT 'An error occurred during the deletion process:'
        PRINT ERROR_MESSAGE()
    END CATCH
END

-- EXEC DeleteCourse @CourseID = 4