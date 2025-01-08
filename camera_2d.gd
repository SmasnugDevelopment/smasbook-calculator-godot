extends Camera2D


func move(x, y, ref):
	print(ref)
	self.global_position.x = x
	self.global_position.y = y
	self.global_rotation = ref.rotation
