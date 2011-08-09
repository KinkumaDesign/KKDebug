package kinkuma.util
{
	import flash.external.ExternalInterface;

	public class KKConsole
	{
		public static function log(text:String):void
		{
			if(ExternalInterface.available){
				ExternalInterface.call("console.log", text);
			}
		}
	}
}