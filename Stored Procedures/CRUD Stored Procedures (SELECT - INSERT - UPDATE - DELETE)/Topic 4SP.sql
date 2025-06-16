-- TOPIC 4 SP
-- Get Topic By ID
CREATE PROCEDURE GetTopicByID @TopicID INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM dbo.Topic WHERE Topic_id = @TopicID)
    BEGIN
        PRINT 'Topic with ID ' + CAST(@TopicID AS VARCHAR(10)) + ' does not exist.'
        RETURN
    END

    SELECT 
        Topic_id,
        Topic_name,
        Crs_id
    FROM 
        dbo.Topic
    WHERE 
        Topic_id = @TopicID
END
GO

-- EXEC GetTopicByID @TopicID = 100

----------------------------------------------
--Insert Topic

CREATE PROCEDURE InsertTopic
    @TopicID INT,
    @TopicName VARCHAR(100),
    @CourseID INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM dbo.Course WHERE Crs_ID = @CourseID)
    BEGIN
        PRINT 'Error: Course ID ' + CAST(@CourseID AS VARCHAR(10)) + ' does not exist.'
        RETURN
    END

    INSERT INTO dbo.Topic (Topic_id, Topic_name, Crs_id)
    VALUES (@TopicID, @TopicName, @CourseID)

END
GO

-- EXEC InsertTopic @TopicID = 501, @TopicName = 'Machine Learning', @CourseID = 1

----------------------------------------------
--Update Topic

CREATE PROCEDURE UpdateTopic
    @TopicID INT,
    @NewTopicName VARCHAR(100),
    @NewCourseID INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM dbo.Topic WHERE Topic_id = @TopicID) BEGIN PRINT 'Topic not found.' RETURN END
	IF NOT EXISTS (SELECT 1 FROM dbo.Course WHERE Crs_ID = @NewCourseID) BEGIN PRINT 'Course does not exist.' RETURN END

    UPDATE dbo.Topic
    SET 
        Topic_name = @NewTopicName,
        Crs_id = @NewCourseID
    WHERE 
        Topic_id = @TopicID

    PRINT 'Topic with ID ' + CAST(@TopicID AS VARCHAR(10)) + ' was updated successfully.'
END
GO

-- EXEC UpdateTopic @TopicID = 501, @NewTopicName = 'Machine Learning Fundamentals', @NewCourseID = 1

----------------------------------------------
--Delete Topic

CREATE PROCEDURE DeleteTopic @TopicID INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM dbo.Topic WHERE Topic_id = @TopicID)
    PRINT 'Topic with ID ' + CAST(@TopicID AS VARCHAR(10)) + ' not found.'
    RETURN


    DELETE FROM dbo.Topic
    WHERE Topic_id = @TopicID

END
GO


-- EXEC DeleteTopic @TopicID = 502