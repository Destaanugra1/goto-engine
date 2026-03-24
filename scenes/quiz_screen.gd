extends Control

# ambil node
@onready var progress = $Timer
@onready var label = $Timer/TimeLabel

# timer
var max_time = 30
var time_left = 30

func _ready():
	# set awal progress bar
	progress.min_value = 0
	progress.max_value = max_time
	progress.value = max_time
	
	# set label awal
	label.text = str(max_time) + "s"

func _process(delta):
	time_left -= delta
	
	if time_left < 0:
		time_left = 0
	
	# update progress bar
	progress.value = time_left
	
	# update label (detik)
	label.text = str(int(time_left)) + "s"
