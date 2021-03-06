﻿package com.whitelbl
{
	import com.whitelbl.controller.*;
	import com.whitelbl.model.*;
	import com.whitelbl.view.*;
	import com.whitelbl.view.component.*;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	import org.puremvc.as3.patterns.observer.Notification;

	public class ApplicationFacade extends Facade implements IFacade
	{
		public static const NAME:String							= 'ApplicationFacade';
		
		public static const STARTUP:String						= NAME + 'StartUp';
		
		public static function getInstance():ApplicationFacade
		{
			return (instance ? instance : new ApplicationFacade()) as ApplicationFacade;
		}
		
		override protected function initializeController():void
		{
			super.initializeController();
			
			registerCommand( STARTUP, StartupCommand );
			
		}
		
		public function startup(stage:Object):void
		{
			sendNotification( STARTUP, 	stage );
		}
		
		override public function sendNotification(notificationName:String, body:Object=null, type:String=null):void
		{
			trace( 'Sent ' + notificationName );
			
			notifyObservers( new Notification( notificationName, body, type ) );
		}
	}
}