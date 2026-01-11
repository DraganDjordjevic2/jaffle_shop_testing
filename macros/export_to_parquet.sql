{% macro export_to_parquet() %}
    COPY {{ this }} TO './artifacts/{{ this.identifier }}.parquet' (COMPRESSION zstd);
{% endmacro %}
