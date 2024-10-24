extends Node2D

#This is the script for the 'MainScene'
#Since this is really just a one window app
#we could have put ALL of our scripting stuff in here
#I decided to seperate it out though so that 
#Each individual type of die can have it's own script
#That way you could easily try and add a d6 section if you wanted to

#_ready and _process are functions that are part of Godot itself.
#You can read their descriptions to see what they do.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#This is a function I added to handle the close button being pressed.
#If you look at the Button_Close node in the sceen tree 
#and swap from the 'Inspector' tab to the 'Node' tab
#(in the top right of your screen)
#You can see where the node itself got connected to this function
#via it's pressed() event (which of course triggers any time the button is pressed)

func Button_Close_Pressed():
	get_tree().quit()
