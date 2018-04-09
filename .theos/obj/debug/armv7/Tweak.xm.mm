#line 1 "Tweak.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class MTPlatterView; 
static double (*_logos_orig$_ungrouped$MTPlatterView$cornerRadius)(_LOGOS_SELF_TYPE_NORMAL MTPlatterView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MTPlatterView$cornerRadius(_LOGOS_SELF_TYPE_NORMAL MTPlatterView* _LOGOS_SELF_CONST, SEL); 

#line 1 "Tweak.xm"

static double _logos_method$_ungrouped$MTPlatterView$cornerRadius(_LOGOS_SELF_TYPE_NORMAL MTPlatterView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return var;
} 



static void loadPrefs()
{
        NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/uk.evanw.squareuiprefs.plist"];
    if(prefs)
    {
        var = [prefs objectForKey:@"var"] ? [[prefs objectForKey:@"var"] floatValue] : var;
    }
    [prefs release];
}

static __attribute__((constructor)) void _logosLocalCtor_70efdf2e(int __unused argc, char __unused **argv, char __unused **envp)
{

    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("uk.evanw.squareuiprefs/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MTPlatterView = objc_getClass("MTPlatterView"); MSHookMessageEx(_logos_class$_ungrouped$MTPlatterView, @selector(cornerRadius), (IMP)&_logos_method$_ungrouped$MTPlatterView$cornerRadius, (IMP*)&_logos_orig$_ungrouped$MTPlatterView$cornerRadius);} }
#line 25 "Tweak.xm"
