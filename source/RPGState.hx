// RPG Style Game State
package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.tile.FlxTilemap;

class RPGState extends FlxState
{
	var player:Player;
	private var tileMap:FlxTilemap;

	static var TILE_WIDTH:Int = 16;
	static var TILE_HEIGHT:Int = 16;

	override public function create()
	{
		tileMap = new FlxTilemap();

		tileMap.loadMapFromCSV(Paths.csv("map"), Paths.image("tiles"), TILE_WIDTH, TILE_HEIGHT, 0, 1);

		add(tileMap);
		player = new Player(21, 21);
		add(player);
		FlxG.camera.follow(player, TOPDOWN, 1);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
