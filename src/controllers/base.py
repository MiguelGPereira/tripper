import appier

class BaseController(appier.Controller):

    @appier.route("/", "GET", json = True)
    @appier.route("/index", "GET", json = True)
    def index(self):
        return self.template(
            "static/index.html.tpl",
            index = "/",
            trips = "/trips"
        )

    @appier.route("/headers", "GET", json = True)
    def headers(self):
        return self.request.in_headers