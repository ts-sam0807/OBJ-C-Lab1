//
//  StringManipulator.h
//  OBJ-C-LAB1
//
//  Created by Ts SaM on 30/8/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StringManipulator : NSObject
- (NSString *)uppercaseString:(NSString *)input;
- (NSString *)lowercaseString:(NSString *)input;
- (NSNumber *)numberizeString:(NSString *)input;
- (NSString *)canadianizeString:(NSString *)input;
- (NSString *)respondToString:(NSString *)input;
- (NSString *)deSpaceItString:(NSString *)input;
@end

@implementation StringManipulator

- (NSString *)uppercaseString:(NSString *)input {
    return [input uppercaseString];
}

- (NSString *)lowercaseString:(NSString *)input {
    return [input lowercaseString];
}

- (NSNumber *)numberizeString:(NSString *)input {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter numberFromString:input];
}

- (NSString *)canadianizeString:(NSString *)input {
    return [input stringByAppendingString:@", eh?"];
}

- (NSString *)respondToString:(NSString *)input {
    if ([input hasSuffix:@"?"]) {
        return @"I don't know";
    } else if ([input hasSuffix:@"!"]) {
        return @"Whoa, calm down!";
    }
    return input;
}

- (NSString *)deSpaceItString:(NSString *)input {
    return [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
}

@end
NS_ASSUME_NONNULL_END
