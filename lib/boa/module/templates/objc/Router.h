//
//  <%= @prefixed_module %>Router.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class <%= @prefixed_module %>ViewController;

@interface <%= @prefixed_module %>Router : NSObject

@property (nonatomic, weak) <%= @prefixed_module %>ViewController *viewController;

-(void) presentFromViewController:(UIViewController *) sourceViewController;

@end
