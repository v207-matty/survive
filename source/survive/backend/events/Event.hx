package survive.backend.events;

import flixel.util.FlxDestroyUtil.IFlxDestroyable;

class Event implements IFlxDestroyable
{
	public function new() {}

	public function canRun():Bool
		return true;

	public function dispatch() {}

	public function destroy() {}
}
