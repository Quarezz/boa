//
//  <%= @prefixed_module %>Interactor.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

@class <%= @prefixed_module %>DataManager;

@interface <%= @prefixed_module %>Interactor : NSObject <<%= @prefixed_module %>InteractorInput>

@property (nonatomic, strong) <%= @prefixed_module %>DataManager *dataManager;
@property (nonatomic, weak)   id<<%= @prefixed_module %>InteractorOutput> presenter;

@end
