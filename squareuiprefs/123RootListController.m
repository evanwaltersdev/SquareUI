#include "123RootListController.h"

@implementation 123RootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;

}

{
-(void)respring{

  system("killall -9 backboardd");

}




