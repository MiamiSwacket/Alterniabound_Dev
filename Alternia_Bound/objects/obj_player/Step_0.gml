//keyboard input
#region
var _keyright = keyboard_check(ord("D"));
var _keyleft = keyboard_check(ord("A"));
var _keyup = keyboard_check(ord("W"));
var _keydown = keyboard_check(ord("S"));
#endregion  
// You can write your code in this editor
#region
var _xkey = _keyright - _keyleft;
var _ykey = _keyup - _keydown;
movedirection = point_direction( 0, 0, _xkey, _ykey );


var _speed = 0;
var _inputlevel = point_direction( 0, 0, _xkey, _ykey );
_inputlevel = clamp( _inputlevel, 0, 1);
_speed = movespeed * _inputlevel;

var _xspeed = lengthdir_x( _speed, movedirection );
var _yspeed = lengthdir_y( _speed, movedirection );

//Collisions
if place_meeting( x + _xspeed, y, obj_wall )
{
	_xspeed = 0;
}
if place_meeting( x, y + _yspeed, obj_wall )
{
	_yspeed = 0;
}

//player movement
y += _yspeed;
x += _xspeed;


#endregion