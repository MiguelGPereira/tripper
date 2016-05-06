{% extends "partials/layout.static.html.tpl" %}
{% block title %}Trips{% endblock %}
{% block name %}List of Trips{% endblock %}
{% block content %}
    {% include "trip/new.html.tpl" %}
    <table class="table" id="triplist">
        {% for trip in trips %}
            <tr>
                <td>{{ trip.name }}</td>
                <td>
                    <div class="button delete_trip" id="{{ trip.name }}">-</div>
                </td>
            </tr>
        {% endfor %}
    </table>
{% endblock %}
