CREATE PROC GetTopicsByCourse @CourseID INT
AS
BEGIN


    IF NOT EXISTS (SELECT 1 FROM dbo.Course WHERE Crs_ID = @CourseID)
    BEGIN
        PRINT 'Error: Course ID ' + CAST(@CourseID AS VARCHAR(10)) + ' does not exist.';
        RETURN
    END


    SELECT 
        T.Topic_id,
        T.Topic_name
    FROM 
        dbo.Topic AS T
    WHERE 
        T.Crs_id = @CourseID

END

-- EXEC GetTopicsByCourse 1
