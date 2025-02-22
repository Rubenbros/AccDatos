
-- Insert Users
INSERT INTO Usuarios (id, nombreCompleto, email, estado, numeroDeMultas) VALUES
(1, 'Nichole Castro', 'ellisconnie@hotmail.com', 'ACTIVO', 1),
(2, 'Eric Johnson', 'catherinejacobs@yahoo.com', 'INACTIVO', 0),
(3, 'Kimberly Smith', 'tlove@hotmail.com', 'INACTIVO', 1),
(4, 'Nicholas Marshall', 'fbrown@hotmail.com', 'INACTIVO', 0),
(5, 'Grace Herrera', 'shelly32@gallegos-harris.org', 'ACTIVO', 2),
(6, 'Hector Walters', 'antonioherrera@johnson.com', 'INACTIVO', 3),
(7, 'Teresa Preston', 'vanessalam@alvarez-underwood.com', 'ACTIVO', 3),
(8, 'Chad Henson', 'hjohnson@allen.net', 'SUSPENDIDO', 1),
(9, 'Tara Simpson', 'ljohnson@mclaughlin.com', 'INACTIVO', 2),
(10, 'Autumn Evans', 'jamesmendoza@owens.com', 'ACTIVO', 1),
(11, 'Joshua Barrett', 'bradley80@barrett.info', 'INACTIVO', 2),
(12, 'Aaron Hickman', 'chernandez@gmail.com', 'ACTIVO', 5),
(13, 'Mr. Phillip Burke', 'quinntammy@martin.com', 'SUSPENDIDO', 5),
(14, 'Mrs. Melissa Johnson', 'deanann@lee-romero.com', 'SUSPENDIDO', 4),
(15, 'David Armstrong', 'tonyanguyen@hotmail.com', 'ACTIVO', 2),
(16, 'Lindsey Sharp', 'misty15@hotmail.com', 'SUSPENDIDO', 4),
(17, 'Jennifer Perez', 'cliffordkrause@eaton-jenkins.biz', 'INACTIVO', 3),
(18, 'Sophia Dalton', 'sara05@buck-johnson.com', 'INACTIVO', 0),
(19, 'Sheila Jones', 'jamesnichols@yahoo.com', 'ACTIVO', 0),
(20, 'Thomas Trujillo', 'nortondouglas@gmail.com', 'SUSPENDIDO', 2),
(21, 'Michael Wyatt', 'riveraangela@hotmail.com', 'SUSPENDIDO', 1),
(22, 'Stephen Russell', 'jessica80@yahoo.com', 'SUSPENDIDO', 4),
(23, 'Anthony Hubbard', 'rachelproctor@houston.com', 'ACTIVO', 2),
(24, 'Anthony Spears', 'cnelson@hotmail.com', 'SUSPENDIDO', 4),
(25, 'John Elliott', 'dcurtis@gmail.com', 'ACTIVO', 2),
(26, 'Elizabeth Robertson', 'bishopjillian@johnson-hickman.net', 'INACTIVO', 2),
(27, 'Susan Fox', 'anthonychung@aguilar-townsend.com', 'INACTIVO', 1),
(28, 'Courtney Marshall', 'christopherrangel@hotmail.com', 'ACTIVO', 3),
(29, 'Samantha Scott', 'randyolson@johnson-greene.com', 'SUSPENDIDO', 4),
(30, 'Juan Dixon', 'ireynolds@bolton.com', 'ACTIVO', 0),
(31, 'Mary Lopez', 'catherinebailey@yahoo.com', 'ACTIVO', 0),
(32, 'Ashley Lynch', 'karigomez@yahoo.com', 'SUSPENDIDO', 0),
(33, 'Kylie Simmons', 'zdiaz@gmail.com', 'ACTIVO', 0),
(34, 'Melanie Lester', 'jeffrey69@cole.org', 'ACTIVO', 1),
(35, 'Mark Espinoza', 'smithrodney@bailey.com', 'INACTIVO', 1),
(36, 'Richard Johnston', 'hsutton@martin.com', 'INACTIVO', 5),
(37, 'Paula Palmer', 'jordanjennifer@gmail.com', 'INACTIVO', 2),
(38, 'Casey Wright', 'williamschristopher@hotmail.com', 'INACTIVO', 3),
(39, 'Daniel Mitchell', 'iblack@melton.net', 'SUSPENDIDO', 3),
(40, 'Anna Vasquez', 'whicks@elliott-martin.com', 'SUSPENDIDO', 2),
(41, 'Brian Jones PhD', 'rodriguezpamela@gmail.com', 'SUSPENDIDO', 0),
(42, 'Jennifer Joseph', 'glassanna@macdonald-bradley.com', 'SUSPENDIDO', 1),
(43, 'Wanda Riley', 'burketyler@hotmail.com', 'INACTIVO', 3),
(44, 'Scott Lane', 'kim19@short-cruz.com', 'SUSPENDIDO', 4),
(45, 'Christopher Ellis', 'gregorydelgado@smith.com', 'ACTIVO', 5),
(46, 'Cathy Johnson', 'goodwindaniel@gmail.com', 'SUSPENDIDO', 4),
(47, 'Kimberly Jones', 'roysmith@gmail.com', 'INACTIVO', 0),
(48, 'Eric Cortez', 'hnelson@bryant.info', 'ACTIVO', 4),
(49, 'Adam Lee', 'john25@hotmail.com', 'SUSPENDIDO', 1),
(50, 'Margaret Williams', 'wilsonadam@hotmail.com', 'SUSPENDIDO', 1);

-- Insert Authors
INSERT INTO Autores (id, nombreCompleto, nacionalidad) VALUES
(1, 'Gabriel García Márquez', 'Bangladesh'),
(2, 'Isabel Allende', 'Turkey'),
(3, 'J.K. Rowling', 'Canada'),
(4, 'George Orwell', 'Uganda'),
(5, 'Haruki Murakami', 'Maldives'),
(6, 'Gabriel García Márquez', 'Montenegro'),
(7, 'J.R.R. Tolkien', 'Rwanda'),
(8, 'Gabriel García Márquez', 'Dominica'),
(9, 'Ken Follett', 'Belgium'),
(10, 'Umberto Eco', 'Kenya'),
(11, 'Pablo Neruda', 'Montenegro'),
(12, 'José Saramago', 'Egypt'),
(13, 'Carlos Ruiz Zafón', 'Cocos (Keeling) Islands'),
(14, 'Antoine de Saint-Exupéry', 'Tonga'),
(15, 'Franz Kafka', 'Saint Martin'),
(16, 'Miguel de Cervantes', 'Luxembourg'),
(17, 'Harper Lee', 'Isle of Man'),
(18, 'Camilo José Cela', 'Sierra Leone'),
(19, 'Julio Cortázar', 'Sao Tome and Principe'),
(20, 'José Saramago', 'Ghana'),
(21, 'Juan Rulfo', 'Mauritius'),
(22, 'Ray Bradbury', 'Belarus'),
(23, 'Mario Vargas Llosa', 'Bahamas'),
(24, 'Eduardo Galeano', 'Congo'),
(25, 'Victor Hugo', 'Vietnam'),
(26, 'Jane Austen', 'Burkina Faso'),
(27, 'Oscar Wilde', 'Guinea-Bissau'),
(28, 'Patrick Süskind', 'Japan'),
(29, 'Bram Stoker', 'Cyprus'),
(30, 'Mary Shelley', 'Korea'),
(31, 'J.D. Salinger', 'Niger'),
(32, 'Thomas Mann', 'Kenya'),
(33, 'James Joyce', 'Jersey'),
(34, 'Truman Capote', 'Slovenia'),
(35, 'Vladimir Nabokov', 'Seychelles'),
(36, 'Franz Kafka', 'Liechtenstein'),
(37, 'León Tolstói', 'Madagascar'),
(38, 'Fiódor Dostoyevski', 'British Virgin Islands'),
(39, 'León Tolstói', 'Angola'),
(40, 'F. Scott Fitzgerald', 'Saint Kitts and Nevis'),
(41, 'Marcel Proust', 'Saudi Arabia'),
(42, 'Emily Brontë', 'Armenia'),
(43, 'Charlotte Brontë', 'Taiwan'),
(44, 'Milan Kundera', 'United Arab Emirates'),
(45, 'Dante Alighieri', 'Grenada'),
(46, 'Dan Brown', 'Peru'),
(47, 'Dan Brown', 'Kazakhstan'),
(48, 'Dan Brown', 'Martinique'),
(49, 'John Boyne', 'Canada'),
(50, 'Paulo Coelho', 'Gibraltar');

-- Insert Books
INSERT INTO Libros (id, titulo, isbn, anioPublicacion, categoria, copiasDisponibles) VALUES
(1, 'Cien años de soledad', '978-0-552-95428-0', 1907, 'Poesía', 9),
(2, 'La casa de los espíritus', '978-0-18-374551-6', 1940, 'No ficción', 9),
(3, 'Harry Potter y la piedra filosofal', '978-0-571-85024-2', 1927, 'Distopía', 6),
(4, '1984', '978-1-884357-05-3', 1987, 'Ficción', 3),
(5, 'Kafka en la orilla', '978-0-920713-05-1', 1908, 'Ficción', 4),
(6, 'El amor en los tiempos del cólera', '978-1-875429-50-9', 1910, 'Ciencia', 4),
(7, 'El Hobbit', '978-1-58284-084-0', 1918, 'Distopía', 9),
(8, 'Crónica de una muerte anunciada', '978-0-937646-27-4', 1954, 'Ciencia', 6),
(9, 'Los pilares de la Tierra', '978-0-691-71787-6', 1996, 'No ficción', 4),
(10, 'El nombre de la rosa', '978-1-157-54778-5', 1939, 'Fantasía', 4),
(11, 'Cien poemas de amor', '978-1-55661-064-6', 1934, 'Poesía', 8),
(12, 'Ensayo sobre la ceguera', '978-0-10-309752-7', 1922, 'Ciencia', 1),
(13, 'La sombra del viento', '978-0-547-00309-2', 2015, 'Fantasía', 10),
(14, 'El principito', '978-1-55549-181-9', 1956, 'Distopía', 6),
(15, 'La metamorfosis', '978-0-553-12634-1', 1984, 'Ficción', 5),
(16, 'Don Quijote de la Mancha', '978-0-503-31609-9', 1929, 'Fantasía', 7),
(17, 'Matar a un ruiseñor', '978-1-76849-501-7', 1993, 'Ciencia', 5),
(18, 'La colmena', '978-0-517-29732-2', 1975, 'Distopía', 3),
(19, 'Rayuela', '978-1-82553-712-4', 1933, 'Distopía', 1),
(20, 'Las intermitencias de la muerte', '978-1-60000-977-8', 1975, 'Ficción', 6),
(21, 'Pedro Páramo', '978-1-893508-47-7', 1994, 'Ficción', 10),
(22, 'Fahrenheit 451', '978-1-04-942358-6', 1900, 'Poesía', 1),
(23, 'La ciudad y los perros', '978-0-212-69266-8', 1911, 'Historia', 8),
(24, 'Las venas abiertas de América Latina', '978-0-225-67263-3', 1922, 'Ficción', 4),
(25, 'Los miserables', '978-1-83694-421-8', 1956, 'Ficción', 9),
(26, 'Orgullo y prejuicio', '978-1-205-32373-6', 1948, 'Ficción', 4),
(27, 'El retrato de Dorian Gray', '978-1-177-68805-5', 1976, 'Educación', 9),
(28, 'El perfume', '978-0-10-661656-5', 1999, 'Ficción', 1),
(29, 'Drácula', '978-1-82540-524-9', 1914, 'Ciencia', 7),
(30, 'Frankenstein', '978-0-7070-0094-7', 2021, 'Ficción', 6),
(31, 'El guardián entre el centeno', '978-1-58991-612-8', 1913, 'Distopía', 6),
(32, 'La montaña mágica', '978-1-898257-20-2', 1959, 'Ficción', 10),
(33, 'Ulises', '978-0-482-93699-8', 1951, 'Ficción', 9),
(34, 'A sangre fría', '978-1-75558-676-6', 1937, 'Poesía', 6),
(35, 'Lolita', '978-1-146-28318-2', 1957, 'Ciencia', 8),
(36, 'El proceso', '978-1-260-63429-7', 1905, 'Ciencia', 10),
(37, 'Anna Karenina', '978-1-216-34007-4', 1985, 'Fantasía', 3),
(38, 'Crimen y castigo', '978-1-55930-907-3', 1905, 'Ficción', 5),
(39, 'Guerra y paz', '978-0-02-297207-3', 1983, 'Ciencia', 3),
(40, 'El gran Gatsby', '978-1-4428-5803-9', 1908, 'Fantasía', 7),
(41, 'En busca del tiempo perdido', '978-0-06-275871-2', 1990, 'Historia', 9),
(42, 'Cumbres borrascosas', '978-1-64579-736-4', 1959, 'Historia', 5),
(43, 'Jane Eyre', '978-1-56229-434-2', 2006, 'Distopía', 3),
(44, 'La insoportable levedad del ser', '978-0-19-152754-8', 2015, 'Educación', 10),
(45, 'La divina comedia', '978-0-612-87356-8', 1986, 'Ciencia', 9),
(46, 'El código Da Vinci', '978-1-4363-7349-4', 2020, 'Educación', 5),
(47, 'Inferno', '978-0-87142-762-5', 1933, 'No ficción', 9),
(48, 'Ángeles y demonios', '978-1-4554-7177-5', 1926, 'Educación', 1),
(49, 'El niño con el pijama de rayas', '978-0-7620-7139-5', 1979, 'Distopía', 2),
(50, 'El alquimista', '978-1-4698-3629-4', 1962, 'Distopía', 7);

-- Insert Author-Book Relations
INSERT INTO Autores_Libros (autor_id, libro_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50);

INSERT INTO Prestamos (id, usuario_id, libro_id, fechaPrestamo, fechaDevolucion, fechaDevolucionReal, estado) VALUES
(1, 2, 36, '2024-09-05', '2024-09-17', NULL, 'PENDIENTE_MULTA'),
(2, 7, 8, '2024-01-03', '2024-08-25', '2024-11-21', 'FINALIZADO'),
(3, 5, 13, '2024-04-11', '2024-04-09', '2024-11-21', 'FINALIZADO'),
(4, 37, 23, '2024-05-18', '2024-05-18', NULL, 'PENDIENTE_MULTA'),
(5, 29, 31, '2024-02-17', '2024-07-28', '2024-11-21', 'FINALIZADO'),
(6, 48, 41, '2024-08-14', '2024-08-18', '2024-11-21', 'FINALIZADO'),
(7, 14, 13, '2024-09-20', '2024-01-27', NULL, 'PENDIENTE_MULTA'),
(8, 49, 33, '2024-08-14', '2024-10-12', '2024-11-21', 'FINALIZADO'),
(9, 49, 13, '2023-11-27', '2024-11-02', '2024-11-21', 'FINALIZADO'),
(10, 30, 31, '2024-03-29', '2024-10-15', NULL, 'PENDIENTE_MULTA'),
(11, 15, 7, '2024-07-28', '2023-12-10', '2024-11-21', 'FINALIZADO'),
(12, 28, 28, '2024-10-23', '2024-02-04', '2024-11-21', 'FINALIZADO'),
(13, 23, 1, '2023-12-15', '2024-11-07', NULL, 'PENDIENTE_MULTA'),
(14, 8, 34, '2024-05-07', '2024-06-02', '2024-11-21', 'FINALIZADO'),
(15, 10, 38, '2024-04-04', '2024-05-08', '2024-11-21', 'FINALIZADO'),
(16, 15, 39, '2024-09-12', '2024-07-29', NULL, 'PENDIENTE_MULTA'),
(17, 4, 24, '2024-03-05', '2024-11-20', '2024-11-21', 'FINALIZADO'),
(18, 8, 8, '2024-10-13', '2024-09-02', '2024-11-21', 'FINALIZADO'),
(19, 33, 46, '2024-05-29', '2024-04-24', NULL, 'PENDIENTE_MULTA'),
(20, 11, 48, '2024-06-02', '2024-02-06', '2024-11-21', 'FINALIZADO'),
(21, 35, 1, '2024-01-17', '2024-09-04', '2024-11-21', 'FINALIZADO'),
(22, 24, 14, '2024-10-03', '2024-03-11', NULL, 'PENDIENTE_MULTA'),
(23, 41, 41, '2024-07-07', '2024-04-11', '2024-11-21', 'FINALIZADO'),
(24, 49, 42, '2024-01-03', '2024-03-31', '2024-11-21', 'FINALIZADO'),
(25, 11, 49, '2024-05-12', '2023-12-29', NULL, 'PENDIENTE_MULTA'),
(26, 29, 42, '2024-06-18', '2024-11-17', '2024-11-21', 'FINALIZADO'),
(27, 9, 15, '2024-04-09', '2024-11-24', '2024-11-21', 'FINALIZADO'),
(28, 25, 15, '2024-04-10', '2024-08-09', NULL, 'PENDIENTE_MULTA'),
(29, 45, 48, '2024-02-09', '2024-11-16', '2024-11-21', 'FINALIZADO'),
(30, 45, 31, '2024-04-28', '2023-11-24', '2024-11-21', 'FINALIZADO'),
(31, 42, 9, '2024-09-15', '2024-11-22', NULL, 'PENDIENTE_MULTA'),
(32, 19, 1, '2024-06-09', '2024-06-01', '2024-11-21', 'FINALIZADO'),
(33, 2, 27, '2024-03-10', '2024-03-27', '2024-11-21', 'FINALIZADO'),
(34, 23, 50, '2024-07-15', '2024-10-16', NULL, 'PENDIENTE_MULTA'),
(35, 23, 30, '2024-02-12', '2024-11-30', '2024-11-21', 'FINALIZADO'),
(36, 19, 12, '2024-04-06', '2024-01-12', '2024-11-21', 'FINALIZADO'),
(37, 25, 34, '2024-10-17', '2024-01-06', NULL, 'PENDIENTE_MULTA'),
(38, 37, 42, '2024-01-30', '2024-04-07', '2024-11-21', 'FINALIZADO'),
(39, 38, 16, '2024-11-01', '2024-06-01', '2024-11-21', 'FINALIZADO'),
(40, 45, 32, '2024-08-24', '2024-01-19', NULL, 'PENDIENTE_MULTA'),
(41, 43, 14, '2024-01-26', '2024-11-19', '2024-11-21', 'FINALIZADO'),
(42, 3, 48, '2024-03-10', '2024-10-08', '2024-11-21', 'FINALIZADO'),
(43, 31, 28, '2024-07-28', '2024-11-10', NULL, 'PENDIENTE_MULTA'),
(44, 38, 35, '2024-01-13', '2024-09-08', '2024-11-21', 'FINALIZADO'),
(45, 22, 31, '2024-11-10', '2024-04-15', '2024-11-21', 'FINALIZADO'),
(46, 32, 32, '2024-02-23', '2024-12-17', NULL, 'PENDIENTE_MULTA'),
(47, 46, 3, '2023-11-29', '2024-06-06', '2024-11-21', 'FINALIZADO'),
(48, 9, 34, '2024-08-27', '2024-08-11', '2024-11-21', 'FINALIZADO'),
(49, 45, 17, '2024-10-15', '2024-01-30', NULL, 'PENDIENTE_MULTA'),
(50, 46, 19, '2024-06-22', '2024-10-15', '2024-11-21', 'FINALIZADO'),
(51, 23, 17, '2024-03-14', '2023-12-08', '2024-11-21', 'FINALIZADO'),
(52, 34, 40, '2023-11-26', '2024-03-17', NULL, 'PENDIENTE_MULTA'),
(53, 41, 47, '2024-08-02', '2024-06-12', '2024-11-21', 'FINALIZADO'),
(54, 5, 36, '2024-08-17', '2024-03-19', '2024-11-21', 'FINALIZADO'),
(55, 28, 49, '2024-08-04', '2024-08-01', NULL, 'PENDIENTE_MULTA'),
(56, 26, 9, '2023-11-25', '2024-03-30', '2024-11-21', 'FINALIZADO'),
(57, 3, 8, '2024-02-14', '2024-04-22', '2024-11-21', 'FINALIZADO'),
(58, 16, 28, '2024-02-22', '2024-10-30', NULL, 'PENDIENTE_MULTA'),
(59, 39, 12, '2024-05-28', '2024-06-01', '2024-11-21', 'FINALIZADO'),
(60, 3, 50, '2024-02-20', '2024-04-02', '2024-11-21', 'FINALIZADO'),
(61, 12, 11, '2024-06-26', '2024-07-01', NULL, 'PENDIENTE_MULTA'),
(62, 39, 7, '2024-01-04', '2024-02-07', '2024-11-21', 'FINALIZADO'),
(63, 29, 30, '2024-09-29', '2024-12-11', '2024-11-21', 'FINALIZADO'),
(64, 23, 34, '2023-12-26', '2024-03-24', NULL, 'PENDIENTE_MULTA'),
(65, 44, 15, '2023-12-30', '2024-02-13', '2024-11-21', 'FINALIZADO'),
(66, 37, 46, '2024-04-25', '2024-08-18', '2024-11-21', 'FINALIZADO'),
(67, 46, 3, '2024-04-02', '2024-07-12', NULL, 'PENDIENTE_MULTA'),
(68, 45, 1, '2024-07-10', '2023-12-29', '2024-11-21', 'FINALIZADO'),
(69, 29, 41, '2024-04-16', '2024-10-09', '2024-11-21', 'FINALIZADO'),
(70, 7, 42, '2023-11-24', '2024-12-05', NULL, 'PENDIENTE_MULTA'),
(71, 5, 28, '2024-06-11', '2024-07-09', '2024-11-21', 'FINALIZADO'),
(72, 36, 10, '2024-08-23', '2024-09-03', '2024-11-21', 'FINALIZADO'),
(73, 50, 19, '2024-10-27', '2024-07-09', NULL, 'PENDIENTE_MULTA'),
(74, 5, 12, '2023-12-28', '2024-06-01', '2024-11-21', 'FINALIZADO'),
(75, 43, 26, '2024-09-22', '2024-01-20', '2024-11-21', 'FINALIZADO'),
(76, 31, 23, '2024-09-08', '2024-04-12', NULL, 'PENDIENTE_MULTA'),
(77, 16, 7, '2023-12-26', '2023-11-23', '2024-11-21', 'FINALIZADO'),
(78, 22, 15, '2024-08-27', '2024-10-07', '2024-11-21', 'FINALIZADO'),
(79, 43, 39, '2024-05-26', '2024-12-12', NULL, 'PENDIENTE_MULTA'),
(80, 16, 41, '2024-08-15', '2024-07-05', '2024-11-21', 'FINALIZADO'),
(81, 40, 36, '2024-08-19', '2024-11-05', '2024-11-21', 'FINALIZADO'),
(82, 29, 46, '2024-08-11', '2023-12-28', NULL, 'PENDIENTE_MULTA'),
(83, 15, 29, '2024-09-24', '2024-04-13', '2024-11-21', 'FINALIZADO'),
(84, 43, 36, '2024-07-26', '2024-10-17', '2024-11-21', 'FINALIZADO'),
(85, 4, 32, '2024-06-23', '2024-09-15', NULL, 'PENDIENTE_MULTA'),
(86, 35, 5, '2024-03-04', '2024-02-07', '2024-11-21', 'FINALIZADO'),
(87, 40, 36, '2024-05-09', '2024-01-12', '2024-11-21', 'FINALIZADO'),
(88, 46, 49, '2024-11-07', '2024-01-21', NULL, 'PENDIENTE_MULTA'),
(89, 5, 16, '2024-05-06', '2023-11-22', '2024-11-21', 'FINALIZADO'),
(90, 10, 47, '2024-01-03', '2024-06-03', '2024-11-21', 'FINALIZADO'),
(91, 32, 48, '2024-10-21', '2024-07-26', NULL, 'PENDIENTE_MULTA'),
(92, 37, 44, '2024-09-12', '2023-12-27', '2024-11-21', 'FINALIZADO'),
(93, 23, 1, '2024-10-23', '2024-06-16', '2024-11-21', 'FINALIZADO'),
(94, 24, 48, '2024-10-26', '2024-05-11', NULL, 'PENDIENTE_MULTA'),
(95, 22, 31, '2024-04-24', '2024-07-28', '2024-11-21', 'FINALIZADO'),
(96, 34, 21, '2024-06-10', '2024-08-13', '2024-11-21', 'FINALIZADO'),
(97, 48, 2, '2024-07-05', '2024-05-13', NULL, 'PENDIENTE_MULTA'),
(98, 7, 40, '2024-05-16', '2024-09-03', '2024-11-21', 'FINALIZADO'),
(99, 35, 24, '2024-01-13', '2024-08-20', '2024-11-21', 'FINALIZADO'),
(100, 44, 11, '2024-06-11', '2024-11-21', NULL, 'PENDIENTE_MULTA');