package test.msoriano.wordcount.utils
{
	import mx.collections.ArrayCollection;	
	import org.flexunit.asserts.assertEquals;
	import org.robotlegs.msoriano.wordcount.utils.ArrayUtils;

	public class ArrayUtilsTest
	{	
		private var arr:ArrayCollection = new ArrayCollection([{value:'a'}, {value:'a'}, {value:'hello'}, {value:'i'}, {value:'i'}, {value:'s'}, {value:'test'}]);
		private var _arrayUtil:ArrayUtils = new ArrayUtils();
		
		[Test]
		public function fromStringToSortedArrayTest():void
		{			
			var str:String = 'a s i  a test hello I ';
			var arrSorted:ArrayCollection = _arrayUtil.stringToSortedArray(str);
			assertEquals(arrSorted[0].value, arr[0].value);
			assertEquals(arrSorted[1].value, arr[1].value);
			assertEquals(arrSorted[2].value, arr[2].value);
			assertEquals(arrSorted[3].value, arr[3].value);
			assertEquals(arrSorted[4].value, arr[4].value);
			assertEquals(arrSorted[5].value, arr[5].value);
			assertEquals(arrSorted[6].value, arr[6].value);
		}

		[Test]
		public function countWordsTest():void
		{		
			var arrCounted:ArrayCollection = _arrayUtil.countWords(arr);			
			assertEquals(arrCounted[0].word, 'a');
			assertEquals(arrCounted[0].count, 2);
			assertEquals(arrCounted[1].word, 'hello');
			assertEquals(arrCounted[1].count, 1);
			assertEquals(arrCounted[2].word, 'i');
			assertEquals(arrCounted[2].count, 2);
			assertEquals(arrCounted[3].word, 's');
			assertEquals(arrCounted[3].count, 1);
			assertEquals(arrCounted[4].word, 'test');
			assertEquals(arrCounted[4].count, 1);
		}		
		
	}
}