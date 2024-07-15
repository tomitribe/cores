Count cores allocated to a Tomcat, TomEE or ActiveMQ instance.   Steps:

 - Download the [cores.jar](https://github.com/tomitribe/cores/releases/download/cores-1.0/cores.jar) file.
 - Run from inside the vm or machine where the Tomcat, TomEE, or ActiveMQ process is running.
 - Repeat for all instances of Tomcat, TomEE, or ActiveMQ.

Run in Linux/Windows via:

```
java -jar cores.jar 
```

Be sure to run cores.jar using the same Java version as your Tomcat, TomEE or ActiveMQ instance.


Alternatively, you can deploy a JSP on each Tomcat, TomEE or ActiveMQ instance. Steps:

- Download the [cores.jsp](https://raw.githubusercontent.com/tomitribe/cores/main/cores.jsp) file.
- Add this to the `webapps/ROOT` folder (assuming the `ROOT` application is deployed) or another application on Tomcat/TomEE
- Add this to the `webapps/admin` folder on ActiveMQ
- Access the `cores.jsp` page via your server's web UI, for example http://your-server:8080/cores.jsp on Tomcat/TomEE, or http://your-server:8161/admin/cores.jsp on ActiveMQ.
