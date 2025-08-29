/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 712FDC1E
/// @DnDArgument : "key" "ord("W") "
var l712FDC1E_0;l712FDC1E_0 = keyboard_check(ord("W") );if (l712FDC1E_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 34A4F88E
	/// @DnDParent : 712FDC1E
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" ".1"
	motion_add(image_angle, .1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3300B181
/// @DnDArgument : "key" "ord("A") "
var l3300B181_0;l3300B181_0 = keyboard_check(ord("A") );if (l3300B181_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2437FB68
	/// @DnDParent : 3300B181
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 10D916BD
/// @DnDArgument : "key" "ord("D") "
var l10D916BD_0;l10D916BD_0 = keyboard_check(ord("D") );if (l10D916BD_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B60B658
	/// @DnDParent : 10D916BD
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 5A770003
var l5A770003_0;l5A770003_0 = mouse_check_button_pressed(mb_left);if (l5A770003_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 40E6EA18
	/// @DnDParent : 5A770003
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 305AE2C2
/// @DnDArgument : "margin" "20"
move_wrap(1, 1, 20);