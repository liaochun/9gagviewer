#import "Post.h"

@interface Post ()
@end

@implementation Post

@synthesize webView;
@synthesize currentURL;
@synthesize navigationTitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.navigationItem.title = navigationTitle;
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"9gag-logo"]];
    
    webView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    webView.scalesPageToFit = YES;
    
    // NSString *url = @"http://www.google.com";
    // userAgent: Mozilla/5.0 (iPhone; CPU iPhone OS 10_10_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411
    
    NSString *userAgent = [webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
    NSLog(@"userAgent: %@", userAgent);
    
    // @"Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3"
    
    NSDictionary *userDefaults = [[NSDictionary alloc]
                                  initWithObjectsAndKeys:userAgent,
                                  @"UserAgent",
                                  nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:userDefaults];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:currentURL]]];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self navigationController].navigationBar setBarTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
}

@end
