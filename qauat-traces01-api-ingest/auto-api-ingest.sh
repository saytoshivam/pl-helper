java -javaagent:/users/shivamjaiswal/tools/opentelemetry-javaagent.jar \
  -Dotel.traces.exporter=otlp \
  -Dotel.resource.attributes=host.name=shivam-device1,service.name=shivam-api-ingest-auto,service.namespace=shivam-name-space-1,ip=10.55.5.60 \
  -Dotel.exporter.otlp.endpoint=http://localhost:5317 \
  -Dotel.exporter.otlp.insecure=true \
  -jar -Dquarkus.http.port=8180 /Users/shivamjaiswal/my-workspace/api-ingest/build/api-ingest-1.0.0-runner.jar