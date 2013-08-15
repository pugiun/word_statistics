package org.robotlegs.msoriano.wordcount.view
{	
	import mx.collections.ArrayCollection;
	import org.robotlegs.mvcs.Mediator;
	import org.robotlegs.msoriano.wordcount.model.SampleParagraph;
	import org.robotlegs.msoriano.wordcount.utils.ArrayUtils;
	
	public class WordTextInputMediator extends Mediator
	{
		[Inject]
		public var wordTextInput:WordTextInput;
		
		[Inject]
		public var sampleParagraph:SampleParagraph;
		
		public function WordTextInputMediator()
		{
		}
		
		override public function onRegister():void
		{
			// View Listeners
			eventMap.mapListener(wordTextInput, WordTextInputEvent.TEXT_CHANGED, onTextChanged);
		}
		
		//Input Text is processed trough a utility function, where we split, sort and count the resulting words
		private function onTextChanged(e:WordTextInputEvent):void
		{
			var sortedList:ArrayCollection;
			var countedList:ArrayCollection = new ArrayCollection();
			var s:String = wordTextInput.getText();
			var utilFunctions:ArrayUtils = new ArrayUtils();
			sortedList = utilFunctions.stringToSortedArray(s);			
			var sortedListToString:ArrayCollection = new ArrayCollection();
			countedList = utilFunctions.countWords(sortedList);
			sampleParagraph.addToList(countedList);
		}				
	}
}