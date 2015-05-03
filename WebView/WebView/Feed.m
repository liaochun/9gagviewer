#import "Feed.h"
#import "Post.h"

@interface Feed ()
@end

@implementation Feed

// Hello Good Sir - http://9gag.com/gag/ae0PVWQ
// Biking Down The Stairs - http://9gag.com/gag/a7y6Rxm
// Creepy Grandma - http://9gag.com/gag/abyK1rX
// Hamburger - http://9gag.com/gag/awKG3bR
// Baby Raccoon - http://9gag.com/gag/azEojGj

@synthesize currentURL;
@synthesize navigationTitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    navigationTitle = @"9Gag";
    currentURL = @"http://www.9gag.com";
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self navigationController].navigationBar setBarTintColor:[UIColor redColor]];
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
}

- (IBAction)hello:(id)sender {
    navigationTitle = @"Hello Good Sir";
    currentURL = @"http://9gag.com/gag/ae0PVWQ";
    [self viewPost];
}

- (IBAction)riding:(id)sender {
    navigationTitle = @"Biking Down The Stairs";
    currentURL = @"http://9gag.com/gag/a7y6Rxm";
    [self viewPost];
}

- (IBAction)grandma:(id)sender {
    navigationTitle = @"Creepy Grandma";
    currentURL = @"http://9gag.com/gag/abyK1rX";
    [self viewPost];
}

- (IBAction)hamburger:(id)sender {
        navigationTitle = @"Hamburger";
    currentURL = @"http://9gag.com/gag/awKG3bR";
    [self viewPost];
}

- (IBAction)peekaboo:(id)sender {
    navigationTitle = @"Cute Raccoon";
    currentURL = @"http://9gag.com/gag/azEojGj";
    [self viewPost];
}

-(void)viewPost {
    [self performSegueWithIdentifier:@"viewpost" sender:self];
}

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

     Post *destViewController = segue.destinationViewController;
     if ([segue.identifier isEqualToString:@"viewpost"]) {
         destViewController.currentURL = currentURL;
         destViewController.navigationTitle = navigationTitle;
     }
 
 }
// this is a test for github comments lk;asjdflkajsl;fdajsf;laj

@end
