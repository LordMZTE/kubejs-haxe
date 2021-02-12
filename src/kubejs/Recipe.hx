package kubejs;

typedef RecipeFilter = {
	?id:String,
	?input:String,
	?output:String,
	?mod:String,
	?type:String
};

extern class Recipe {
	function merge(data:Dynamic):Recipe;
	function id(id:String):Recipe;
	function group(g:String):Recipe;
}
