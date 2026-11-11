# Student Management System

A Java web application built with JSP and a servlet-style web application structure. The current interface includes login, a home page, student insertion and deletion workflows.

## Technology

- Java
- JSP
- Java Servlet web application structure
- HTML and CSS
- Java web deployment descriptor (`web.xml`)

## Application structure

The project is located in `StudentMG/`.

```text
StudentMG/
├── src/
│   └── main/
│       ├── java/
│       └── webapp/
│           ├── WEB-INF/
│           │   └── web.xml
│           ├── Home.jsp
│           ├── Login.jsp
│           ├── insert.jsp
│           └── delete.jsp
└── build/
```

## Main screens and workflows

- Login page
- Home page
- Student insertion form
- Student deletion page

## Running the application

This is a Java web application. Open the `StudentMG/` project in an IDE configured for Java web development, configure a compatible servlet container (for example, Apache Tomcat), and deploy the application.

The repository snapshot does not provide enough verified build metadata to prescribe a specific JDK, servlet API version or database configuration. Check the deployment descriptor and Java source before configuring the runtime.

## Development notes

- Review the `WEB-INF/web.xml` deployment descriptor for application configuration.
- Configure database connection details outside source control if persistence is used.
- Do not commit credentials or local IDE/build output.

## Maintainer

[Shyam Katariya](https://github.com/Shyam-Katariya) · [Portfolio](https://mediumturquoise-fox-633667.hostingersite.com/shyam.html)