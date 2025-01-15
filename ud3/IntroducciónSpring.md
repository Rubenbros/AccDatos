## **1. Introducción a Spring Boot**

### **¿Qué es Spring Boot?**
Spring Boot es un marco de trabajo (framework) construido sobre Spring, diseñado para simplificar la creación de aplicaciones basadas en Spring. Su propósito principal es reducir la cantidad de configuración manual necesaria para desarrollar aplicaciones robustas y escalables.

Spring Boot proporciona una solución completa para el desarrollo de aplicaciones empresariales modernas, combinando facilidad de uso, configuración automática y una rica colección de herramientas integradas.

### **¿Qué es Spring?**
Spring es un marco de trabajo completo y modular para el desarrollo de aplicaciones en Java. Su arquitectura está basada en principios sólidos como la inversión de control (IoC) y la inyección de dependencias (DI), lo que permite un código más limpio, desacoplado y fácil de mantener.

#### **Componentes principales de Spring:**

1. **Inversión de Control (IoC):**
   - Este principio delega la responsabilidad de crear y gestionar los objetos de una aplicación al contenedor de Spring, conocido como el contenedor IoC.
   - Los desarrolladores no necesitan instanciar manualmente objetos; en su lugar, el contenedor IoC se encarga de instanciarlos, configurarlos y administrarlos durante su ciclo de vida.
   - Esto reduce el acoplamiento entre los componentes y fomenta un diseño más flexible y extensible.
   - **Ejemplo:** Un objeto de servicio que necesita un repositorio será inyectado automáticamente por el contenedor, lo que elimina la necesidad de que el servicio cree manualmente el repositorio.

2. **Inyección de Dependencias (DI):**
   - La DI es un patrón de diseño que permite que un objeto reciba sus dependencias desde una fuente externa, en lugar de crearlas internamente.
   - En Spring, esto se implementa mediante anotaciones como `@Autowired`, o configuraciones explícitas en XML o clases Java.
   - **Ventajas:**
      - Facilita las pruebas unitarias al permitir la sustitución de dependencias con objetos simulados (mocks).
      - Promueve un diseño más limpio y modular, donde los componentes tienen una única responsabilidad.
   - **Ejemplo:**
     ```java
     @Service
     public class UserService {
         private final UserRepository userRepository;

         @Autowired
         public UserService(UserRepository userRepository) {
             this.userRepository = userRepository;
         }
     }
     ```

3. **Programación Orientada a Aspectos (AOP):**
   - La AOP permite encapsular lógica transversal, como la seguridad, transacciones o el registro de logs, en "aspectos" separados del código principal.
   - Con AOP, puedes aplicar esta lógica a través de "advice" en puntos específicos de tu aplicación, denominados "join points".
   - **Ejemplo práctico:**
      - Registrar el tiempo que toma ejecutar un método:
        ```java
        @Aspect
        @Component
        public class LoggingAspect {
            @Around("execution(* com.example.demo..*(..))")
            public Object logExecutionTime(ProceedingJoinPoint joinPoint) throws Throwable {
                long start = System.currentTimeMillis();
                Object proceed = joinPoint.proceed();
                long executionTime = System.currentTimeMillis() - start;
                System.out.println(joinPoint.getSignature() + " executed in " + executionTime + "ms");
                return proceed;
            }
        }
        ```

4. **Modelo MVC (Model-View-Controller):**
   - Spring ofrece un robusto soporte para implementar aplicaciones web siguiendo el patrón MVC, separando claramente las responsabilidades:
      - **Model:** Representa los datos y la lógica de negocio.
      - **View:** Muestra los datos al usuario final.
      - **Controller:** Maneja las solicitudes del usuario y coordina la interacción entre el modelo y la vista.
   - **Características del soporte MVC de Spring:**
      - Enrutamiento basado en anotaciones con `@RequestMapping`, `@GetMapping`, `@PostMapping`, etc.
      - Soporte para datos JSON y XML en las respuestas, utilizando bibliotecas como Jackson.
      - Integración con tecnologías de vistas como Thymeleaf, JSP, entre otras.
   - **Ejemplo básico:**
     ```java
     @Controller
     public class HomeController {

         @GetMapping("/")
         public String homePage(Model model) {
             model.addAttribute("message", "Bienvenido a Spring MVC");
             return "home"; // Nombre de la vista (home.html o home.jsp)
         }
     }
     ```

5. **Acceso a Datos:**
   - Spring proporciona herramientas potentes para interactuar con bases de datos, simplificando las operaciones comunes:
      - **Spring JDBC:** Proporciona una abstracción para trabajar con bases de datos relacionales usando SQL estándar.
      - **Spring Data JPA:** Una extensión de JPA que reduce significativamente el código necesario para realizar operaciones CRUD y consultas personalizadas.
   - **Características destacadas:**
      - Gestión automática de transacciones.
      - Reducción de código repetitivo mediante repositorios.
      - Integración con múltiples bases de datos (MySQL, PostgreSQL, Oracle, etc.).
   - **Ejemplo básico con Spring Data JPA:**
     ```java
     @Entity
     public class Product {
         @Id
         @GeneratedValue(strategy = GenerationType.IDENTITY)
         private Long id;
         private String name;
         private Double price;

         // Getters y setters
     }

     @Repository
     public interface ProductRepository extends JpaRepository<Product, Long> {
         List<Product> findByNameContaining(String keyword);
     }
     ```

### **¿Cómo mejora Spring Boot a Spring?**
Spring Boot construye sobre la base de Spring, pero introduce características adicionales para hacerlo más accesible y productivo:

1. **Configuración Automática:**
    - Spring Boot detecta automáticamente las dependencias y configura los componentes necesarios.
    - Por ejemplo, si agregas una dependencia de base de datos, Spring Boot configurará automáticamente un DataSource.

2. **Servidor Embebido:**
    - Incluye servidores como Tomcat, Jetty o Undertow, eliminando la necesidad de configurarlos manualmente.
    - Esto permite ejecutar aplicaciones con un simple comando, sin necesidad de despliegue externo.

3. **Facilidad para Prototipar:**
    - Spring Boot incluye herramientas como Spring Boot DevTools, que facilita la creación rápida de prototipos con reinicio automático del servidor durante el desarrollo.

4. **Arquitectura Modular:**
    - Ofrece "starters" (dependencias preconfiguradas) para facilitar la integración de herramientas comunes como Spring Web, Spring Security, y Spring Data.

5. **Aplicaciones Autónomas:**
    - Permite crear archivos JAR ejecutables que contienen todo lo necesario para correr la aplicación.

---

## **2. Conceptos Clave en Spring Boot**

### **¿Qué es un controlador?**
Un controlador es una clase en Spring que maneja solicitudes HTTP entrantes y define las respuestas correspondientes. Representa la capa encargada de gestionar las interacciones entre el cliente y el servidor.

#### **Anotaciones importantes para controladores:**
- **@Controller:** Define una clase como un controlador en Spring MVC. Se utiliza cuando se manejan vistas (por ejemplo, HTML).
- **@RestController:** Combina `@Controller` y `@ResponseBody`, permitiendo devolver directamente datos JSON o XML.

**Ejemplo:**
```java
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, World!";
    }
}
```
- **@GetMapping("/hello"):** Define un endpoint HTTP GET en la ruta `/hello`.

### **¿Qué es un bean?**
Un bean es un objeto gestionado por el contenedor de Spring. Representa los componentes principales de la aplicación que se inyectan donde sean necesarios.

#### **Cómo se define un bean:**
- **@Component:** Marca una clase como un bean genérico.
- **@Service:** Especifica que una clase contiene lógica de negocio.
- **@Repository:** Indica que la clase interactúa con la base de datos.

**Ejemplo:**
```java
@Component
public class MyBean {
    public String saySomething() {
        return "Soy un bean gestionado por Spring";
    }
}
```

### **¿Qué es un servicio RESTful?**
Un servicio RESTful utiliza el protocolo HTTP para interactuar con recursos. Los servicios REST son muy utilizados para construir APIs debido a su simplicidad y escalabilidad.

#### **Características de REST:**
- **Representación de recursos:** Usan formatos como JSON o XML para representar datos.
- **Métodos HTTP estándar:** GET, POST, PUT, DELETE, etc.
- **Stateless:** Cada solicitud contiene toda la información necesaria para ser procesada.

**Ejemplo de un servicio RESTful:**
```java
@RestController
@RequestMapping("/api")
public class UserController {

    @GetMapping("/users")
    public List<String> getAllUsers() {
        return List.of("User1", "User2", "User3");
    }
}
```

### **¿Qué es Spring Data JPA?**
Spring Data JPA es un módulo que simplifica el acceso a bases de datos al proporcionar abstracciones para operaciones CRUD y consultas personalizadas.

#### **Beneficios de Spring Data JPA:**
- Reducción de código repetitivo.
- Integración sencilla con bases de datos relacionales.
- Consultas personalizadas mediante nombres de métodos o anotaciones.

**Ejemplo:**
```java
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findByName(String name);
}
```

### **¿Qué es Spring Security?**
Spring Security es un módulo de Spring que proporciona autenticación y autorización para aplicaciones. Ofrece mecanismos como autenticación básica, gestión de sesiones y soporte para OAuth2 y JWT.

**Ejemplo básico de configuración de seguridad:**
```java
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .anyRequest().authenticated()
            .and()
            .httpBasic();
    }
}
```

---

## **3. Recursos adicionales**
- [Documentación oficial de Spring](https://spring.io/projects/spring-framework)
- [Documentación oficial de Spring Boot](https://spring.io/projects/spring-boot)
- [Baeldung - Tutoriales de Spring](https://www.baeldung.com/)

