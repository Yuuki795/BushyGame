package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.gamepad.mappings.MayflashWiiRemoteMapping;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import lime.graphics.Image;

class TitleState extends FlxState
{
	override public function create():Void
	{
		super.create();

		var init_x:Int = Math.floor(FlxG.width / 2 - 40);

		var btn_new = new FlxButton(init_x, 50, "RPG Test", rpgTest);

		var btn_load = new FlxButton(init_x, 80, "Rhythm Test", rhythmTest);

		add(btn_new);

		add(btn_load);
	}

	private function rpgTest():Void
	{
		FlxG.switchState(new RPGState());
	}

	private function rhythmTest():Void
	{
		FlxG.switchState(new RhythmState());
	}
}
