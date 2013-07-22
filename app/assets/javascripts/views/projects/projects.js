_R.Views.Projects = _R.Views.BaseView.extend({
  el:$("#content"),
  template:"projects/projects",
  initialize:function(){
    this.model = new _R.Models.Projects();
    this.listenTo(this.model,"sync",this._render);
    this.model.fetch();
  },
  _render:function(){
    this.renderContext = this.model.toJSON();
    this.render();
    this._bindingHerfLink();
  }
});