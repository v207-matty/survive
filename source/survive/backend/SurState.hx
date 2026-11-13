package survive.backend;

import survive.backend.events.Event;
import flixel.group.FlxGroup;
import flixel.FlxState;

class SurState extends FlxState
{
	public var events:Array<Event> = [];

	public function addEvent(event:Event)
	{
		if (event == null || events.indexOf(event) > -1)
			return;

		events.push(event);
	}

	public function runEvent(event:Event)
	{
		if (event == null)
			return;

		if (event.canRun())
			event.dispatch();
	}

	public function removeEvent(event:Event)
	{
		if (events.indexOf(event) == -1)
			return;

		events.remove(event);
	}

	public function runOnEvents(method:Event->Void)
	{
		for (event in events)
			if (event != null)
				method(event);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		runOnEvents(event -> if (event.canRun()) event.dispatch());
	}

	override function destroy()
	{
		super.destroy();

		runOnEvents(event -> event.destroy());
	}
}
