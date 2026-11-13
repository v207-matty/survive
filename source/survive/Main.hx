package survive;

import openfl.events.Event;
import flixel.FlxG;
import flixel.system.FlxAssets;
import openfl.text.TextFormat;
import lime.app.Application;
import openfl.text.TextField;
import flixel.FlxGame;

class Main extends FlxGame
{
	public static var VERSION(get, never):String;

	static function get_VERSION():String
		return Application.current.meta.get('version');

	public function new()
	{
		super(0, 0, PlayState);
	}
}
