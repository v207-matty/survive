package survive.backend.events;

import survive.play.Player;

class PlayEvent extends Event
{
	public var game:PlayState;

	public var player(get, never):Player;

	function get_player():Player
		return game?.player;

	public function new(game:PlayState)
	{
		super();

		this.game = game;
	}

	override function canRun():Bool
		return game != null;
}
