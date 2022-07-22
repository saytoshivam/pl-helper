cd ../push-api-process
export  APP_CONF=/Users/shivamjaiswal/my_workspace/push-api-process/localdev/app.conf
cd  build
java -Dquarkus.http.port=9190 -jar push-api-process-1.0.0-runner.jar
