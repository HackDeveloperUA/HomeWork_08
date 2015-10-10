//
//  AppDelegate.m
//  HomeWork_08
//
//  Created by MD on 10.02.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import "AppDelegate.h"
#import "ASStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    
    
    ASStudent* student1  = [[ASStudent alloc]initWithName:@"Andrey "    andLastName:@"Smith"];
    ASStudent* student2  = [[ASStudent alloc]initWithName:@"Anton "     andLastName:@"Johnson"];
    ASStudent* student3  = [[ASStudent alloc]initWithName:@"Akim "      andLastName:@"Williams"];
    ASStudent* student4  = [[ASStudent alloc]initWithName:@"Alexcandr " andLastName:@"Jones"];
    ASStudent* student5  = [[ASStudent alloc]initWithName:@"Alena "     andLastName:@"Brown"];
    ASStudent* student6  = [[ASStudent alloc]initWithName:@"Alina "     andLastName:@"Davis"];
    ASStudent* student7  = [[ASStudent alloc]initWithName:@"Arina "     andLastName:@"Miller"];
    ASStudent* student8  = [[ASStudent alloc]initWithName:@"Artem "     andLastName:@"Wilson"];
    ASStudent* student9  = [[ASStudent alloc]initWithName:@"Arkadiy "   andLastName:@"Moore"];
    ASStudent* student10 = [[ASStudent alloc]initWithName:@"Boris "     andLastName:@"Anderson"];

    
    NSArray* array = [NSArray arrayWithObjects: student1 , student2 , student3,
                                                student4 , student5 , student6,
                                                student7 , student8 , student9, student10, nil];
    
    NSMutableDictionary* dict = [[NSMutableDictionary alloc]init];

    // Ученик
    for (ASStudent* tmp in array) {
        
         NSString *phrase = [tmp.name  stringByAppendingString:tmp.lastName];
        [dict setObject:tmp forKey:phrase];
       
    }
    NSLog(@"%@", dict);
    
    
    
    // Студент
    for (NSString* key in [dict allKeys]) {
        
        id obj = [dict objectForKey:key];
        
        NSLog(@" Name and LastName = %@ ",key);
        [obj greeting];
    }
    
    // Мастер
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
