//
//  HFGWebViewController.m
//  HackForGood
//
//  Created by Ahmet Karalar on 13/9/14.
//  Copyright (c) 2014 Ahmet Karalar. All rights reserved.
//

#import "HFGWebViewController.h"

static NSString * const kRequestURL = @"http://www.apple.com";

@interface HFGWebViewController ()

@property (nonatomic) UIWebView *webView;

@end

@implementation HFGWebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        _webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.view addSubview:_webView];

    self.webView.frame = self.view.bounds;
    NSString *urlAddress = kRequestURL;

    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [self.webView loadRequest:request];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
