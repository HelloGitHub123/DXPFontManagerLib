//
//  FontManager.m
//  DXPChatBot
//
//  Created by 李标 on 2024/10/8.
//

#import "FontManager.h"

static NSString *normalFamiy;
static NSString *mediumFamily;
static NSString *semiBoldFamily;
static NSString *lightFamily;
static NSString *boldFamily;
static NSString *italicFamily;
static NSString *boldItalicFamily;
static NSString *other1Family;
static NSString *other2Family;
static NSString *other3Family;

@implementation FontManager

+ (void)setFontFamilyList:(NSDictionary *)dicFont {
	if (dicFont.allKeys.count == 0) return;
	normalFamiy = [dicFont valueForKey:@"Normal"];
    mediumFamily = [dicFont valueForKey:@"Medium"];
    semiBoldFamily = [dicFont valueForKey:@"SemiBold"];
	lightFamily = [dicFont valueForKey:@"Light"];
	boldFamily = [dicFont valueForKey:@"Bold"];
    italicFamily = [dicFont valueForKey:@"Italic"];
    boldItalicFamily = [dicFont valueForKey:@"BoldItalic"];
	other1Family = [dicFont valueForKey:@"Other1"];
	other2Family = [dicFont valueForKey:@"Other2"];
	other3Family = [dicFont valueForKey:@"Other3"];
}

// 设置正常字体
+ (UIFont *)setNormalFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (normalFamiy) {
        font = [UIFont fontWithName:normalFamiy size:size];
    }
    if (!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

// 设置中型字体
+ (UIFont *)setMediumFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (mediumFamily) {
        font = [UIFont fontWithName:mediumFamily size:size];
    }
    if (!font) {
        font = [UIFont boldSystemFontOfSize:size];
    }
    return font;
}

+ (UIFont *)setSemiBoldFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (semiBoldFamily) {
        font = [UIFont fontWithName:semiBoldFamily size:size];
    }
    if (!font) {
        font = [UIFont boldSystemFontOfSize:size];
    }
    return font;
}

// 设置轻型字体
+ (UIFont *)setLightFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (lightFamily) {
        font = [UIFont fontWithName:lightFamily size:size];
    }
    if (!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

// 设置粗体字体
+ (UIFont *)setBoldFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (boldFamily) {
        font = [UIFont fontWithName:boldFamily size:size];
    }
    if (!font) {
        font = [UIFont boldSystemFontOfSize:size];
    }
    return font;
}

/// 设置斜体字体
+ (UIFont *)setItalicFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (italicFamily) {
        font = [UIFont fontWithName:italicFamily size:size];
    }
    if (!font) {
        font = [UIFont italicSystemFontOfSize:size];
    }
    return font;
}

/// 设置粗斜字体
+ (UIFont *)setBoldItalicFontSize:(NSInteger)size {
    UIFont *font = nil;
    if (boldItalicFamily) {
        font = [UIFont fontWithName:boldItalicFamily size:size];
    }
    if (!font) {
        font = [UIFont systemFontOfSize:size];
        UIFontDescriptorSymbolicTraits symbolicTraits = UIFontDescriptorTraitItalic | UIFontDescriptorTraitBold;
        font = [UIFont fontWithDescriptor:[[font fontDescriptor] fontDescriptorWithSymbolicTraits:symbolicTraits] size:font.pointSize];
    }
    return font;
}

// 设置其他字体1
+ (UIFont *)setOther1FontSize:(NSInteger)size {
    UIFont *font = nil;
    if (other1Family) {
        font = [UIFont fontWithName:other1Family size:size];
    }
    if (!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

// 设置其他字体2
+ (UIFont *)setOther2FontSize:(NSInteger)size {
    UIFont *font = nil;
    if (other2Family) {
        font = [UIFont fontWithName:other2Family size:size];
    }
    if (!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

// 设置其他字体3
+ (UIFont *)setOther3FontSize:(NSInteger)size {
    UIFont *font = nil;
    if (other3Family) {
        font = [UIFont fontWithName:other3Family size:size];
    }
    if (!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

@end
