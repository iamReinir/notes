[Back to index](../SDP_index.md)
# Design
* Understanding the problem
* Identifying one or more solution
* Describe solution abstractions
* Repeat for each abstraction until the design is in primitive terms.

# Stages (formally)
* System architecture
* Component Specification
* Component Interface Specification
* Component Design
* Data Structure Design
* Algorithm Design

## Modularity
* Coupling
* Cohesion
* Information hiding
* Data encapsulation

### Goals : 
1. Decomposability
2. Composability
3. Ease of understanding.

## Coupling
Measure the strength of connections between systems' components.
1. Tight Coupling
	* Content Coupling : A rely on the data member of B
	* Common Coupling : A and B both rely on some global variable
	* External Coupling : A and B both rely on some external imposed format or protocol.
2. Medium Coupling
	* Control Coupling : A control the program flow of B via flags or instructions
	* Data Structure Coupling : A and B both rely on the same composite data structure
3. Loose Coupling 
	* Data coupling : A share the data to B via parameters.
	* Message coupling : A and B can only communicate via message passing
	* No coupling 
	
## Cohesion
Measure how well a module's components fit together
1. Weak
* Coincidental Cohesion : Proximity to other code
* Temporal Cohesion : Call at the same time
* Procedural Cohesion : One called after another
* Logical Association : Performed similar functions
2. Medium
* Communicational Cohesion : Same type of output/input
* Sequential Cohesion : One part is input of another part
3. Strong
* Object Cohesion : Every operations belonged to this object.
* Functional Cohesion : Everything is used to perform one function/behaviour