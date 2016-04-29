//
//  <%= @prefixed_module %>Router.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

@class <%= @prefixed_module %>ViewController;

@interface <%= @prefixed_module %>Router : NSObject <<%= @prefixed_module %>RouterInput>

@property (nonatomic, weak, readonly, nullable) <%= @prefixed_module %>ViewController *viewController;

-(void) navigateFrom:(nonnull UIViewController *) sourceViewController;

@end
