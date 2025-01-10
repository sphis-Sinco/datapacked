package;

class FileManager
{
	public static var STATE_FOLDER:String = 'default';
	public static var SOUND_EXT:String = 'wav';

	public static function getPath(path:String, PATH_TYPE:PathTypes):String
	{
		if (PATH_TYPE == PACKS)
			return getPackPath('game/$path');

		return getAssetPath('game/$path');
	}

	public static function getAssetPath(path:String):String
		return 'assets/$path';

	public static function getPackPath(path:String):String
		return 'datapacks/$path';

	public static function getAssetFile(file:String, PATH_TYPE:PathTypes):String
		return getPath('$STATE_FOLDER/$file', PATH_TYPE);

	public static function getDataFile(file:String, PATH_TYPE:PathTypes):String
		return getPath('data/$file', PATH_TYPE);

	public static function getImageFile(file:String, PATH_TYPE:PathTypes):String
		return getPath('images/$file.png', PATH_TYPE);

	public static function getSoundFile(file:String, PATH_TYPE:PathTypes):String
		return getPath('$file.$SOUND_EXT', PATH_TYPE);
}

enum abstract PathTypes(String) from String to String
{
	public var ASSETS:String;
	public var PACKS:String;
}