extends TextureRect
var origin_texture
var preview_texture



# Called when the node enters the scene tree for the first time.
func _get_drag_data(at_position):
	preview_texture = TextureRect.new()
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(30,30)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	set_drag_preview(preview)
	
	origin_texture = texture
	texture = null

	return preview_texture.texture

func _can_drop_data(at_position, data):
	return data is Texture2D

func _drop_data(at_position, data):
	texture = data


		
		
		
	
		


		

