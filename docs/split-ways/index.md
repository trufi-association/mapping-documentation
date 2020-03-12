# Documentation

## Split a way into two or more

Spliting ways (cuting one way into two or more) can be necessary when adding a relation that follows the way just for some while and **not** till the end. Adding the way to a relation without spliting it can have unwanted side effects. Spliting a way is also necessary when tags aren't consistent on the way (From position A to position B the tags differ from those from position C to position D).

![](josm-editor-splitwaysneeded.png)

The darkred one is our route we want to add to OSM as relation. The red one is the street (way) we have already in the OSM database. We see at some point they do not match. The way (street) in OSM does not end where our route begins to go its own way. That means we cannot add the street to the relation as a whole. That means we need to split the street already in OSM first at the position where our route goes its own way. 

## Spliting ways

We assume that you have JOSM already opened and went to a way you want to split.

1. Click on the way you want to split. It should turn red: ![](josm-editor-splitwaysneeded.png)

2. Now hold the _SHIFT_ key (one above the _Ctrl_ key) and select a node on the marked way where you want to split the way up into two. Usually you want to split at the position where the darkred line goes its own way (position: blue circle). A node is represented as a square with yellow borders like 
   
   ![](josm-editor-splitwaysneeded2.png)
   
   ![](josm-editor-splitwaysneeded4.png)

	After selecting it, it should also turn red.

4. In the topbar click on *Tools* and then on *Split way*. Alternatively press key *P*.![](josm-topbar-tools.png)

5. A dialog prompts you to decide which way segment should preserve history. Just ignore it and click *Okay*. Deselect everything by clicking on a free space on the map.
