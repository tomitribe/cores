<%--
    Licensed to the Apache Software Foundation (ASF) under one or more
    contributor license agreements.  See the NOTICE file distributed with
    this work for additional information regarding copyright ownership.
    The ASF licenses this file to You under the Apache License, Version 2.0
    (the "License"); you may not use this file except in compliance with
    the License.  You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.reflect.Method" %>
<%@ page import="java.lang.reflect.Field" %>
<%

    String server = "";

    try {
        final Class cls = Class.forName("org.apache.catalina.util.ServerInfo");
        final Method method = cls.getDeclaredMethod("getServerInfo");
        final String info = (String) method.invoke(null);
        server = info;
    } catch (Exception e) {
        // might not be running Tomcat/TomEE
    }
    
    if (server == "") {
        try {
            final Class cls = Class.forName("org.apache.activemq.ActiveMQConnectionMetaData");
            final Field field = cls.getDeclaredField("PROVIDER_VERSION");
            final String info = (String) field.get(null);
            server = "ActiveMQ " + info;
        } catch (Exception e) {
            // might not be running ActiveMQ
        }
    }

    if (server == "") {
        server = "&lt;unable to determine software&gt;";
    }

%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CPU Cores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <div class="container my-5">
      <h1>CPU Core Count</h1>
      <div class="col-lg-8 px-0">
        <p class="fs-5">This instance is running <%= server %> using <%= Runtime.getRuntime().availableProcessors() %> CPU cores.</p>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>