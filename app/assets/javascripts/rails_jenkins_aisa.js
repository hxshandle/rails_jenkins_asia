window.RailsJenkinsAisa = window._R = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  cachedViews:{},
  initialize: function() {
    console.log("application start");
    //this.app = new RailsJenkinsAisa.Views.App();
    this.appRouter = new _R.Routers.Router();
    Backbone.history.start({pushState: true});
  }
};

$(document).ready(function(){
  _R.initialize();
});
