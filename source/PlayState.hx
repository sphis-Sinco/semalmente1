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

	override public function update(elapsed:Float)
	{
		controlManagement();

		super.update(elapsed);
	}
	function controlManagement():Void
	{
		left_key = ControlManagement.anyJustReleased([LEFT, A]);
		right_key = ControlManagement.anyJustReleased([RIGHT, D]);
		down_key = ControlManagement.anyJustReleased([DOWN, S]);
		up_key = ControlManagement.anyJustReleased([UP, W]);

		if (left_key) {}
		else if (right_key) {}

		if (down_key) {}
		else if (up_key) {}
	}
}
