extends CharacterBody3D

# Jennifer's Notes:
# I found out that character body comes with its own default script.
# For the sake of consistency. I left most of this unchanged.

# This is a new addition. Meant for head rotation.
@onready var head_attempt = $"Head Attempt"

const SPEED = 5.0
const JUMP_VELOCITY = 4.5 # I'm actually kinda surprised this is allowed by default, but I'm glad. 

# Jennifer's Notes: This variable is an original. Used to determine speed of player moving the mouse.
# Oddly enough, this variable has to be negative in order to prevent it from being backwards.
# i.e. If I drag the mouse left, it will go right, and vice versa.
const MOUSE_MOVMENT = -0.01 

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

# Jennifer's Notes:
# This is meant to hide the mouse for a seemless first-person experience.
# Use alt-tab to exit the window if needed.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _input(event):
	if event is InputEventMouseMotion:
		# I'm pretty sure that this is so x & y coordinate of movement is seemless.
		rotate_y(event.relative.x * MOUSE_MOVMENT)
		# I tried the inverse so you could get multiple axies, but it got all wonky.
		# rotate_x(event.relative.y * MOUSE_MOVMENT)

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("leftward", "rightward", "forward", "backward") # FROM JENNY: I changed the input areas HERE.
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
