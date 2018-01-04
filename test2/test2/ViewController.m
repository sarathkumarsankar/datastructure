//
//  ViewController.m
//  test2
//
//  Created by SARATHKUMAR.S on 28/12/17.
//  Copyright © 2017 SARATHKUMAR.S. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // NSMutableArray * uniqueValues = [[NSMutableArray alloc]init];
    NSArray * a = @[@6,@6,@3,@9,@3,@5,@1];
    
    NSLog(@"%@", [self numberOfPairs:a k:[NSNumber numberWithInt:12]]);
   

//    int k = 12;
//
//    for (int i =0;i < a.count - 1; i++) {
//
//        if (([a[i]intValue] + [a[i+1]intValue]) == k){
//
//            NSDictionary * values = @{@"p1":[NSNumber numberWithInt:[a[i]intValue]], @"p2":[NSNumber numberWithInt:[a[i+1]intValue]]};
//            NSDictionary * value2 = @{@"p1":[NSNumber numberWithInt:[a[i+1]intValue]], @"p2":[NSNumber numberWithInt:[a[i]intValue]]};
//
//            if (![uniqueValues containsObject:values] && ![uniqueValues containsObject:value2]) {
//                  [uniqueValues addObject:values];
//            }
//
//
//
//        }
//    }
//
//
//      NSLog(@"%@",uniqueValues);
//    NSLog(@"%lu", (unsigned long)uniqueValues.count);
    
    
    
}
- (NSNumber *) numberOfPairs:(NSArray *)a k:(NSNumber *)k {
    NSMutableArray * uniqueValues = [[NSMutableArray alloc]init];
    for (int i =0;i < a.count - 1; i++) {
        
        if (([a[i]intValue] + [a[i+1]intValue]) == [k intValue]){
            
            NSDictionary * values = @{@"p1":[NSNumber numberWithInt:[a[i]intValue]], @"p2":[NSNumber numberWithInt:[a[i+1]intValue]]};
            NSDictionary * value2 = @{@"p1":[NSNumber numberWithInt:[a[i+1]intValue]], @"p2":[NSNumber numberWithInt:[a[i]intValue]]};
            
            if (![uniqueValues containsObject:values] && ![uniqueValues containsObject:value2]) {
                [uniqueValues addObject:values];
            }
        }
    }
    
    int final = (int)uniqueValues.count ;
    
    return [NSNumber numberWithInt:final];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
