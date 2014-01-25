package updatables;

import com.haxepunk.Entity;
import com.haxepunk.utils.Input;
import com.haxepunk.HXP;

class Gravity extends UpdatableBase
{
	public var gravityForce : Float;
	public var velocityY : Float;
	public var terminalVelocity:Float;
	
	public function new(gF:Float, tV:Float)
	{
		gravityForce = gF;
		terminalVelocity = tV;
		velocityY = 0;
		super("Gravity");
	}
	
	public override function update()
	{
		velocityY += gravityForce * HXP.elapsed;
		
		if(velocityY > terminalVelocity)
		{
			velocityY = terminalVelocity;
		}
		
		parent.moveBy(0, velocityY, ["Wall", "wall4"]);
		super.update();
	}
	
	public override function moveCollideY(e:Entity)
	{
		velocityY *= -0.1;
		super.moveCollideY(e);
		return true;
	}
}