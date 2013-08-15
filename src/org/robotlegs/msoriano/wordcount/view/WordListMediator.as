package org.robotlegs.msoriano.wordcount.view
{
	import org.robotlegs.msoriano.wordcount.model.SampleParagraph;
	import org.robotlegs.mvcs.Mediator;
	
	public class WordListMediator extends Mediator
	{
		[Inject]
		public var wordList:WordList;
		
		[Inject]
		public var sampleParagraphModel:SampleParagraph;
		
		public function WordListMediator()
		{
		}
		
		override public function onRegister():void
		{
			wordList.dataProvider = sampleParagraphModel.wordList;
		}
	}
}