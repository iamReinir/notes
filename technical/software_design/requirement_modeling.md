# COMET

COMET - Collaborative Object Modeling and Architectural Design Method.

COMET is an iterative use-case driven and object-oriented method that specifically addresses the requirements, analysis and design modeling phases of the sofware development lofe cycle.

The COMET use case-based software life cycle model is a highly iterative process based around the use case concept.

In the requirements model, the functional requirements of the system are ddescribed in terms of actors and use cases. Each use case defines a sequence of interactions between one or more actors and the system.

In the analysis model, the use case is realized to describe the objects that participate in the use case and their interactions.

In the design model, the software architectyure is developed, describing components and their interfaces.

(figure)

## Requirement Modeling

During the requirements modeling phase, a requirements model is developed. The system's functional requirements are described in terms of actors and use cases. A narrative description of each use case is developed. User inputs and active participation are essential to this effort. If the requirements are not well understood, a throwaway prototype can be developed to help clarify the requirements.

## Analysis Modeling

In the analysis modeling phase, static and dynamic models of the system are develped. The static model defines the structural relationships among problem domain classes. 

The classes and their relationships are depicted on class diagrams. Object structuring criteria are used to determine the objects to be considered for the analysis model. A dynamic model is then developed in which the use cases form the requirements model are relized to show the objectss that participate in each use case and how they interaact with each other. Objects and their interactions are depucted on either communication diagrams of sequence diagrams. State dependent objects are defined using statecharts.

## Design Modeling

In this phase, the software architecture of the system is designed, in which the analysis model is mapped to an operational environment. Thee analysis model, with its emphasis on the problem domain is mapped to the design model, with its emphasis on the solution domain. Subsystem structureing criteria are provided to structure the system into subsystems, which are considered as aggregate or composite objects. Special consideration is given to designing distributed subsystems as configurable components that communicate with each other using messages. Each subsystem is then designed.

# Requirement modeling

There are two main reasons for developing a new software system:
- Replacing a manual system
- Replacing an existing software system.

Whether developing a new system or replacing an existing system, it is very important do specify the requirements of the new system percisely and unambiguously. The requirements of each group of users must be understood and specified.

## Analysis
Analyse the requirements - which may include:
- interview the users
- analyse the existing systems, manual or automated.

Questions to ask the users include: 
- What is your role in the current system?
- How do you use the current system?
- What are the advantages and limitations of the current system?
- What features should the new system provides?
- What features should the new system NOT provides?

You should be able to decide:
- What functions should be done differently
- What functions should be added
- Which functions should continue using the old system.
- Which functions should be removed
- What is the non-functional requirements

## Specification
The requirements specification is the document that needs to be agreed on by the requirements analysts and the users. It is the starting point for the subsequent design and development, so it must also be understood by the developers. Both functional requirements and nonfunctional requirements need to be specified.
