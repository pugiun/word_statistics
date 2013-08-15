package org.robotlegs.msoriano.wordcount.utils
{
	import mx.collections.ArrayCollection;
	import mx.utils.StringUtil;
	
	//utility function for word processing
	public class ArrayUtils 
	{		
		public function ArrayUtils()
		{

		}
		
		//String is splits into words, added to array and then sorted alphabetically
		public function stringToSortedArray(s:String):ArrayCollection
		{
			var newList:ArrayCollection;
			var sortedList:ArrayCollection = new ArrayCollection();
			var str:String = s.toLowerCase();
			var pattern:RegExp = /[.,!?:;\s]+/;
			newList = new ArrayCollection(str.split(pattern));					
			for each ( var currentWord:String in newList )
			{
				var obj:Object = new Object();
				obj.value = StringUtil.trim(currentWord);
				if(obj.value !='')
				{
					sortedList.addItem(obj);
				}									
			}	
			sortedList.source.sortOn('value');
			sortedList.refresh();
			return sortedList;
		}
      	
		//Count similar words in a soted array
		public function countWords(list:ArrayCollection):ArrayCollection
		{
			var countObject:Object;				
			var previousItem:Object;
			var countedList:ArrayCollection = new ArrayCollection();
			for each ( var currentItem:Object in list )
			{
				//If the current item in the list is different from the previous item, then create a new countObject and start counting the new item.
				if (previousItem == null || currentItem.value != previousItem.value)
				{
					countObject = new Object();
					countObject.word = currentItem.value;
					countObject.count = 1;
					countedList.addItem(countObject);
					previousItem = currentItem;
				}
				else 
				{
					countedList[countedList.length - 1].count += 1;
				}					
			}
			return countedList;
		}		
		
	}
}