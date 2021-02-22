package kubejs;

import kubejs.Ingredient;

@:native("ItemStack") extern class ItemStack extends Ingredient {
    var count:Int;
    var nbt:Dynamic;
    var chance:Float;
    var name:String;
    static function of(itemStack:Dynamic, ?count:Int, ?nbt:Dynamic):ItemStack;
    static function getList():Array<ItemStack>;
    static function getTypeList():Array<String>;
    function getCopy():ItemStack;
    function getId():String;
    function withCount(c:Int):Ingredient;
    function isEmpty():Bool;
    function isInvalidRecipeIngredient():Bool;
    function isBlock():Bool;
    function withNBT(nbt:Dynamic):Ingredient;
    function hasChance():Bool;
    function removeChance():Void;
    function withChance(chance:Float):ItemStack;
    function toString():String;
    function getEnchantments():Map<String, Int>;
    @:overload(function(id:String, level:Int):ItemStack {})
    function enchant(enchantments:Map<String, Int>):ItemStack;
    function getMod():String;
    function getLore():Array<String>;
    function ignoreNBT():Ingredient;
    function areItemsEqual(other:ItemStack):Bool;
    function isNBTEqual(other:ItemStack):Bool;
    function toResultJson():Dynamic;
    function getItemGroup():String;
}
