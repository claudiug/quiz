//
//  RLKViewController.m
//  quiz
//
//  Created by claudiu on 2/8/14.
//  Copyright (c) 2014 com.demo. All rights reserved.
//

#import "RLKViewController.h"

@interface RLKViewController ()

@end

@implementation RLKViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //create two arrays
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        //add items
        
        [questions addObject:@"what is 7 + 7 "];
        [answers addObject:@"14"];
        [questions addObject:@"what is capital of Germany"];
        [answers addObject:@"Berlin"];
        [questions addObject:@"When is the last day of year"];
        [answers addObject:@"31 December"];
        [questions addObject:@"what language does the German speak"];
        [answers addObject:@"nothing, they just use random letters"];
        NSLog(@"question %@", questions);

    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    if(currentQuestionIndex == [questions count]){
        currentQuestionIndex = 0;
    }
    
    NSString *qqqq = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"current: %@", qqqq);
    [answerField setText:qqqq];
    [answerField setText:@"???"];
    NSLog(@"question %@", questions);

}

- (IBAction)showAnswer:(id)sender
{
    //get current answer
    NSString *response = [answers objectAtIndex:currentQuestionIndex];
    //display it
    [answerField setText:response];
    
}





@end
