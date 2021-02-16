package kubejs.events.server;

import haxe.extern.EitherType;
import js.lib.RegExp;
import kubejs.events.Event;

extern class TagsEvent extends Event {
    var type:String;
    @:native("get") function getTag(tag:String):Tag;
    function add(tag:String, ids:TagFilter):Tag;
    function remove(tag:String, ids:TagFilter):Tag;
    function removeAll(tag:String):Tag;
}

typedef TagFilter = Array<EitherType<String, RegExp>>;

extern class Tag {
    function add(ids:TagFilter):Tag;
    function remove(ids:TagFilter):Tag;
    function removeAll():Tag;
}
