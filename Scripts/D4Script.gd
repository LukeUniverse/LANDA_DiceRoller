extends Node2D

#I am just declaring here that we are going to want
#to be able to access some TextEdits in our Scene
var txtedit_count: TextEdit
var txtedit_result: TextEdit
var textedit_modifier: TextEdit

# Called when the node enters the scene tree for the first time.
func _ready():
	#And here I am actually getting REFERENCES to those text edits
	#so now each of these can be used to get information about the nodes
	#I am telling them I want them to look at.
	#Since _ready() is called as soon as this node enters the scene tree
	#these references will get set up and be ready to use anywhere else in the script
	txtedit_count = get_node("TextEdit_Count")
	txtedit_result = get_node("TextEdit_Result")
	textedit_modifier = get_node("TextEdit_Modifier")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#We're not currently using _process for anything, so we could in theory delete it.
#But it's not hurting anything to leave it there (though godot may give us an informational warning
#about how delta gets declared but never used.

#This is a function I added, and if you click on the Button_Roll
#that is a child of the Node2D_D4Area, and switch from it's Inspector to it's Node tab
#you can see where I hooked up it's Pressed event to this. 
func Button_D4Roll_Pressed():
	#Here we are getting a variable, telling godot we want it to be an int (interger)
	#and then using int() to turn the text of our count control into an int
	var number_of_d4 : int = int(txtedit_count.text)
	#Then we declare ourself an int named total, so that we can use it later
	var total : int = 0
	#Then we want a for loop where we will do the loop as many times as D4 we are rolling
	for i in range(number_of_d4):
		#right out of the gate, we want to get a random number between 1 and 4 (our die roll)
		var random_range_int = randi_range(1, 4)
		#Then we'll take that roll, 
		#and add it to our total by setting total's value to be what ever it currently is 
		#PLUS our die roll
		total = total + random_range_int
	#once we're outside of the loop, we'll want to add our modifier to the total as well
	total = total + int(textedit_modifier.text)
	#and then finally we want to turn our total (which is an int) into a string
	#we do that with the str() function
	#so this bit here is turning it into a string before setting our result textedit's value to it.
	txtedit_result.text = str(total)
	

	
