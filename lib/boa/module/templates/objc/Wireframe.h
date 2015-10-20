//
//  <%= @prefixed_module %>Wireframe.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

@class <%= @prefix %>RootWireframe.h;

@interface <%= @prefixed_module %>Wireframe : NSObject

@property (nonatomic, strong) <%= @prefix %>RootWireframe *rootWireframe;

-(instancetype) init;

- (void)presentFromViewController:(UIViewController *)viewController;

@end
