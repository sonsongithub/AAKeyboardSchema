//
//  ViewController.swift
//  AAKeyboardSchemaSwift
//
//  Created by sonson on 2015/02/09.
//  Copyright (c) 2015年 sonson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func registerAA(sender: AnyObject) {
		let text:String = "　 　 　　　＿＿＿_ \n　 　　　／　　 　 　＼ \n　　　／　 _ノ 　ヽ､_　 ＼ \n　 ／ oﾟ(（●）) (（●）)ﾟo ＼ 　ほんとはVIPでやりたいんだお… \n　 |　　　　 （__人__）　　　　| \n　 ＼　　 　 ｀ ⌒´ 　 　 ／ \n";
		let encoded:String = text.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!;
		let URLString:String = "aakeyboard://app?register=" + encoded;
		UIApplication.sharedApplication().openURL(NSURL(string:URLString)!);
	}
	
	@IBAction func withCallback(sender: AnyObject) {
		let aa:String = "　 　 　　　＿＿＿_ \n　 　　　／　　 　 　＼ \n　　　／　 _ノ 　ヽ､_　 ＼ \n　 ／ oﾟ(（●）) (（●）)ﾟo ＼ 　ほんとはVIPでやりたいんだお… \n　 |　　　　 （__人__）　　　　| \n　 ＼　　 　 ｀ ⌒´ 　 　 ／ \n";
		let callback:String = "aakeyboardsampleswift://"
		let components:NSURLComponents = NSURLComponents(string: "aakeyboard://")!;
		let aaItem:NSURLQueryItem = NSURLQueryItem(name: "register", value: aa);
		let callbackItem:NSURLQueryItem = NSURLQueryItem(name: "callback", value: callback);
		components.queryItems = [aaItem, callbackItem];
		UIApplication.sharedApplication().openURL(components.URL!);
	}
	
	func hoge() {
		let aa:String = "＼(^o^)／";
		let callback:String = "hoge://"
		let components:NSURLComponents = NSURLComponents(string: "aakeyboard://")!;
		let aaItem:NSURLQueryItem = NSURLQueryItem(name: "register", value: aa);
		let callbackItem:NSURLQueryItem = NSURLQueryItem(name: "callback", value: callback);
		components.queryItems = [aaItem, callbackItem];
		UIApplication.sharedApplication().openURL(components.URL!);
		
	}
	
}

