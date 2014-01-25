package entities;

import updatables.UpdatableBase;
import com.haxepunk.Entity;

class DieOnCollide extends UpdatableBase
{
	public override function moveCollideY(e:Entity)
	{
		parent.scene.remove(self);
	}
}