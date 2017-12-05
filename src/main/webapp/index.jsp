<html>
  <head>
    <title>Everything Is Awesome!</title>
<%
String name = request.getParameter("name");
String message = "\"Hello, World.\" still sucks. EVERYTHING IS AWESOME 2!";
%>
  </head>
  <body>
    <h1><%= message%></h1>

<%
// If we know who you are, say Hi, because we're cool.
if (name != null && !name.isEmpty()) {
%>
    <p>Hi, I know you, <%=name%>. We're cool.</p>
    <img src="awesome.jpg" alt="Awesome!" />
<%
} else {
// Else, we don't know you. Ask for their name.
%>
    <p>I don't know you! Please tell me your name. I promise I'm not dodgy.</p>
    <form method="GET">
      <input type="text" name="name" />
      <input type="Submit" value="Go!" />
    </form>
    <img src="frynotsure.png" alt="Not sure..."/>
<%
}
%>
    <hr/>
    <p>The JBoss EAP server name is: <%= System.getProperty("jboss.server.name") %></p>
    <p>The current server time is: <%= new java.util.Date() %></p>
    <p>Author: Lucas Costi | The source for this app is on GitHub: <a href="https://github.com/lucascosti/hello2">https://github.com/lucascosti/hello2</a>
  </body>
</html>