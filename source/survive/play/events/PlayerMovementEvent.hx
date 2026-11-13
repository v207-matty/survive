package survive.play.events;

import flixel.FlxG;
import survive.backend.events.PlayEvent;

class PlayerMovementEvent extends PlayEvent
{
	public var control_left(get, never):Bool;

	function get_control_left():Bool
		return FlxG.keys.anyJustPressed([A, LEFT]);

	public var control_right(get, never):Bool;

	function get_control_right():Bool
		return FlxG.keys.anyJustPressed([D, RIGHT]);

	override function canRun():Bool
	{
		return player != null && (control_left || control_right);
	}

	override function dispatch()
	{
		super.dispatch();

		if (control_left)
			player.x -= player.width;

		if (control_right)
			player.x += player.width;

		if (player.x < 0)
			player.x = 0;

		if (player.x > FlxG.width - player.width)
			player.x = FlxG.width - player.width;
	}
}
