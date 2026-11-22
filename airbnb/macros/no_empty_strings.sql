{% macro no_empty_strings(model_name) %}
    {% for col in adapter.get_columns_in_relation(ref(model_name)) -%}
        {%- if col.is_string() -%}
            {{-col.name }} is not null and {{ col.name }} != '' AND 
        {% endif -%}
    {%- endfor -%}
    TRUE
{%- endmacro -%}