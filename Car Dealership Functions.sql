-- New ticket 
create or replace function new_ticket(
	_ticket_id INTEGER,
	_ticket_date DATE,
	_car_serial_number INTEGER,
	_customer_id INTEGER,
	_mechanic_id INTEGER,
	_total_cost numeric,
	_ticket_notes VARCHAR
)
returns void
as $MAIN$
begin 
	insert into ticket_history_cd(
		ticket_id, 
		ticket_date, 
		car_serial_number, 
		customer_id, 
		mechanic_id, 
		total_cost, 
		ticket_notes)
	values(
		_ticket_id, 
		_ticket_date, 
		_car_serial_number, 
		_customer_id, 
		_mechanic_id, 
		_total_cost, 
		_ticket_notes);
end;
$MAIN$
language plpgsql;

-- Test call of function
select new_ticket(3, '2023-01-10', 3, 2, 1, 275.50, 'Reservice' );
select new_ticket(4, '2023-01-10', 2, 1, 3, 67.00, 'Air freshener' );

select * from ticket_history_cd;


-- Add/Edit Ticket Notes
-- So I work professionally as a service advisor for mechanics and the
-- number one thing I have to change in our system is constantly updating
-- or creating notes for service tickets
create or replace procedure edit_ticket_notes(
	ticket INTEGER,
	new_note VARCHAR
)
language plpgsql
as $$
begin
	-- Add a late fee to the customer payment amount
	update ticket_history_cd
	set ticket_notes = ticket_notes ||  ' ' || new_note
	where ticket_id = ticket;
	
	-- Commit the above statement inside of a transaction 
	commit;
end;
$$


-- Test call of function
call edit_ticket_notes(1, 'See Service Advising');

select * from ticket_history_cd;
