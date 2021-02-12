package kubejs;

import haxe.extern.EitherType;

typedef DynItem = EitherType<String, Item>;

@:native("Item") extern class Item {
	static function of(id:String, ?count:Int, ?nbt:Dynamic):Item;
	function withChance(chance:Float):Item;
	function toResultJson():Dynamic;
}
