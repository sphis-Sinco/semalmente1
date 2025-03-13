package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var player:FlxSprite;

	override public function create()
	{
		player = new FlxSprite();
		player.makeGraphic(32, 32, 0xFF0000);
		player.screenCenter();
		add(player);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
