package
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author Kevin
	 */
	public class Main extends Sprite
	{
		private var frog:Frog = new Frog();
		private var backGround:Background = new Background;
		private var loglist:Array = [];
		private var carList:Array = [];
		private var amountCars:int = 5;
		
		public function Main():void
		{
			if (stage)
				init()
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			addChild(backGround);
			addChild(frog);
			
			for (var i:int = 0; i < amountCars; i++)
			{
				var car:Car = new Car();
				
				addChild(car);
				carList.push(car);
				car.counter = i;
			}
			for (var l:int = 0; l < amountCars; l++)
			{
				var log:Logs = new Logs();
				
				addChild(log);
				loglist.push(log);
				log.counter = l;
			}
			var carsLength:int = carList.length;
			for (var j:int = 0; j < carsLength; j++)
			{
				carList[0].x = 112;
				carList[0].y = 228;
				
				carList[1].x = carList[0].x;
				carList[1].y = carList[0].y - 18;
				
				carList[2].x = carList[0].x;
				carList[2].y = carList[1].y - 18;
				
				carList[3].x = carList[0].x;
				carList[3].y = carList[2].y - 18;
				
				carList[4].x = carList[0].x;
				carList[4].y = carList[3].y - 18;
			}
			for (var k:int = 0; k < carsLength; k++)
			{
				loglist[0].x = 0;
				loglist[0].y = 120;
				
				loglist[1].x = loglist[0].x;
				loglist[1].y = loglist[0].y - 18;
				
				loglist[2].x = loglist[0].x;
				loglist[2].y = loglist[1].y - 18;
				
				loglist[3].x = loglist[0].x;
				loglist[3].y = loglist[2].y - 18;
				
				loglist[4].x = loglist[0].x;
				loglist[4].y = loglist[3].y - 18;
			}
			
			frog.x = 110;
			frog.y = 245;
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			stage.addEventListener(Event.ENTER_FRAME, loop);
		
		}
		
		private function loop(e:Event):void
		{
			frog.scaleX = 0.9;
			frog.scaleY = 0.9;
			if (carList[0].x > 240)
			{
				carList[0].x = -0;
			}
			else if (carList[2].x > 240)
			{
				carList[2].x = -0;
			}
			else if (carList[4].x > 240)
			{
				carList[4].x = -0;
			}
			
			if (carList[1].x < -0)
			{
				carList[1].x = 240;
			}
			else if (carList[3].x < -0)
			{
				carList[3].x = 240;
			}
			
			if (loglist[0].x > 240)
			{
				loglist[0].x = -0;
			}
			else if (loglist[2].x > 240)
			{
				loglist[2].x = -0;
			}
			else if (loglist[4].x > 240)
			{
				loglist[4].x = -0;
			}
			
			if (loglist[1].x < -0)
			{
				loglist[1].x = 240;
			}
			else if (loglist[3].x < -0)
			{
				loglist[3].x = 240;
			}
			
			carList[0].x += 5;
			carList[1].x -= 2;
			carList[2].x += 3;
			carList[3].x -= 4;
			carList[4].x += 1;
			
			
			loglist[0].x += 5;
			loglist[1].x -= 2;
			loglist[2].x += 3;
			loglist[3].x -= 4;
			loglist[4].x += 1;
			
			
			if (frog.hitTestObject(carList[0])||frog.hitTestObject(carList[1])||frog.hitTestObject(carList[2])||frog.hitTestObject(carList[3])||frog.hitTestObject(carList[4]))
			{
			frog.x = 110;
			frog.y = 245;
			}
		
		}
		
		private function keyUp(e:KeyboardEvent):void
		{
		
		}
		
		private function keyDown(e:KeyboardEvent):void //Movement function
		{
			if (e.keyCode == 38) //omlaag
			{
				frog.y -= 18;
				frog.rotation = 0;
			}
			if (e.keyCode == 40) //Omho
			{
				frog.y += 18;
				frog.rotation = 180;
			}
			if (e.keyCode == 39) //rechts
			{
				frog.x += 20;
				frog.rotation = 90;
			}
			if (e.keyCode == 37) //links
			{
				frog.x -= 20;
				frog.rotation = -90;
			}
		
		}
	
	}

}