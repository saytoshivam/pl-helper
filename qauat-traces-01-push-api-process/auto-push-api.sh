java -javaagent:/users/shivamjaiswal/tools/opentelemetry-javaagent.jar \
  -Dotel.traces.exporter=otlp \
  -Dotel.resource.attributes=host.name=shivam-device1,service.name=shivam-push-api-auto,service.namespace=shivam-name-space-1,ip=10.55.5.60 \
  -Dotel.exporter.otlp.endpoint=http://localhost:5317 \
  -Dotel.exporter.otlp.insecure=true \
  -jar -Dquarkus.http.port=9190 /Users/shivamjaiswal/my-workspace/push-api-process/build/push-api-process-1.0.0-runner.jar