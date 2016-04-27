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

@property (nonatomic, strong, nonnull) <%= @prefixed_module %>Router *router;
@property (nonatomic, strong, nullable) id<<%= @prefixed_module %>InteractorInput> interactor;

@property (nonatomic, weak, nullable) id<<%= @prefixed_module %>ViewProtocol> view;

@end
