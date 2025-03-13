package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	// Sprites
	var player:FlxSprite;

	// Controls
	var left_key:Bool;
	var right_key:Bool;
	var down_key:Bool;
	var up_key:Bool;

	// Player variables
	var player_movement_speed = 10;

	override public function create()
	{
		playerInitalization();

		super.create();
	}

	function playerInitalization():Void
	{
		player = new FlxSprite().makeGraphic(32, 32, FlxColor.LIME);
		player.screenCenter();
		add(player);
	}

	var tick:Int = 0;
	final tick_goal = 5;

	override public function update(elapsed:Float)
	{
		tick++;

		if (tick == tick_goal)
		{
			tick = 0;
			controlManagement();
		}

		super.update(elapsed);
	}
	function controlManagement():Void
	{
		left_key = ControlManagement.anyPressed([LEFT, A]);
		right_key = ControlManagement.anyPressed([RIGHT, D]);
		down_key = ControlManagement.anyPressed([DOWN, S]);
		up_key = ControlManagement.anyPressed([UP, W]);

		if (left_key)
		{
			player.x -= player_movement_speed;
		}
		else if (right_key)
		{
			player.x += player_movement_speed;
		}
		else if (down_key)
		{
			player.y += player_movement_speed;
		}
		else if (up_key)
		{
			player.y -= player_movement_speed;
		}
	}
}
