{% include "partials/doctype.html.tpl" %}
<head>
    {% block head %}
        {% include "partials/content_type.html.tpl" %}
        {% include "partials/includes.html.tpl" %}
        <title>Tripper / {% block title %}{% endblock %}</title>
    {% endblock %}
</head>
<body class="ux wait-load {{ session.sub_type|default('', True) }} {{ session.style|default('', True) }}" >
    <div id="overlay" class="overlay"></div>
    <div id="header" class="header">
        {% block header %}
            {% include "partials/header.html.tpl" %}
            <h1>{% block name %}{% endblock %}</h1>
            <div class="links">
                <script type="application/javascript">
                    console.log("[{{ links }}]");
                </script>
                {% if title == "Home" %}
                    <a id="{{ link }}" href="{{ url_for('base.index') }}" class="active">home</a>
                {% else %}
                    <a href="{{ url_for('base.index') }}">home</a>
                {% endif %}
                //
                {% if link == "trips" %}
                    <a href="{{ url_for('trip.list') }}">show</a>
                {% else %}
                    <a href="{{ url_for('trip.list') }}">show</a>
                {% endif %}
            </div>
        {% endblock %}
    </div>
    <br/><br/>
    <div id="content" class="content {% block style %}{% endblock %}">{% block content %}{% endblock %}</div>
    <div id="footer" class="footer">
        {% block footer %}
            {% include "partials/footer.html.tpl" %}
        {% endblock %}
    </div>
</body>
{% include "partials/end_doctype.html.tpl" %}
