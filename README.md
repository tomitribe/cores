Count cores allocated to a Tomcat, TomEE or ActiveMQ instance.   Steps:

 - Download the [cores.jar](https://github.com/tomitribe/cores/releases/download/cores-1.0/cores.jar) file.
 - Run from inside the vm or machine where the Tomcat, TomEE, or ActiveMQ process is running.
 - Repeat for all instances of Tomcat, TomEE, or ActiveMQ.

Run in Linux/Windows via:

```
java -jar cores.jar 
```

Be sure to run cores.jar using the same Java version as your Tomcat, TomEE or ActiveMQ instance.
