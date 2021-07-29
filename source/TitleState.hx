package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class TitleState extends FlxState
{
	override public function create():Void
	{
		super.create();

		var init_x:Int = Math.floor(FlxG.width / 2 - 40);

		var btn_new = new FlxButton(init_x, 50, "New game", onNew);

		var btn_load = new FlxButton(init_x, 80, "Load", onLoad);

		add(btn_new);

		add(btn_load);
	}

	private function onNew():Void
	{
		FlxG.switchState(new RPGState());
	}

	private function onLoad():Void
	{
		trace("Load...");
	}
}
