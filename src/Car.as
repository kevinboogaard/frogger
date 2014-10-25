package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Kevin
	 */
	public class Car extends Sprite
	{
		private var asset1:Car1 = new Car1();
		private var asset2:Car2 = new Car2();
		private var asset3:Car3 = new Car3();
		private var asset4:Car4 = new Car4();
		private var asset5:Car5 = new Car5();
		public var counter:int = 0;
		private var totalcars:int = 2;
		private var cararray:Array = [];
		
		public function Car()
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		public function loop(e:Event):void
		{
			if (counter == 1)
			{
				addChild(asset2);
			}
			else if (counter == 2)
			{
				addChild(asset4);
			}
			else if (counter == 3)
			{
				addChild(asset5);
			}
			else if (counter == 4)
			{
				addChild(asset3);
			}
			else
			{
				addChild(asset1);
				
			}
		
		}
	
	}
}