package updatables;

import com.haxepunk.utils.Input;
import com.haxepunk.HXP;

class SpringJump extends UpdatableBase
{
	public var velocity : Float;
	private var releaseButton : String;
	private var timeOfCompression : Float;
	
	public function new(v:Float,rB:String)
	{
		super("SpringJump");
		releaseButton = rB;
		velocity = v;
		timeOfCompression = HXP._systemTime;
	}
	
	public override function update()
	{
		if(!Input.check(releaseButton))
		{
			trace("jump!");
		}
		
		super.update();
	}
}