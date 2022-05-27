//
//  ViewController.m
//  DynamicUITextField
//
//  Created by Mark Wong on 2022-05-24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  _textField.delegate = self;
}

- (IBAction)textEditingChanged: (UITextField *)sender {
  NSString *text = [sender text];
  NSArray *words = [text componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
  NSMutableArray *charArr = [NSMutableArray new];
  for (int i = 0; i < [text length]; i++) {
    [charArr addObject:[NSString stringWithFormat:@"%c", [text characterAtIndex:i]]];
  }
  
  for (NSString *word in words) {
    NSLog(@"%@", word);
    
    NSRegularExpression *colorRegex = [NSRegularExpression regularExpressionWithPattern:@"^(blue|brown|cyan|green|indigo|mint|orange|pink|purple|red|teal|yellow|gray|black|white)$" options:NSRegularExpressionCaseInsensitive error:nil];
    
    NSUInteger loc = [charArr count] - 1 - [word length];
    NSUInteger len = [word length];
//    if ([self textField:sender shouldChangeCharactersInRange:NSMakeRange(loc, len) replacementString:word]) {
//      NSString *lowercased = [word lowercaseString];
////      NSDictionary *attributes = [[NSDictionary alloc] initWithObjectsAndKeys:NSForegroundColorAttributeName, [UIColor colorNamed:lowercased], nil];
////      NSAttributedString *newString = [[NSAttributedString alloc] initWithString:word attributes:attributes];
////      NSUInteger loc = [charArr count] - 1 - [word length];
////      NSUInteger len = [word length];
//      [sender setTextColor:[UIColor colorNamed:lowercased]];
//      UITextPosition *lastChar = [sender endOfDocument];
//      UITextPosition *startOfLastWord = [sender positionFromPosition:lastChar offset:[word length]];
//      UITextRange *textRange = [sender textRangeFromPosition:startOfLastWord toPosition:lastChar];
//      [self textField:sender shouldChangeCharactersInRange:NSMakeRange(loc, len) replacementString:word];
//    }
  }
}

- (BOOL)textField: (UITextField *)textField shouldChangeCharactersInRange: (NSRange)range replacementString: (NSString *)string {
//  NSRegularExpression *colorRegex = [NSRegularExpression regularExpressionWithPattern:@"^(blue|brown|cyan|green|indigo|mint|orange|pink|purple|red|teal|yellow|gray|black|white)$" options:NSRegularExpressionCaseInsensitive error:nil];
//
//  if ([colorRegex numberOfMatchesInString:string options:0 range:NSMakeRange(0, [string length])] >= 1) {
//    return YES;
//  }
//  return NO;
  return YES;
}



@end
