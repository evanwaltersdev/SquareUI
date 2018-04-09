%hook MTPlatterView
- (double)cornerRadius {
    return var;
} 
%end

//Preferences
static void loadPrefs()
{
        NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/uk.evanw.squareuiprefs.plist"];
    if(prefs)
    {
        var = [prefs objectForKey:@"var"] ? [[prefs objectForKey:@"var"] floatValue] : var;
    }
    [prefs release];
}

%ctor
{

    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("uk.evanw.squareuiprefs/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();
}

