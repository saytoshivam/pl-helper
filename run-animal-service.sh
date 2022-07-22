java -javaagent:/users/shivamjaiswal/tools/opentelemetry-javaagent.jar \
  -Dotel.traces.exporter=otlp \
  -Dotel.resource.attributes=host.name=shivam-device1,service.name=shivam-service1,service.namespace=shivam-name-space-1,ip=10.55.5.60 \
  -Dotel.exporter.otlp.endpoint=http://localhost:4317 \
  -Dotel.exporter.otlp.insecure=true \
  -jar -Dserver.port=9002 /users/shivamjaiswal/tools/animal-name-service-0.0.1-SNAPSHOT.jar