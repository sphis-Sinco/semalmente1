package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var player:FlxSprite;
	var playerSpeedVariables:FlxPoint = new FlxPoint(0, 0);

	final player_gravity_value = 0.1;
	final player_jumped = FlxG.keys.anyJustReleased([SPACE, Z]);

	override public function create()
	{
		player = new FlxSprite().makeGraphic(32, 32, FlxColor.LIME);
		player.screenCenter();
		add(player);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		playerSpeedVariables.y -= player_gravity_value;

		if (player_jumped)
		{
			playerSpeedVariables.set(playerSpeedVariables.x, 20);
		}

		player.y -= playerSpeedVariables.y;

		super.update(elapsed);
	}
}
