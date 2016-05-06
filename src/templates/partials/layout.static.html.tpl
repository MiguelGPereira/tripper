{% include "partials/doctype.html.tpl" %}
<head>
    {% block head %}
        {% include "partials/content_type.html.tpl" %}
        {% include "partials/includes.html.tpl" %}
        <title>Layout / {% block title %}{% endblock %}</title>
    {% endblock %}
</head>
<body class="ux wait-load {{ session.sub_type|default('', True) }} {{ session.style|default('', True) }}" >
    <div id="overlay" class="overlay"></div>
    <div id="header" class="header">
        {% block header %}
            {% include "partials/header.html.tpl" %}
            <h1>{% block name %}{% endblock %}</h1>
            <div class="links">
                {% if link == "home" %}
                    <a href="/" class="active">home</a>
                {% else %}
                    <a href="/">home</a>
                {% endif %}
                //
                {% if link == "trips" %}
                    <a href="/trips" class="active">show</a>
                {% else %}
                    <a href="/trips">show</a>
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
