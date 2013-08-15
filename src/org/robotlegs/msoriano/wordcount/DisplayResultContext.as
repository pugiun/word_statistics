package org.robotlegs.msoriano.wordcount
{
	import flash.display.DisplayObjectContainer;	
	import org.robotlegs.mvcs.Context;
	import org.robotlegs.msoriano.wordcount.model.*;
	import org.robotlegs.msoriano.wordcount.view.*;
	
	public class DisplayResultContext extends Context
	{
		
		public function DisplayResultContext()
		{
			super();
		}
		
		override public function startup():void
		{
			// Model
			injector.mapSingleton(SampleParagraph);
			// View
			mediatorMap.mapView(WordTextInput, WordTextInputMediator);
			mediatorMap.mapView(WordList, WordListMediator);
			// Startup complete
			super.startup();
		}
		
	}
}