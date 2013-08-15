package org.robotlegs.msoriano.wordcount.model
{
	import mx.collections.ArrayCollection;	
	import org.robotlegs.mvcs.Actor;
	
	public class SampleParagraph extends Actor
	{
		public var wordList:ArrayCollection;
		
		public function SampleParagraph()
		{
			wordList = new ArrayCollection();
		}
		
		public function addToList(arrayList:ArrayCollection):void
		{
			wordList.removeAll();
			wordList.addAll(arrayList)
		}

		public function get arrayList():ArrayCollection
		{
			return wordList;
		}
	}
}