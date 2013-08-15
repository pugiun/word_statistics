package org.robotlegs.msoriano.wordcount.view
{
	import flash.events.Event;
	
	public class WordTextInputEvent extends Event
	{
		public static const TEXT_CHANGED:String = 'textChanged';
		
		public function WordTextInputEvent(type:String)
		{
			super(type, true);
		}
		
	}
}