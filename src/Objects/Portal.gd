tool
extends Area2D


onready var anim_player: AnimationPlayer= $AnimationPlayer 
export var next_scene: PackedScene

func _on_Portal_body_entered(body: PhysicsBody2D) -> void:
	teleport()

func _get_configuration_warning() -> String:

	return "The next scene property cant be empty" if not next_scene else ""

func teleport() -> void:
	anim_player.play("Fade in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)
