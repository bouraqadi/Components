# Components
Component-Based Software Development solutions with Pharo.

## Hydrogen
Simple component model. Each component has a lifecycle with 2 states : Started or Stopped.
A component should be started once it has been initialized and its required ports connected.

### Component
A component is an object which is instance of `HyComponent` or its subclasses.
Each component has a 1 unique provided port and 0 or more required ports.
Component classes define 

### Ports
- Provided port: Allows performing any message. That is the reference of the component.
- Singleton required port: That is an instance variables with setter accessor for connections. Allows sending a message to another component just like objects do.
- Collection required port: That is an instance variable referencing a `HyCollectionPort`. Allows sending a specific message with 0 or more args to a set of components attached to the port.
- ID filtering collection port. That is an instance variable referencing a `HyIdFilteringCollectionPort`. Allows sending a specific message with 0 or more args to a subset of components attached to the port. The subset is defined dynamically based on an id.


### Install Hydrogen
To install Hydrogen evaluate the following in a playground.
```Smalltalk
Metacello new
    baseline: 'HydrogenComponents';
    repository: 'github://bouraqadi/Components';
    load.
```
