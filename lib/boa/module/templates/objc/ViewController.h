//
//  <%= @prefixed_module %>ViewController.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <UIKit/UIKit.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

@interface <%= @prefixed_module %>ViewController : UIViewController <<%= @prefixed_module %>ViewProtocol>

@property (nonatomic, strong) id<<%= @prefixed_module %>PresenterProtocol> presenter;

@end
