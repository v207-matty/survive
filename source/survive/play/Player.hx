package survive.play;

import flixel.util.FlxColor;
import flixel.FlxSprite;

class Player extends FlxSprite
{
	public function new()
	{
		super();

		makeGraphic(16, 16, FlxColor.LIME);
	}
}
