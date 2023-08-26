# Attributes 
* Performance
* Security
* Modifiability
* Reliability
* Usability

More ilities:
https://learn.microsoft.com/en-us/previous-versions/msp-n-p/ee658094(v=pandp.10)

# Criteria
* Coupling & Cohesion 
* Liskov's Subtituition Principle and the SOLID design principles
	(if S is a subtype of T , then objects of type T in a program can be replaced with objects of type S without altering any desirable properties of that program)
* Law of Demeter
	Principle of least knowledge
	a method m of object O should only invoke the methods of :
	* O itself
	* m's parameter
	* Any object created in m
	* O's direct components
	* A global variable accessible in O

# SOLID :
1. Single responsibility
2. Open for extension, close to modification
3. Liskov's Subtituition Principle
4. Interface segregation Principle
5. Dependency inversion Principle.

# Measuring coupling :

## Instability
Afferent Coupling (AC) : modules that depend on X
Efferent Coupling (EC) : modules that X depend on
* Insability : EC / (AC + EC)
* Abstractness : AC / (AC + EC)
both end of the scale is good, the middle is the problem

## Coupling factor
Coupling Factor (CF) measures the coupling between classes excluding coupling due to inheritance. It is the ratio between the number of actually coupled pairs of classes in a scope (e.g., package) and the possible number of coupled pairs of classes. CF is primarily applicable to object-oriented systems.

CF = coupleCount / ( 0.5 * classCount^2 - classCount)

# Measuring Cohesion

## Lack of cohesion of method - LCOM
Methods are connected if 
* They both access the same class-level variable
* one method called the other

Then count the number of connected components in a class. More than one mean there might be problem.

# Some other methods:
* Defect density : basically bug per line of code
* Cyclomatic Complexity : determines the number of paths in a method. All method start with 1, +1 for each control flow spit.
* Cognitive Complexity :
* Maintainability Rating : measure the technical debt against development time to date. technical debt estimate :
	A : < 5% of dev time
	B : 6% - 10%
	C : 11% - 20%
	D : 21% - 50%
	E : > 50%
* Lack of Documentation : LOD = 1 - #Documented/#needDocument