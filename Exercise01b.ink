/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> sunken_ship_entrance

== sunken_ship_entrance == 
You are at the bottom of the ocean. You have found the entrance to a sunken pirate ship containing pirate treasure to be found. {not map_pick_up: There is a map lying on a stand to find treasure.} The ship contains two doors at the entrance, one facing east and the other facing west.
+ [Open the door facing east] -> door_facing_east
+ [Open the ship facing west] -> door_facing_west
+ [Pick up the map] -> map_pick_up

== door_facing_east == 
You are in a hallway facing east. You feel fatigued and your mind has suddenly blanked in fear. You forget where you are.
* {map_pick_up} [Use Map] -> east_hallway_has_become_familiar
+ [Go Back] -> sunken_ship_entrance
-> END

== door_facing_west == 
You are in a hallway facing west. there is a dead end.
+ [Go Back] -> sunken_ship_entrance
-> END

== map_pick_up ==
You now have a map. May it guide you.
* [Go Back] -> sunken_ship_entrance
-> END

== east_hallway_has_become_familiar ==
You have now discovered the treasure as you look up in relief. The treasuresure is right above you!
+ [But there is a slight problem.] -> problem
-> END

== problem ==

Algea is blocking the treasure chest! You scavange and try things that may come in handy. {not magic_trick: A magic trick may lead you to losing the treasure, or it may be your best bet.}
+ [Check right pocket] -> right_pocket
+ [Check left pocket] -> left_pocket
+ [Try magic trick your friend had taught you] -> magic_trick

== right_pocket == 
You found a fishing net. You throw it onto the algea and try to pull it off. But it gets stuck.
* {magic_trick} [Try magic trick that your friend taught you] -> ending
+ [Go Back] -> problem
-> END

== left_pocket == 
You found nothing.
+ [Go Back] -> problem
-> END

== magic_trick ==
You start giving it a few tries. You finally did the magic trick correctly. 
* [Go Back] -> problem
-> END

== ending ==
You now have a unvieled the chest and got rid of all the algea! Game complete.
-> DONE














