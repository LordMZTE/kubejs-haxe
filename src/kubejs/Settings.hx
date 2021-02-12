package kubejs;

@:native("settings") extern class Settings {
    static var logAddedRecipes:Bool;
    static var logRemovedRecipes:Bool;
    static var logSkippedRecipes:Bool;
    static var logErroringRecipes:Bool;
}
