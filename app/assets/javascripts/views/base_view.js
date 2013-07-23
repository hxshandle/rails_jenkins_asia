/**
 * Created with JetBrains RubyMine.
 * User: handle
 * Date: 7/11/13
 * Time: 10:54 AM
 * To change this template use File | Settings | File Templates.
 */

_R.Views.BaseView = Backbone.View.extend({
  _rootElement: $("#content"),
  initialize: function () {
    this.render();
  },

  render: function () {
    if (this.template) {
      this._rootElement.append(this.$el.append(this._renderTemplate()));
    }
    return this;
  },
  /**
   * Get complied Hanldebars template
   * "this.template" is the template id eg:
   * "example/index" which will point to "Handlebars_template_root/example/index.hbs"
   * @returns {Function} Return compiled Handlerbars template.
   */
  getTemplate: function () {
    return HandlerBarsTemplates(this.template);
  },
  /**
   * Render HTML DOM by Handlerbasrs template.
   * renderContext,renderOptions will be picked up automatically.
   * @returns {String} return compiled template string.
   * @private
   */
  _renderTemplate: function () {
    var tpl = HandlebarsTemplates[this.template];
    if (!tpl) {
      alert("Template :" + this.template + "is not found");
    }
    var _context = this.renderContext || {};
    var _options = this.renderOptions || {};
    return tpl(_context, _options);
  },
  /**
   * All navigation that is relateive should be passed through the navigate method.
   * @private
   */
  _bindingHerfLink: function () {
    // All navigation that is relative should be passed through the navigate
    // method, to be processed by the router.  If the link has a data-bypass
    // attribute, bypass the delegation completely.
    this.$el.on("click", "a:not([data-bypass])", function (evt) {
      // Get the anchor href and protcol
      var href = $(this).attr("href");
      var protocol = this.protocol + "//";

      // Ensure the protocol is not part of URL, meaning its relative.
      if (href && href.slice(0, protocol.length) !== protocol &&
        href.indexOf("javascript:") !== 0) {
        // Stop the default event to ensure the link will not cause a page
        // refresh.
        evt.preventDefault();

        // `Backbone.history.navigate` is sufficient for all Routers and will
        // trigger the correct events.  The Router's internal `navigate` method
        // calls this anyways.
        Backbone.history.navigate(href, true);
      }
    });
  },
  _unbindHerfLink: function () {
    this.$el.off("click", "a:not([data-bypass])");
  }
});
