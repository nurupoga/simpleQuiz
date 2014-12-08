//
//  ResultViewController.h
//  Quiz
//
//  Created by ohtatomotaka on 2014/12/04.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "ViewController.h"

@interface ResultViewController : UIViewController{
    int _getAnswerCount;
    int _getSumCount;
    IBOutlet UILabel *answerCountLabel;
    IBOutlet UILabel *sumLabel;
    
}
@property (nonatomic) int getAnswerCount;
@property (nonatomic) int getSumCount;
@end

