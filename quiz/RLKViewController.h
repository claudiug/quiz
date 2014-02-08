//
//  RLKViewController.h
//  quiz
//
//  Created by claudiu on 2/8/14.
//  Copyright (c) 2014 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RLKViewController : UIViewController {
    
    int currentQuestionIndex;
    
    //The model objects
    
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;

}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;


@end
