import appier

from src import models


class TripController(appier.Controller):

    @appier.route("/trips", "GET")
    def list(self):
        trips = models.Trip.find()
        return self.template(
            "trip/list.html.tpl",
            trips = trips
        )

    @appier.route("/trips", "POST")
    def add(self):
        arg = self.field("name", cast=str)
        trip = models.Trip()
        trip.name = arg
        trip.save()
        return self.redirect("/trips")

    @appier.route("/trips/<name>", "DELETE")
    def remove(self, arg):
        trip = models.Trip.find(name=arg)[0]
        trip.delete()
        return self.redirect("/trips")