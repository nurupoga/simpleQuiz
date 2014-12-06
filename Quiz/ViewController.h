//
//  ViewController.h
//  Quiz
//
//  Created by ohtatomotaka on 2014/12/03.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //クイズの問題を追加する配列を宣言
    NSMutableArray *quizListArray;
    //ボタン1の関連付け
    IBOutlet UIButton *choise1;
    //ボタン2の関連付け
    IBOutlet UIButton *choise2;
    //ボタン3の関連付け
    IBOutlet UIButton *choise3;
    //問題文のTextViewの関連付け
    IBOutlet UITextView *probelemText;
    //ImageViewなどを宣言する場合はこの下に
    
    //現在何問目か
    int sumCount;
    //何問正解してるか
    int answerCount;
    //正解番号一時保存
    int answerNumber;
}
//ボタン1の関連付け
-(IBAction)answerIsChoise1;
//ボタン2の関連付け
-(IBAction)answerIsChoise2;
//ボタン3の関連付け
-(IBAction)answerIsChoise3;
@end

