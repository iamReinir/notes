[Back to index](./index.md)
# Observer
Subject - has changing state
Observer - needs to know about the change

UML: https://en.wikipedia.org/wiki/Observer_pattern#/media/File:W3sDesign_Observer_Design_Pattern_UML.jpg

Obvious, bad approaches : 
* Subject calls Observers on change => Subject need to know about Observers, which create circular dependency.
* Observer call Suject to check for change => performance issue, as a lot of check will be no change.
	
The pattern:
								
		Subject 					
	+ attach(Observer o)
	+ detach(Observer o)
	+ notify()

	interface Observer
	+ update(Suject s)

* Observer and Subject are interface/abstract class.
* Subject hold a list of Observers, and will notify all Observers when there is a state change.