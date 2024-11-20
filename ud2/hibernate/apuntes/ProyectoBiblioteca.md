# Proyecto: Sistema de Gestión de una Biblioteca Digital con Hibernate y Maven

## Enunciado

### **Objetivo General**
Desarrollar un sistema de gestión de una biblioteca digital que implemente funcionalidades avanzadas sin centrarse en operaciones CRUD. Este sistema deberá enfocarse en consultas complejas, relaciones entre entidades, y reglas de negocio específicas relacionadas con el manejo de préstamos, disponibilidad de libros y comportamiento de los usuarios.

El proyecto usará **Hibernate** para el mapeo objeto-relacional y **Maven** para la gestión de dependencias. La base de datos será **MySQL**.

---

### **Entidades y Relaciones**

#### 1. **Usuarios**
- `id`: Clave primaria (tipo `Long`).
- `nombreCompleto`: Nombre del usuario (tipo `String`, máximo 150 caracteres).
- `email`: Dirección de correo electrónico, debe ser único (tipo `String`).
- `estado`: Estado del usuario (**ACTIVO**, **SUSPENDIDO**, **INACTIVO**).
- `numeroDeMultas`: Número total de multas acumuladas por retrasos (tipo `Integer`).

**Relación**:
- Un usuario puede tener varios préstamos activos o finalizados.

#### 2. **Libros**
- `id`: Clave primaria (tipo `Long`).
- `titulo`: Título del libro (tipo `String`, máximo 200 caracteres).
- `isbn`: Código único del libro (tipo `String`).
- `anioPublicacion`: Año en que se publicó (tipo `Integer`).
- `categoria`: Categoría del libro (tipo `String`).
- `copiasDisponibles`: Número de copias disponibles para préstamo (tipo `Integer`).

**Relación**:
- Un libro puede estar asociado a uno o varios autores.

#### 3. **Autores**
- `id`: Clave primaria (tipo `Long`).
- `nombreCompleto`: Nombre del autor (tipo `String`, máximo 150 caracteres).
- `nacionalidad`: País de origen del autor (tipo `String`).

**Relación**:
- Un autor puede haber escrito uno o varios libros.

#### 4. **Préstamos**
- `id`: Clave primaria (tipo `Long`).
- `usuario`: Relación con la entidad Usuario.
- `libro`: Relación con la entidad Libro.
- `fechaPrestamo`: Fecha en la que se realizó el préstamo (tipo `LocalDate`).
- `fechaDevolucion`: Fecha en la que el libro fue devuelto (tipo `LocalDate`, puede ser nulo si no se ha devuelto).
- `estado`: Estado del préstamo (**EN CURSO**, **FINALIZADO**, **PENDIENTE MULTA**).

**Relación**:
- Un préstamo implica a un único usuario y un único libro.

#### Los usuarios deben poder realizar prestamos y devoluciones de libros


### **Requisitos Funcionales**

1. **Disponibilidad de Libros**
    - Diseñar un sistema que permita determinar dinámicamente si hay copias disponibles de un libro antes de registrar un préstamo.
    - Implementar una consulta para mostrar los libros más prestados en un rango de fechas.

2. **Préstamos y Reglas de Negocio**
    - No permitir que usuarios **SUSPENDIDOS** realicen nuevos préstamos.
    - Suspender en el sistema a los usuarios con más de 3 multas acumuladas.

3. **Consultas Personalizadas**
    - Mostrar todos los libros que no han sido prestados en los últimos 6 meses.
    - Listar todos los autores cuyos libros se encuentran con un promedio de copias disponibles menor al 20%.
    - Consultar cuántos libros por categoría tiene la biblioteca, ordenados por la categoría con más ejemplares.

4. **Usuarios Frecuentes**
    - Implementar un algoritmo que identifique a los **usuarios más activos**, considerando tanto la cantidad de préstamos realizados como la frecuencia de devoluciones a tiempo.
    - Generar un ranking de usuarios por número de libros leídos en el último año.

5. **Reportes de Estado**
    - Generar un reporte mensual que contenga:
        - Total de préstamos realizados.
        - Libros más y menos prestados.
        - Número de usuarios suspendidos.
    - Este informe tambien añadirá una multa a los usuarios que no hayan devuelto su libro aún y cambiar el estado del prestamo a **PENDIENTE_MULTA**
    
6. **Autores y Libros**
    - Identificar y listar a los autores con más libros prestados en el último año.
    - Generar un listado de libros por autor que incluya el número de copias prestadas y disponibles, ordenado por popularidad.

---

### Formación de Grupos

El trabajo puede realizarse en grupos de 1, 2 o 3 personas.

### Fecha de Entrega

- **16/12/2024 23:59**
- Enviar repositorio o al correo con los fuentes ruben.jarne@cpilosenlaces.com

---

¡Buena suerte!