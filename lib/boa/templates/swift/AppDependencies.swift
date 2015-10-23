//
//  <%= @project %>AppDependencies.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import Foundation
import UIKit

class <%= @project %>AppDependencies: NSObject
{

    class func initWithWindow(window: UIWindow) -> <%= @project %>AppDependencies
    {

        let obj = <%= @project %>AppDependencies()
        obj.configureDependencies(window)

        return obj
    }

    func installRootViewController()
    {
        // *** present first Router here
    }

    func configureDependencies(window: UIWindow)
    {
        // -----
        // root classes
        let rootRouter = RootRouter.init(window: window)
        // *** add datastore

        // *** module initialization
    }
}
