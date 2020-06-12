# Topbar: _Tools_ in JOSM

You might have seen![](josm-topbar-tools.png)

and you wonder what it is all about. Here I will give you a quick overview.

## Preparing so the utility is useful

1. We need a way and a position to perform actions with. The selection will turn red like ![](josm-editor-selectway.png)

    By holding down the SHIFT key and clicking on other ways you can select more than just one way. For some functions to be useful this is necessary.

2. We click on _Tools_ in the topbar: ![](josm-topbar-tools.png)

3. Then we have the following options depending our selection:
   
   - **Split way**: Used to make two ways out of one way. This is useful when you add a route to OSM and a way is longer than the route follows it. Usually you want to split at the position where the darkred line goes its own way. (see picture above). See also my [dedicated tutorial](../split-ways/index.md).
   - **Combine way**: Used to make one way out of two ways. The opposite to the _Split way_ feature. For this feature to be effective you need two ways selected by holding down the SHIFT key and selecting them.
     - Unselected: ![](josm-editor-twoways.png)
     - Selected: ![](josm-editor-twowaysselected.png)
   - **Reserve direction**: Used to reserve the direction of one or more ways. This just changes the technical direction how the data was entered (beginning to draw the way from left to right or backwards). Mappers use this tool just to make technical data more clean. This feature does not affect the interpretation of the data, it doesn't affect tags. **You likely don't need it.**
   - **Simplify way**: Used to remove unncessary nodes from a way. Technically a bunch of nodes connected to each other in a specified order represent a way. This is another option to make OSM data more beautiful, it does not affect the tags from the way itself. Nodes on a way usually don't have tags (are empty).
   - **Align nodes in a circle**: This function does what it says. This is another feature you rarely need.
   - **Align nodes in a line**: Useful if you have a bunch of nodes like different points in a coordinate system in maths (e.g. data representation as a _cloud_.) in a specified treshold e.g. within range of 0.5cm and you want to create a line out of this node then this function is for you.
   - **Distribute Nodes**: ToDo: find out what it does and create an easy to understand explanation.
   - **Orthogonalise Shape**: ToDo: find out what it does and create an easy to understand explanation.
   - **Follow line**: For this to be effective you need two selected ways. A way can share nodes with another line. This function continues drawing that line.
   - **Add node**: A way is a representation of nodes connected to each other in a sorted linear order. This function adds a node to the selected way and prompts you for entering its coordinates.
   - **Move node**: Select just one node for this function to be effective. It prompts you entering its new coordinates.
   - **Create circle**: Similiar to function _Align nodes in a circle_ but it works with just three nodes.
   - **Merge nodes**: For this to be effective you need to just select nodes in order to merge them together: Merging their tags.
   - **Join node to way** Arrange a selected node's and a selected way's marriage.
   - **Move node onto way**: Moves and includes the selected node to the nearest way.
   - **Disconnect node from way**: Arrange a selected node's and a selected way's seperation.
   - **UnGlue ways**: Duplicate nodes shared by more than one way.
   - **Join overlapping areas**: Join an area (closed way) which overlaps with another area into that area.
   - **Create multipolygon**: Create a multiploygon out of the selection of ways and nodes. A multipolygon allows the exclusion of something inside of it and is useful in cases where something is in the area of a closed way but which has its own boundaries for making entering something more difficult.
   - **Update multipolygon**: Similiar to the previous function but updates the area with the selected ways and nodes.
