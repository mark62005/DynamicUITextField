//
//  ViewController.m
//  DynamicUITextField
//
//  Created by Mark Wong on 2022-05-24.
//

#import "ViewController.h"

typedef NS_ENUM(int, FontColor) {
  Blue,
  Brown,
  Cyan,
  Green,
  Indigo,
  Mint,
  Orange,
  Pink,
  Purple,
  Red,
  Teal,
  Yellow,
  Gray,
  Black,
  White
};

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (IBAction)textEditingChanged: (UITextField *)sender {
  NSArray *words = [[sender text] componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
  
  for (NSString *word in words) {
    NSLog(@"%@", word);
    
    NSRegularExpression *colorRegex = [NSRegularExpression regularExpressionWithPattern:@"^(blue|brown|cyan|green|indigo|mint|orange|pink|purple|red|teal|yellow|gray|black|white)$" options:NSRegularExpressionCaseInsensitive error:nil];
    
    if ([colorRegex numberOfMatchesInString:word options:0 range:NSMakeRange(0, [word length])] >= 1) {
      NSString *lowercased = [word lowercaseString];
      NSDictionary *attributes = [[NSDictionary alloc] initWithObjectsAndKeys:NSForegroundColorAttributeName, [UIColor colorNamed:word], nil];
      NSAttributedString *newString = [[NSAttributedString alloc] initWithString:word attributes:attributes];
      
      [sender shouldChangeTextInRange:<#(nonnull UITextRange *)#> replacementText:<#(nonnull NSString *)#>]
    }
  }
}

//- (UIColor *)getTextColor: ()

@end
