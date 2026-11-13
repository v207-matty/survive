package survive;

import survive.play.Block;
import flixel.group.FlxSpriteContainer.FlxTypedSpriteContainer;
import survive.play.events.*;
import survive.backend.SurState;
import survive.play.Player;
import flixel.FlxState;

class PlayState extends SurState
{
	public var player(default, null):Player;

	public var blocks(default,null):FlxTypedSpriteContainer<Block>;

	public var initalized = {world: false,};

	override public function create()
	{
		super.create();

		add(blocks = new FlxTypedSpriteContainer<Block>());
		add(player = new Player());

		addEvent(new PlayerMovementEvent(this));

		runEvent(new WorldCreationEvent(this));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
