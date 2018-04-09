#include "123RootListController.h"

@implementation 123RootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)save
{
    [self.view endEditing:YES];
}
-(void)respring{
  system("killall -9 backboardd");
}
- (void)donate{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=9ZXVHGA5AW5CG&lc=AU&item_name=GreenyDev&currency_code=AUD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"]];
}

@end
