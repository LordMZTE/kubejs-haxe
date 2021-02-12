package kubejs;

import kubejs.Event;
import kubejs.events.GeneralEvents.RecipesEvent;

class Events {
	public static inline function onEvent<T:Event>(event:EventType<T>, handler:T->Void) {
		new OnEvent(event, handler);
	}
}

@:enum abstract EventType<T:Event>(String) to String from String {
	var RecipesEventType:EventType<RecipesEvent> = "recipes";
}

@:native("onEvent") private extern class OnEvent {
	@:selfCall function new<T:Event>(event:EventType<T>, handler:T->Void):Void;
}
