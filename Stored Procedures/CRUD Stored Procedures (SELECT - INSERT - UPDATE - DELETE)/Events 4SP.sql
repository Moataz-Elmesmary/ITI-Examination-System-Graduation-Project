-- Event 4SP
-- GetEventByID SP
create proc GetEventByID @EventID INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Event WHERE Event_ID = @EventID) BEGIN PRINT 'This ID does not exist.' RETURN END

	SELECT 
		e.Event_ID
		,e.Event_name
		,e.Event_Topic
		,e.Event_Date
		,b.Branch_Name
	FROM Event e LEFT JOIN Branch b
		ON e.Branch_ID = b.Branch_ID
	Where Event_ID = @EventID
END

-- EXEC GetEventByID @EventID = 1

------------------------------------
-- Insert Event

create proc InsertEvent 
	@EventID INT
    ,@EventName VARCHAR(50)
    ,@EventTopic VARCHAR(50)
    ,@EventDate DATE
    ,@BranchID INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Branch WHERE Branch_ID = @BranchID) BEGIN PRINT 'Branch ID does not exist.' RETURN END


	INSERT INTO Event(Event_ID, Event_name, Event_Topic, Event_Date, Branch_ID)
	VALUES(@EventID, @EventName, @EventTopic, @EventDate, @BranchID)
END

-- EXEC InsertEvent @EventID = 10, @EventName = 'DevOps Day', @EventTopic = 'CI/CD Best Practices', @EventDate = '2025-08-15', @BranchID = 11

------------------------------------
-- Update Event

create proc UpdateEvent 
	@EventID INT
    ,@NewEventName VARCHAR(50)
    ,@NewEventTopic VARCHAR(50)
    ,@NewEventDate DATE
    ,@NewBranchID INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Event WHERE Event_ID = @EventID) BEGIN PRINT 'This ID was not found.' RETURN END
	IF NOT EXISTS (SELECT 1 FROM Branch WHERE Branch_ID = @NewBranchID) BEGIN PRINT 'The new Branch ID does not exist.' RETURN END

	UPDATE Event
	SET
		Event_name = @NewEventName
		,Event_Topic = @NewEventTopic
		,Event_Date = @NewEventDate
		,Branch_ID = @NewBranchID

	WHERE Event_ID = @EventID
END

-- EXEC UpdateEvent @EventID = 10, @NewEventName = 'Advanced DevOps Day', @NewEventTopic = 'Kubernetes & Docker', @NewEventDate = '2025-08-16', @NewBranchID = 2

------------------------------------
-- Delete Event

CREATE PROC DeleteEvent @EventID INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Event WHERE Event_ID = @EventID) BEGIN PRINT 'Event with this ID was not found.' RETURN END

    DELETE FROM ST_Event WHERE Event_ID = @EventID
    DELETE FROM Inst_Events WHERE Events_ID = @EventID

    --deleting the event itself
    DELETE FROM Event
    WHERE Event_ID = @EventID
END

-- EXEC DeleteEvent @EventID = 10
