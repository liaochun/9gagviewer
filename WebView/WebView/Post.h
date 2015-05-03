#import <UIKit/UIKit.h>

@interface Post : UIViewController

    @property (strong, nonatomic) IBOutlet UIWebView *webView;
    @property (atomic, strong) NSString *currentURL;
    @property (atomic, strong) NSString *navigationTitle;

@end
