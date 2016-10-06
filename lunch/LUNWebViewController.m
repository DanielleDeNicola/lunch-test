//
//  LUNWebViewController.m
//  lunch
//
//  Created by Danielle Denicola on 10/6/16.
//  Copyright © 2016 Danielle Voss. All rights reserved.
//

#import "LUNWebViewController.h"

@interface LUNWebViewController () <UIWebViewDelegate>

@end

@implementation LUNWebViewController

#pragma mark - Actions

- (IBAction)didTapBackButton:(id)sender
{
    [_webView goBack];
}

- (IBAction)didTapRefreshButton:(id)sender
{
    [_webView reload];
}

- (IBAction)didTapForwardButton:(id)sender
{
    [_webView goForward];
}

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _webView.delegate = self;
    NSString *urlString = @"http://www.bottlerocketstudios.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self updateButtons];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self updateButtons];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

#pragma mark - Private

- (void)updateButtons
{
    [_backButton setEnabled:[_webView canGoBack]];
    [_forwardButton setEnabled:[_webView canGoForward]];
}

@end
