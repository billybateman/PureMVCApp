package 
{
	import com.whitelbl.ApplicationFacade;
	
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.text.Font;
	
	[SWF( width='600', height='400', frameRate='30', backgroundColor='#000000' )]
	
	public class App extends Sprite
	{	
		//[Embed( systemFont='Arial', fontName='Arial', mimeType='application/x-font' )]
		private var arialFont:Class;
		
		public function App()
		{
			init();
		}
		
		private function init():void
		{	
			//Font.registerFont( arialFont );
			
			ApplicationFacade.getInstance().startup( this );
		}
	}
}
