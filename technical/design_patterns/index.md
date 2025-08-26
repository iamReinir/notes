# Design pattern

Common solution for well-known problem

## Creational
* [Builder](Builder.md) : Create a complex object in multiple steps (usually by method chaining). Seperate the contrusction of an object so that the same process can be use to create many type of different object.
* [Factory *or* Virtual Contructor](Factory.md) : Hide which concrete class is created. You just get the Interface object
* [Abstract Factory *or* Kit](Kit.md) : Create a family of related factories.
* [Singleton](Singleton.md) : Class with just one instance (share state lol) and one place to access it.
* [Prototype](Prototype.md) : Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.

## Structural
* [Adapter](Adapter.md) : A object that fit the interface of one object to another
* [Bridge](Bride.md) : Decouple abstraction from implementation by composition
* [Composite](Composite.md)
* [Decorator *or* Wrapper](Decorator.md) : Add functionality by wrapping an object.
* [Facade] (Facade.md) : Compose multiple objects/entire subsystem and expose simple interface to clients.
* [Flyweight *or* Object pool](Flyweight.md)
* [Proxy](Proxy.md) : Subtitute or placeholder for another object, to run something after/before the request get to the OG object.

## Behavioural
* [Chain of Responsibility](Chain.md) : Basically Middleware in ASP.NET core.
* [Command](Command.md)
* [Interpreter](Interpreter.md)
* [Iterator](Iterator.md) : go through a collection of objects without knowing how
* [Mediator.md](Mediator.md) : Restrict direct communications between objects and forces them to go through a *mediator*
* [Memento *or* Snapshot](Snapshot.md)
* [Observer](Observer.md) : Track an object's state.
* [Strategy](Strategy.md) : Change an object's internal behaviours.
* [State](State.md) : change object behaviour according to internal state
* [Visitor](Visitor.md) : Seperate behaviour to the data they operate on. Usually applied on graphs (ofc)
