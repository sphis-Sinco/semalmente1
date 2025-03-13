package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var player:FlxSprite;

	override public function create()
	{
		player = new FlxSprite().makeGraphic(32, 32, FlxColor.LIME);
		player.screenCenter();
		add(player);

		super.create();
	}

	override public function update(elapsed:Float)
	{

		super.update(elapsed);
	}
}
