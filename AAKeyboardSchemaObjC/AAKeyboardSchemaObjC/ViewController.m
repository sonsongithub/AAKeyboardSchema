//
//  ViewController.m
//  AAKeyboardSchemaObjC
//
//  Created by sonson on 2015/02/09.
//  Copyright (c) 2015年 sonson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)registerAA:(id)sender {
	NSString *aa = @"　 　 　　　＿＿＿_ \n　 　　　／　　 　 　＼ \n　　　／　 _ノ 　ヽ､_　 ＼ \n　 ／ oﾟ(（●）) (（●）)ﾟo ＼ 　ほんとはVIPでやりたいんだお… \n　 |　　　　 （__人__）　　　　| \n　 ＼　　 　 ｀ ⌒´ 　 　 ／ \n";
	NSURLQueryItem *registerItem = [NSURLQueryItem queryItemWithName:@"register" value:aa];
	NSURLComponents *components = [[NSURLComponents alloc] initWithString:@"aakeyboard://app"];
	components.queryItems = @[registerItem];
	[[UIApplication sharedApplication] openURL:[components URL]];
}

- (IBAction)withCallback:(id)sender {
#if 1
	NSString *callback = @"aakeyboardsampleobjc://";
	NSString *aa = @"　 　 　　　＿＿＿_ \n　 　　　／　　 　 　＼ \n　　　／　 _ノ 　ヽ､_　 ＼ \n　 ／ oﾟ(（●）) (（●）)ﾟo ＼ 　ほんとはVIPでやりたいんだお… \n　 |　　　　 （__人__）　　　　| \n　 ＼　　 　 ｀ ⌒´ 　 　 ／ \n";
#else
	NSString *callback = @"hoge://";
	NSString *aa = @"＼(^o^)／";
#endif
	NSURLQueryItem *registerItem = [NSURLQueryItem queryItemWithName:@"register" value:aa];
	NSURLQueryItem *callbackItem = [NSURLQueryItem queryItemWithName:@"callback" value:callback];
	NSURLComponents *components = [[NSURLComponents alloc] initWithString:@"aakeyboard://app"];
	components.queryItems = @[registerItem, callbackItem];
	[[UIApplication sharedApplication] openURL:[components URL]];
}

@end
