//
//  <%= @prefixed_module %>Presenter.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

@class <%= @prefixed_module %>Router;

@interface <%= @prefixed_module %>Presenter : NSObject <<%= @prefixed_module %>PresenterProtocol , <%= @prefixed_module %>InteractorOutput>

@property (nonatomic, strong) <%= @prefixed_module %>Router *Router;
@property (nonatomic, strong) id<<%= @prefixed_module %>InteractorInput> interactor;

@property (nonatomic, weak) id<<%= @prefixed_module %>ViewProtocol> view;

@end
