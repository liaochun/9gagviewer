#import <UIKit/UIKit.h>

@interface Feed : UIViewController

    - (IBAction)hello:(id)sender;
    - (IBAction)riding:(id)sender;
    - (IBAction)grandma:(id)sender;
    - (IBAction)hamburger:(id)sender;
    - (IBAction)peekaboo:(id)sender;
    @property (atomic, strong) NSString *currentURL;
    @property (atomic, strong) NSString *navigationTitle;

@end
