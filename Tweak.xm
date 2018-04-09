
%hook MTPlatterView
- (double)cornerRadius {
    return 0;
} 
%end

//Prefs

NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"uk.evanw.sqaureui"];

%hook ClassName

-(void) MethodName {
        if ([prefs boolForKey:@"enabled"]) {
            //Tweak enabled
        } else {
            //Tweak disabled
        }
    }

%end


