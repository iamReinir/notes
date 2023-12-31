[Back to index](../SDP_index.md)
# Testing
Test case = input + expected output
## "Bug"
* Failure : something happened in a way that its not supposed to
* Error : a part of a system that liable to lead to a failure
	* Latent error : error that havent active yet
	* Effective error : error that... active. 
* Fault : programmers' error

## Testing type:
* Incremental testing : keep the tests, rerun them when adding more modules/components.
* Top-down teasting : using stubs (placeholder lower-level modules that return hard-coded value) to test the top-level components
* Bottom-up testing : using drivers (fake, hard-coded highlevel modules) to test the low level modules
* Back-to-back testing : the updated version's result is compared against the old, working version's result.

## Axioms of testing:
* More bugs found mean more bugs currently hidden in coded
* Best programmers for testing
* Exhaustive testing is impossible, you cannot find all bugs in a program
* It takes more time that you have to test less than you like.

## Testing perspective
* Blackbox vs Whitebox testing.
* Validation and Verification

## Stage of testing
1. Unit test
2. Module test
3. Sub-system test
4. System test
5. Acceptance test (test with users)