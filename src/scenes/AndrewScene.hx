package scenes;

import entities.Spring;
import com.haxepunk.graphics.Image;
import updatables.*;

class AndrewScene extends MainScene
{
	public override function begin()
	{
		super.begin();
		createMap("maps/jode.tmx", "graphics/bricks.png", "Wall");
		
		var test : Spring;
		test = new Spring("Test");
		test.graphic = Image.createRect(32, 32, 0xDDEEFF);
		test.setHitbox(32,32);
		test.addUpdt(new Gravity(50, 15));
		test.addUpdt(new PlayerControlled(4,Key.UP,Key.DOWN,Key.LEFT,Key.RIGHT,Key.O,Key.P));
		add(test);
	}
}