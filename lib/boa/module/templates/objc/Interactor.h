//
//  <%= @prefixed_module %>Interactor.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @prefixed_module %>ModuleInterface.h"

@interface <%= @prefixed_module %>Interactor : NSObject <<%= @prefixed_module %>InteractorInput>

@property (nonatomic, weak, nullable)   id<<%= @prefixed_module %>InteractorOutput> presenter;

@end
