//
//  LUNWebViewController.h
//  lunch
//
//  Created by Danielle Denicola on 10/6/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LUNWebViewController : UIViewController

#pragma mark - Properties

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *refreshButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *forwardButton;

@end
