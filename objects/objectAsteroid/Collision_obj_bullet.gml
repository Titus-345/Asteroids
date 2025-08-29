/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64CC02FA
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Obj_game.points"
Obj_game.points += 5;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E2BE19B
/// @DnDApplyTo : {obj_bullet}
with(obj_bullet) instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 24CFB7DC
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 02A96B19
	/// @DnDParent : 24CFB7DC
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37FF814E
	/// @DnDParent : 24CFB7DC
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spriteLargeAsteroid"
	if(sprite_index == spriteLargeAsteroid){	/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 731A3CFE
		/// @DnDParent : 37FF814E
		/// @DnDArgument : "times" "2"
		repeat(2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7CBA258B
			/// @DnDParent : 731A3CFE
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "objectid" "objectAsteroid"
			/// @DnDSaveInfo : "objectid" "objectAsteroid"
			newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", objectAsteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74ECEB7E
			/// @DnDParent : 731A3CFE
			/// @DnDArgument : "expr" "spriteMediumAsteroid"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spriteMediumAsteroid;}}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 46072D87
	/// @DnDParent : 24CFB7DC
	/// @DnDArgument : "times" "10"
	repeat(10){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 102D5846
		/// @DnDParent : 46072D87
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "objectDebris"
		/// @DnDSaveInfo : "objectid" "objectDebris"
		instance_create_layer(x + 0, y + 0, "Instances", objectDebris);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27BCCFE0
	/// @DnDParent : 24CFB7DC
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spriteMediumAsteroid"
	if(sprite_index == spriteMediumAsteroid){	/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6FC20775
		/// @DnDParent : 27BCCFE0
		/// @DnDArgument : "times" "2"
		repeat(2){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 72EB4557
			/// @DnDParent : 6FC20775
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "objectAsteroid"
			/// @DnDSaveInfo : "objectid" "objectAsteroid"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", objectAsteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14DEB8ED
			/// @DnDParent : 6FC20775
			/// @DnDArgument : "expr" " spriteSmallAsteroid "
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index =  spriteSmallAsteroid ;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A01EAD0
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382DA8EC
	/// @DnDParent : 0A01EAD0
	/// @DnDArgument : "var" "instance_number(objectAsteroid) "
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12 "
	if(instance_number(objectAsteroid)  < 12 ){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1C84B72A
		/// @DnDParent : 382DA8EC
		/// @DnDArgument : "spriteind" "spriteLargeAsteroid"
		/// @DnDSaveInfo : "spriteind" "spriteLargeAsteroid"
		sprite_index = spriteLargeAsteroid;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B007B80
		/// @DnDParent : 382DA8EC
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 41C853F2
	/// @DnDParent : 0A01EAD0
	else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 48162F1E
		/// @DnDParent : 41C853F2
		instance_destroy();}}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 641D0A8D
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));