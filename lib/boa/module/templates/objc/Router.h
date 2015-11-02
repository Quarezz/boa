//
//  <%= @prefixed_module %>Router.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class <%= @prefix %>RootRouter;
@class <%= @prefixed_module %>ViewController;

@interface <%= @prefixed_module %>Router : NSObject

@property (nonatomic, strong) <%= @prefix %>RootRouter *rootRouter;
@property (nonatomic, weak) <%= @prefixed_module %>ViewController *viewController;

-(instancetype) init;

- (void)presentFromViewController:(UIViewController *)viewController;

@end
