FROM squidfunk/mkdocs-material

RUN pip install --no-cache-dir \
  mkdocs-render-swagger-plugin

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
