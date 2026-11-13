package survive.play;

import flixel.util.FlxColor;
import flixel.FlxSprite;

class Block extends FlxSprite
{
	override public function new(x = 0, y = 0)
	{
		super(x * 16, y * 16);

		makeGraphic(16, 16, FlxColor.WHITE);
	}
}
