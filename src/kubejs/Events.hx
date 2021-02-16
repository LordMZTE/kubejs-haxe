package kubejs;

import kubejs.events.Event;
import kubejs.events.server.RecipesEvent;
import kubejs.events.server.TagsEvent;

class Events {
    public static inline function onEvent<T:Event>(event:EventType<T>, handler:T->Void) {
        new OnEvent(event, handler);
    }
}

@:enum abstract EventType<T:Event>(String) to String from String {
    var RecipesEventType:EventType<RecipesEvent> = "recipes";
    var TagsEventType:EventType<TagsEvent> = "item.tags";
}

@:native("onEvent") private extern class OnEvent {
    @:selfCall function new<T:Event>(event:EventType<T>, handler:T->Void):Void;
}
