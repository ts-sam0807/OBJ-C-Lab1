//
//  main.m
//  OBJ-C-LAB1
//
//  Created by Ts SaM on 30/8/2023.
//

#import <Foundation/Foundation.h>
#import "StringManipulator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        StringManipulator *manipulator = [[StringManipulator alloc] init];
        NSLog(@"Enter a string:");
        char input[100];
        scanf(" %[^\n]s", input);
        NSString *userInput = [NSString stringWithUTF8String:input];
        
        while (YES) {

            NSLog(@"Menu:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Exit");
            
            int choice;
            NSLog(@"Enter your choice:");
            scanf("%d", &choice);
            
            NSString *result = @"";
            switch (choice) {
                case 1:
                    result = [manipulator uppercaseString:userInput];
                    break;
                case 2:
                    result = [manipulator lowercaseString:userInput];
                    break;
                case 3: {
                    NSNumber *number = [manipulator numberizeString:userInput];
                    if (number) {
                        result = [number stringValue];
                    } else {
                        result = @"Invalid input for number conversion";
                    }
                    break;
                }
                case 4:
                    result = [manipulator canadianizeString:userInput];
                    break;
                case 5:
                    result = [manipulator respondToString:userInput];
                    break;
                case 6:
                    result = [manipulator deSpaceItString:userInput];
                    break;
                case 7:
                    NSLog(@"Exiting the app.");
                    return 0;
                default:
                    NSLog(@"Invalid choice");
            }
            NSLog(@"Result: %@", result);
        }
        return 0;
    }
}
