package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import kinkuma.util.KKConsole;
	
	[SWF(width="450",height="450",backgroundColor="0xffffff")]
	public class KKConsoleUsage extends Sprite
	{
		private var _clickTimes:int = 0;
		
		public function KKConsoleUsage()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		protected function onAddedToStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			stage.addEventListener(MouseEvent.CLICK, onStageMouseClick);
		}
		
		protected function onStageMouseClick(event:MouseEvent):void
		{
			_clickTimes++;
			var logText:String = "You clicked " + _clickTimes + " time";
			if(_clickTimes > 1){
				logText += "s";
			}
			KKConsole.log(logText);
		}
	}
}