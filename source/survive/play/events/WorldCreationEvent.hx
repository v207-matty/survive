package survive.play.events;

import flixel.FlxG;
import survive.backend.events.PlayEvent;

class WorldCreationEvent extends PlayEvent
{
	override function canRun():Bool
		return !game?.initalized?.world;

	override function dispatch()
	{
		super.dispatch();

		var widthBlocks = Math.round(FlxG.width / 16);
		var heightBlocks = Math.round(FlxG.height / 16);

		var groundLayer = heightBlocks - 2;

		for (y in 0...heightBlocks)
		{
			var layer = y - groundLayer;

			if (layer < 0)
				continue;

			for (x in 0...widthBlocks)
				game.blocks.add(new Block(x, groundLayer + layer));
		}

		player.x = (widthBlocks / 2) * 16;
		player.y = (groundLayer - 1) * 16;

		game.initalized.world = true;
	}
}
