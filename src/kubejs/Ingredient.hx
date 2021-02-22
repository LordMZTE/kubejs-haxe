package kubejs;

import js.lib.RegExp;

@:native("Ingredient") extern class Ingredient {
    var stacks:Array<ItemStack>;
    static function of(ingredient:Dynamic):Ingredient;
    function isEmpty():Bool;
    function test(stack:ItemStack):Bool;
    function not():Ingredient;
    function getFirst():ItemStack;
    function withCount(count:Int):Ingredient;
    function toJson():Dynamic;
    function anyStackMatches(other:Ingredient):Bool;
}
