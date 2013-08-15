package test.msoriano.wordcount.view
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import org.robotlegs.msoriano.wordcount.view.WordTextInput;
	import org.robotlegs.msoriano.wordcount.view.WordTextInputEvent;
	import org.robotlegs.msoriano.wordcount.view.WordTextInputMediator;
	import org.flexunit.asserts.assertEquals;

	public class WordTextInputMediatorTest
	{		
		
		private var instanceMediator:WordTextInputMediator;
		
		[Before]
		public function setUp():void
		{
			instanceMediator = new WordTextInputMediator();
			instanceMediator.eventDispatcher = new EventDispatcher();
			var wordTextInputView:WordTextInput = new WordTextInput();
			instanceMediator.wordTextInput = wordTextInputView;
			instanceMediator.onRegister();			
		}
		
		[After]
		public function tearDown():void			
		{
			instanceMediator =  null;
		}
		
		
		[Test]
		public function WordTextInputEventTest():void
		{		
			var event:WordTextInputEvent = new WordTextInputEvent(WordTextInputEvent.TEXT_CHANGED); 
			instanceMediator.eventDispatcher.dispatchEvent(event);	
			assertEquals(instanceMediator.wordTextInput.getText(), '');
		}	
		
	}
}