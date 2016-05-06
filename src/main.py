import appier
import appier_extras

class Tripper(appier.WebApp):

    def __init__(self):
        appier.WebApp.__init__(
            self,
            parts = (
                appier_extras.AdminPart,
            )
        )


Tripper().serve()

