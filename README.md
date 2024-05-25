# structurizr-demo
This is a demo project to show my attempt at extending with implied relationships.  I aim to have two different .dsl files extending from a base `models.dsl` file.  One of those .dsl files would have `!impliedRelationships false` while the other didn't.

1. [c4-lite.dsl](https://github.com/obchap/structurizr-demo/blob/main/c4-lite/c4-lite.dsl) would have `!impliedRelationships false` in the workspace and show just the containers for the software system under view.
2. [c4-detailed.dsl](https://github.com/obchap/structurizr-demo/blob/main/c4-detailed/c4-detailed.dsl) would have all of the containers for the software system under view as well as any software systems that the containers interact with.

Here is a brief summary of what I am seeing:

- Using `!impliedRelationships false` in the [models/models.dsl](https://github.com/obchap/structurizr-demo/blob/a6ab3c0e435818911d3f01184d236afc59522655/models/models.dsl#L2) file works as expected.
- Using `!impliedRelationships false` in a .dsl file that extends `models.dsl` does not work as I would have hoped.

## Expectations of c4-lite.dsl container view

<img width="1432" alt="image" src="https://github.com/obchap/structurizr-demo/assets/4923649/4380dddf-dfa7-40ed-9806-edf6035bc44d">


## Expectations of c4-detailed.dsl container view

<img width="1435" alt="image" src="https://github.com/obchap/structurizr-demo/assets/4923649/c5ca64c2-fbd8-41dd-abf6-f610e2db8e5f">
