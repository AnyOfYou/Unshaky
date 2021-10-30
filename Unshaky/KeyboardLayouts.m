//
//  KeyboardLayouts.m
//  Unshaky
//
//  Created by Xinhong LIU on 5/8/19.
//  Copyright © 2019 Nested Error. All rights reserved.
//

#import "KeyboardLayouts.h"

@implementation KeyboardLayouts {
    NSDictionary<NSNumber *, NSString *> *_keyCodeToString;
}

+ (instancetype)shared {
    static KeyboardLayouts *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

+ (NSArray<NSString *> *)availableKeyboardLayouts {
    return @[
             @KL_US,
             @KL_RU,
             @KL_ABC_QWERTZ,
             @KL_ABC_AZERTY,
             @KL_TURKISH_Q
             ];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _keyCodeToString = KeyboardLayouts.US;
    }
    return self;
}

- (NSDictionary<NSNumber *, NSString *> *)keyCodeToString {
    return _keyCodeToString;
}

- (void)setKeyboardLayout:(NSString *)keyboardLayout {
    NSMutableDictionary<NSNumber *, NSString *> *keyCodeToString = [KeyboardLayouts.US mutableCopy];

    NSDictionary<NSNumber *, NSString *> *overwrite;
    if ([keyboardLayout isEqualToString:@KL_RU]) {
        overwrite = KeyboardLayouts.RU;
    } else if ([keyboardLayout isEqualToString:@KL_ABC_QWERTZ]) {
        overwrite = KeyboardLayouts.ABC_QWERTZ;
    } else if ([keyboardLayout isEqualToString:@KL_ABC_AZERTY]) {
        overwrite = KeyboardLayouts.ABC_AZERTY;
    } else if ([keyboardLayout isEqualToString:@KL_TURKISH_Q]) {
        overwrite = KeyboardLayouts.TURKISH_Q;
    }
    if (overwrite != nil) {
        for (id key in overwrite) {
            keyCodeToString[key] = overwrite[key];
        }
    }
    _keyCodeToString = [[NSDictionary alloc] initWithDictionary:keyCodeToString];
}

+(NSDictionary<NSNumber *, NSString *> *)US {
    return @{
             @29: @" 0",
             @18: @" 1",
             @19: @" 2",
             @20: @" 3",
             @21: @" 4",
             @23: @" 5",
             @22: @" 6",
             @26: @" 7",
             @28: @" 8",
             @25: @" 9",
             @0: @" A",
             @11: @" B",
             @8: @" C",
             @2: @" D",
             @14: @" E",
             @3: @" F",
             @5: @" G",
             @4: @" H",
             @34: @" I",
             @38: @" J",
             @40: @" K",
             @37: @" L",
             @46: @" M",
             @45: @" N",
             @31: @" O",
             @35: @" P",
             @12: @" Q",
             @15: @" R",
             @1: @" S",
             @17: @" T",
             @32: @" U",
             @9: @" V",
             @13: @" W",
             @7: @" X",
             @16: @" Y",
             @6: @" Z",
             @10: @"SectionSign",
             @50: @"Grave `",
             @27: @"Minus -",
             @24: @"Equal =",
             @33: @"LeftBracket [",
             @30: @"RightBracket ]",
             @41: @"Semicolon ;",
             @39: @"Quote '",
             @43: @"Comma ,",
             @47: @"Period .",
             @44: @"Slash /",
             @42: @"Backslash \\",
             @82: @"Keypad0 0",
             @83: @"Keypad1 1",
             @84: @"Keypad2 2",
             @85: @"Keypad3 3",
             @86: @"Keypad4 4",
             @87: @"Keypad5 5",
             @88: @"Keypad6 6",
             @89: @"Keypad7 7",
             @91: @"Keypad8 8",
             @92: @"Keypad9 9",
             @65: @"KeypadDecimal .",
             @67: @"KeypadMultiply *",
             @69: @"KeypadPlus +",
             @75: @"KeypadDivide /",
             @78: @"KeypadMinus -",
             @81: @"KeypadEquals =",
             @71: @"KeypadClear",
             @76: @"KeypadEnter",
             @49: @"Space",
             @36: @"Return ⏎",
             @48: @"Tab",
             @51: @"Delete",
             @117: @"ForwardDelete",
             @52: @"Linefeed",
             @53: @"Escape",
             @57: @"CapsLock",
             @122: @"F1",
             @120: @"F2",
             @99: @"F3",
             @118: @"F4",
             @96: @"F5",
             @97: @"F6",
             @98: @"F7",
             @100: @"F8",
             @101: @"F9",
             @109: @"F10",
             @103: @"F11",
             @111: @"F12",
             @105: @"F13",
             @107: @"F14",
             @113: @"F15",
             @106: @"F16",
             @64: @"F17",
             @79: @"F18",
             @80: @"F19",
             @90: @"F20",
             @72: @"VolumeUp",
             @73: @"VolumeDown",
             @74: @"Mute",
             @114: @"Help/Insert",
             @115: @"Home",
             @119: @"End",
             @116: @"PageUp",
             @121: @"PageDown",
             @123: @"Arrow Left ←",
             @124: @"Arrow Right →",
             @125: @"Arrow Down ↓",
             @126: @"Arrow Up ↑",
             @145: @"Brightness Down",
             @144: @"Brightness Up",
             @130: @"Dashboard",
             @131: @"LaunchPad"
             };
}

+(NSDictionary<NSNumber *, NSString *> *)RU {
    return @{
             @0: @" Ф", // <-> A
             @11: @" И", // <-> B
             @8: @" С", // <-> C
             @2: @" В", // <-> D
             @14: @" У", // <-> E
             @3: @" А", // <-> F
             @5: @" П", // <-> G
             @4: @" Р", // <-> H
             @34: @" Ш", // <-> I
             @38: @" О", // <-> J
             @40: @" Л", // <-> K
             @37: @" Д", // <-> L
             @46: @" Ь", // <-> M
             @45: @" Т", // <-> N
             @31: @" Щ", // <-> O
             @35: @" З", // <-> P
             @12: @" Й", // <-> Q
             @15: @" К", // <-> R
             @1: @" Ы", // <-> S
             @17: @" Е", // <-> T
             @32: @" Г", // <-> U
             @9: @" М", // <-> V
             @13: @" Ц", // <-> W
             @7: @" Ч", // <-> X
             @16: @" Н", // <-> Y
             @6: @" Я", // <-> Z
             @50: @"]", // <-> Grave `
             @33: @"х", // <-> LeftBracket [
             @30: @"ъ", // <-> RightBracket ]
             @41: @"ж", // <-> Semicolon ;
             @39: @"э", // <-> Quote '
             @43: @"б", // <-> Comma ,
             @47: @"ю", // <-> Period .
             @42: @"ё", // <-> Backslash
             };
}

+(NSDictionary<NSNumber *, NSString *> *)ABC_QWERTZ {
    return @{
             @50: @"<", // <-> Grave `
             @27: @"ß", // <-> Minus -
             @24: @"´", // <-> Equals =
             @16: @" Z", // <-> Y
             @6: @" Y", // <-> Z
             @41: @"ö", // <-> Semicolon ;
             @39: @"ä", // <-> Quote '
             @44: @"-", // <-> Slash /
             @33: @"ü", // <-> LeftBracket [
             @30: @"+", // <-> RightBracket ]
             @42: @"#", // <-> Backslash
             };
}

+(NSDictionary<NSNumber *, NSString *> *)ABC_AZERTY {
    return @{
             @0: @" Q", // <-> A
             @11: @" B", // <-> B
             @8: @" C", // <-> C
             @2: @" D", // <-> D
             @14: @" E", // <-> E
             @3: @" F", // <-> F
             @5: @" G", // <-> G
             @4: @" H", // <-> H
             @34: @" I", // <-> I
             @38: @" J", // <-> J
             @40: @" K", // <-> K
             @37: @" L", // <-> L
             @46: @" ,", // <-> M
             @45: @" N", // <-> N
             @31: @" O", // <-> O
             @35: @" P", // <-> P
             @12: @" A", // <-> Q
             @15: @" R", // <-> R
             @1: @" S", // <-> S
             @17: @" T", // <-> T
             @32: @" U", // <-> U
             @9: @" V", // <-> V
             @13: @" Z", // <-> W
             @7: @" X", // <-> X
             @16: @" Y", // <-> Y
             @6: @" W", // <-> Z
             @33: @"^", // <-> LeftBracket [
             @30: @"$", // <-> RightBracket ]
             @42: @"Grave `", // <-> Backslash
             @43: @"Semicolon ;", // <-> Comma ,
             @47: @":", // <-> Period .
             @44: @"Equals =", // <-> Slash /
             @41: @"M", // <-> Semicolon ;
             @39: @"ù", // <-> Quote '
             @29: @"à", // <-> 0
             @18: @"&", // <-> 1
             @19: @"é", // <-> 2
             @20: @"Double Quote \"", // <-> 3
             @21: @"Quote '", // <-> 4
             @23: @"(", // <-> 5
             @22: @"§", // <-> 6
             @26: @"è", // <-> 7
             @28: @"!", // <-> 8
             @25: @"ç", // <-> 9
             @50: @"<", // <-> Grave `
             @27: @")", // <-> Minus -
             @24: @"-", // <-> Equals =
             };
}

+(NSDictionary<NSNumber *, NSString *> *)TURKISH_Q {
    return @{
             @33: @"Ğ", // <-> LeftBracket [
             @30: @"Ü", // <-> RightBracket ]
             @42: @",", // <-> Backslash
             @43: @"Ö", // <-> Comma ,
             @47: @"Ç", // <-> Period .
             @44: @".", // <-> Slash /
             @41: @"Ş", // <-> Semicolon ;
             @39: @"İ", // <-> Quote '
             @50: @"<", // <-> Grave `
             @27: @"*", // <-> Minus -
             @24: @"-", // <-> Equals =
             };
}

@end
