extends Panel

signal fade_in_finalizado

func reproduzir_animacao():
	$AnimationPlayer.play("fade_in")


func reproduzir_fadeout():
	$AnimationPlayer.play("fade_out")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fade_in":
		emit_signal("fade_in_finalizado")
		$AnimationPlayer.play("fade_out")
