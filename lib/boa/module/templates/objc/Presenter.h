//
//  <%= @prefixed_module %>Presenter.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

@class <%= @prefixed_module %>Wireframe;

@interface <%= @prefixed_module %>Presenter : NSObject <<%= @prefixed_module %>InteractorOutput>

@property (nonatomic, strong) <%= @prefixed_module %>Wireframe *wireframe;
@property (nonatomic, strong) id<<%= @prefixed_module %>InteractorInput> interactor;

@property (nonatomic, weak) id<<%= @prefixed_module %>ViewProtocol> view;

@end
