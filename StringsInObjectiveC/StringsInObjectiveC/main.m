//
//  main.m
//  StringsInObjectiveC
//
//  Created by Maxi on 18/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *quote = @"Dogs have masters, while cats have staff";
        
        NSLog(@"Size of string : %d",(int)[quote length]);
        NSLog(@"Character at 5 : %c",[quote characterAtIndex:5]);
        
        char *name = "Derek";
        
        NSString *myName = [NSString stringWithFormat:@"- %s",name]; //dynamically alloc string
        BOOL isStringEqual = [quote isEqualToString:myName];
        printf("Are strings equal : %d\n", isStringEqual);
        
        const char *uCString = [[myName uppercaseString]UTF8String];
        printf("%s",uCString);
        NSString *wholeQuote =[quote stringByAppendingString:myName];
        NSRange searchResult =[wholeQuote rangeOfString:@"Derek"];
        if (searchResult.location == NSNotFound) {
            NSLog(@"String not found");
        } else {
            printf("Derek is at %lu and is %lu long\n",searchResult.location, searchResult.length);
        }
     
        NSRange range = NSMakeRange(42, 5);
        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Anon\n" ]UTF8String];
        
        printf("%s",newQuote);
        
        /*We want strings that can be changed so we will use MUTABLE STRING*/
        
        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        [groceryList appendFormat:@"%s","Potato, Banana, Pasta"];
        NSLog(@"groceryList : %@", groceryList);
        [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
        NSLog(@"groceryList : %@", groceryList);
        [groceryList insertString:@", Apple" atIndex:13];
        NSLog(@"groceryList : %@", groceryList);
        [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];
        NSLog(@"groceryList : %@", groceryList);
    
    }
    return 0;
}
