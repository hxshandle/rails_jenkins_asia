_R.Routers.Router = Backbone.Router.extend({
  routes:{
    "":"index",
    "projects":"projects"
  },
  index:function(){
    console.log("index page");
    var _app = new _R.Views.App();
    var _dashboard = new _R.Views.Dashboard();
  },
  projects:function(){
    console.log("projects page");
    var projectPage = new _R.Views.Projects();
  }
});