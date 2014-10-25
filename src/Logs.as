package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Kevin
	 */
	public class Logs extends Sprite
	{
		private var asset1:Log = new Log();
		private var asset2:Log = new Log();
		private var asset3:Log = new Log();
		private var asset4:Log = new Log();
		private var asset5:Log = new Log();
		public var counter:int = 0;
		private var totalcars:int = 2;
		private var cararray:Array = [];
		
		public function Logs()
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