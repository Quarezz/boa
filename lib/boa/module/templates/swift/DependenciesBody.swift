// ------------------------------------------------------------------
// begin <%= @module %> module

// instantiate classes
var <%= @module.downcase %>Router: <%= @prefixed_module %>Router      = <%= @prefixed_module %>Router()
var <%= @module.downcase %>Presenter: <%= @prefixed_module %>Presenter      = <%= @prefixed_module %>Presenter()
var <%= @module.downcase %>DataManager: <%= @prefixed_module %>DataManager  = <%= @prefixed_module %>DataManager()
var <%= @module.downcase %>Interactor: <%= @prefixed_module %>Interactor    = <%= @prefixed_module %>Interactor()

// presenter <-> Router
<%= @module.downcase %>Presenter.Router = <%= @module.downcase %>Router
<%= @module.downcase %>Router.presenter = <%= @module.downcase %>Presenter

// presenter <-> interactor
<%= @module.downcase %>Presenter.interactor = <%= @module.downcase %>Interactor
<%= @module.downcase %>Interactor.presenter = <%= @module.downcase %>Presenter

// interactor -> data_manager
<%= @module.downcase %>Interactor.dataManager = <%= @module.downcase %>DataManager

// data_manager -> data_store
// *** connect datastore

// connect Routers
<%= @module.downcase %>Router.rootRouter = rootRouter
// *** connect more Routers

// configure delegate
// *** add delegate here if needed

// end <%= @module %> module
// ------------------------------------------------------------------
