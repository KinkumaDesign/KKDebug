package kinkuma.util
{
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class KKLogger extends Sprite
	{
		private var _textField:TextField;
		private var _bg:Shape;
		
		public function KKLogger(aWidth:int = 200, aHeight:int = 150)
		{
			_textField = new TextField();
			_textField.multiline = true;
			_textField.width = aWidth;
			_textField.height = aHeight;
			addChild(_textField);
			var tf:TextFormat = new TextFormat();
			tf.font = "_sans";
			tf.color = 0xffffff;
			tf.size = 10;
			_bg = new Shape();
			addChildAt(_bg, 0);
			var g:Graphics = _bg.graphics;
			g.beginFill(0x000000, 0.8);
			g.drawRect(0,0,aWidth, aHeight);
			g.endFill();
			_textField.defaultTextFormat = tf;
			mouseChildren = mouseEnabled = false;
		}
		
		public function log(text:String):void
		{
			if(_textField.text == ""){
				_textField.text = text;
			}else{
				_textField.appendText("\n" + text);
			}
			var tft:String = _textField.text;
			var ar:Array = tft.split("\r");
			while(_textField.textHeight + 5 > _textField.height){
				ar.shift();
				_textField.text = ar.join("\n");
			}
		}
	}
}