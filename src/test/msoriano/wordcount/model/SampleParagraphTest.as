package test.msoriano.wordcount.model
{
	import flashx.textLayout.debug.assert;
	
	import mx.collections.ArrayCollection;
	
	import org.flexunit.asserts.assertEquals;
	import org.robotlegs.msoriano.wordcount.model.SampleParagraph;
	
	public class SampleParagraphTest
	{		
		private var arr:ArrayCollection; 
		private var instanceSampleParagraph:SampleParagraph;
		
		[Before]
		public function setUp():void
		{
			arr = new ArrayCollection([{word:'test', count:5}, {word:'here', count: 8}]);
			instanceSampleParagraph = new SampleParagraph();
			
		}
			
		[After]
		public function tearDown():void
		{
			arr = null;
			instanceSampleParagraph = null;
		}
		
		[Test]
		public function ArrayIsPassedTest():void
		{
			var arrToBeBinded:ArrayCollection;
			instanceSampleParagraph.addToList(arr);			
			arrToBeBinded = instanceSampleParagraph.arrayList;
			assertEquals(arr[0].word, arrToBeBinded[0].word);
			assertEquals(arr[0].count, arrToBeBinded[0].count);
			assertEquals(arr[1].word, arrToBeBinded[1].word);
			assertEquals(arr[1].count, arrToBeBinded[1].count);
		}	
		
	}
}