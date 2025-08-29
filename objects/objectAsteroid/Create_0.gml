/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A73766A
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "speed "
speed  = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 21CFF0BF
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4F66C054
/// @DnDArgument : "var" "image_angle "
/// @DnDArgument : "max" "360"
image_angle  = (random_range(0, 360));