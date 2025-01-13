# Cómo crear tu primera aplicación RESTful con Spring Boot

## **Paso 1: Crear un nuevo proyecto Spring Boot**
1. Visita [Spring Initializr](https://start.spring.io/).
2. Configura el proyecto:
    - **Lenguaje:** Java
    - **Build Tool:** Maven
    - **Dependencias:** Spring Web, Spring Boot DevTools
3. Descarga el proyecto y ábrelo en tu IDE.

---

## **Paso 2: Configurar el controlador REST**
Un controlador REST es responsable de manejar las solicitudes entrantes y devolver las respuestas correspondientes.

Crea una clase en el paquete `controller`:

```java
package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, World!";
    }
}
```
- **@RestController:** Indica que esta clase manejará solicitudes HTTP y devolverá respuestas JSON o texto.
- **@GetMapping("/hello")**: Define un endpoint HTTP GET en la ruta `/hello`.

Ejecuta tu aplicación y accede a `http://localhost:8080/hello`. Deberías ver la respuesta: `Hello, World!`.

---

## **Paso 3: Agregar un modelo y servicio**
Crea un modelo para representar tus datos:

```java
package com.example.demo.model;

public class User {
    private Long id;
    private String name;

    public User(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
```

Luego, crea un servicio para manejar la lógica empresarial:

```java
package com.example.demo.service;

import com.example.demo.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    public List<User> getAllUsers() {
        return List.of(
            new User(1L, "John"),
            new User(2L, "Jane"),
            new User(3L, "Doe")
        );
    }
}
```

---

## **Paso 4: Conectar el controlador con el servicio**
Actualiza el controlador para utilizar el servicio:

```java
package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/users")
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }
}
```
Accede a `http://localhost:8080/users` para obtener la lista de usuarios en formato JSON.

---

## **Paso 5: Persistencia de datos con Spring Data JPA**
Agrega la dependencia de Spring Data JPA en el archivo `pom.xml`:

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <scope>runtime</scope>
</dependency>
```

Configura la base de datos MySQL en `application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/demo
spring.datasource.username=root
spring.datasource.password=your_password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.database-platform=org.hibernate.dialect.MySQLDialect
```

Crea una entidad:

```java
package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    // Getters y setters
}
```

Crea un repositorio:

```java
package com.example.demo.repository;

import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
```

---

## **Paso 6: Extender la API**
Añade un endpoint POST para guardar un nuevo usuario:

```java
package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class UserController {

    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @PostMapping("/users")
    public User createUser(@RequestBody User user) {
        return userRepository.save(user);
    }
}
```

Prueba el endpoint usando herramientas como Postman.
