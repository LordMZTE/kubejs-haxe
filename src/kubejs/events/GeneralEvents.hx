package kubejs.events;

import kubejs.Recipe.RecipeFilter;
import kubejs.Event;
import kubejs.Recipe;
import kubejs.Item.DynItem;

extern class RecipesEvent extends Event {
    function remove(filter:RecipeFilter):Void;
    function shaped(product:DynItem, recipe:Array<String>, items:Dynamic<DynItem>):Recipe;
    function shapeless(product:DynItem, input:Array<DynItem>):Recipe;
    function stonecutting(product:DynItem, input:DynItem):Recipe;
    function smelting(product:DynItem, input:DynItem):Recipe;
    function blasting(product:DynItem, input:DynItem):Recipe;
    function smoking(product:DynItem, input:DynItem):Recipe;
    function smithing(product:DynItem, a:DynItem, b:DynItem):Recipe;
    function custom(data:Dynamic):Recipe;
    function replaceInput(filter:RecipeFilter, fromItem:DynItem, toItem:DynItem):Void;
    function replaceOutput(filter:RecipeFilter, fromItem:DynItem, toItem:DynItem):Void;
}
