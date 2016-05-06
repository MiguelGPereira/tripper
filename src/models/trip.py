import appier
import appier_extras

class Trip(appier_extras.admin.Base):

    name = appier.field(
        type = unicode
    )

    @classmethod
    def validate(cls):
        return super(Trip, cls).validate() + [
            appier.not_null("name"),
            appier.not_empty("name"),
        ]