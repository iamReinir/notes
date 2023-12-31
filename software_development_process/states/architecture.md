[Back to index](../SDP_index.md)

# Architecture:
Software architecture is about partitioning large system into smaller ones that can be built seperately and has business value individually
It's allow:
* Parallelization
* help organize workflow and resources
* define the build vs. buy problem.

# Design process:
* System structuring (decide the interface)
* Control modeling (flow of control)
* Modular decomposition (partitioning and resources management)

## Software Quality Attributes
* Performance
* Reliability
* Testability
* Security
* Usability

## Some common architectures
* Pipe-and-filter : modules have the same format for input and output, therefore the modules can be mix-and-match according to demand.
* blackboard : blackboard contains shared data, will provide interface for modules to use.
* Layered : allow communication between nearby layer only. Protect the lower layers from changes from the upper layers (like the internet)
* Client-server
* Event-based : if modules fire event, the Event Manager will check the event and decide what module will deal with that event.

### subsystem vs. module:
subsystem : independent system which hold business value.
module : a part of a system that cant function individually.