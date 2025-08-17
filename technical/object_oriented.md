# Object Oriented Programming

## Origins of OOP

The first concepts related to object-oriented programming began to emerge in the 1960s with the creation of the Simula language.

Developed by Ole-Johan Dahl and Kristen Nygaard at the Norwegian Computing Center (Norsk Regnesentral), Simula was originally created for performing simulations.

Simula 67 was the version of Simula that introduced concepts such as classes, objects, and inheritance. Although it was not known by the name “object-oriented” at that time, these fundamental concepts laid the groundwork for future developments.

In the 1970s, Alan Kay, a researcher at Xerox PARC, coined the term “object-oriented” to describe a programming approach based on the simulation of biological systems. Kay developed the Smalltalk programming language, which became a significant influence on the later development of object-oriented programming.

Smalltalk was the first programming language to fully implement the object-oriented paradigm as we know it today. Smalltalk introduced a series of revolutionary ideas, including message sending between objects, encapsulation, and dynamic inheritance.

## Meaning drift

Alan Kay, who coined the term "object-oriented programming" (OOP), defined OOP primarily in terms of messaging, local retention and protection (encapsulation) and hiding of state-process, and extreme late-binding of all things. He emphasized that OOP was about objects communicating by sending messages to each other, managing their own state securely and locally, and deferring decisions about behavior (late-binding) until runtime rather than focusing on classes or inheritance as is common today.

In his own words from 2003:
"OOP to me means only messaging, local retention and protection and hiding of state-process, and extreme late-binding of all things".

Kay also expressed regret that the term "objects" caused many to focus on what he considered a lesser idea, rather than the core notion of messaging. He derived his vision from biological systems where entities interact primarily by messaging, and his ideas were heavily realized in the Smalltalk language developed at Xerox PARC.

To summarize Alan Kay's essence of OOP:

* Objects are independent entities that
* Communicate via message passing (not simple method calls)
* Manage their own internal state privately (encapsulation)
* Decide behavior dynamically at runtime (extreme late-binding)

This contrasts with many modern mainstream OOP usages that emphasize class hierarchies and inheritance.

## The four pillars of OOP

They have an interesting problem is that they *do not* have a concrete definition. I will at least define them how SWE usually define them.

1. Encapsulation - Hide the messy stuff inside
> Group related data and behavior together, and restrict direct access to the internal details so that interaction happens through a well-defined interface.
Key idea: You can change the internals without breaking code that uses it.
2. Abstraction - Talk about what it does, not how it does inheritance
> Define entities in terms of what operations they support rather than their concrete implementation.
3. Inheritance - Reuse or extend behavior from existing definitions
> Create new entities by reusing and extending existing ones, either by sharing implementation or behavior definitions.
4. Polymorphism - One interface, many forms
> The ability to write code that can work with values of different types through a shared interface.


