cd ../manual/api-ingest
export  APP_CONF=/Users/shivamjaiswal/my_workspace/manual/api-ingest/localdev/app.conf
cd  build
java -Dquarkus.http.port=8180 -jar api-ingest-1.0.0-runner.jar