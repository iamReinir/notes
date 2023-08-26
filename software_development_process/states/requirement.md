[Back to index](../SDP_index.md)
# Requirement in Software
* Create high-level descriptions
* Distinguish between "right" and "wrong" system
* Capture the WHAT, not the HOW of the solution.

# User Requirements vs. System Specifications
Example: 
User requirement: One person must be able to load the boat on the car rack
System specification:
	* Boat must be lighter than 50kg
	* Boat must have handles
	* Car rack must be padded (so boat slides into rack easily)
	* etc...
## be sure that specification meet requirement.

# Non-functional requirements:
* Define system properties and constraints
* Process requirements
* Often more critical than "functional" requirements
* Quality related constraints like security, performance and usability

## Classification:
* Product requirement : requirement on the product. Encoding, encryption, protocols...
(ex: Communication between the ATM and the user is express in the standard ASCII character set)
* Organizational requirement : Company's standard, the team's code style, development process (waterfall, scrum...)
* External requirement : impacted by external entities like the FAA
## Example:
* DB2 will be use as the database

# WRSPM reference model
	|---------------------------Environment-----------------------|
						|-----------------------------system---------------------------|
	World 		Requirements			Specifications		Program			Machine
	(assumptions)
		e_hidden			e_visible	s_visible					s_hidden
		
### example: an ATM
* e_hidden is the debit card/PIN
* e_visible is the data when reading the mag strip of the card/PIN when entered into the system
* s_visible is the User interface
* s_hidden is the thing that hidden from the user: the code, the machine, the lock...
