USE rrhh;
INSERT INTO cargos(cargo_ID, cargo_nombre, cargo_sueldo_minimo, cargo_sueldo_maximo)
VALUES (1, 'Gerente General', 15000000, 30000000),
	(2, 'Jefe de Área', 8000000, 12000000),
	(3, 'Ingeniero', 4000000, 7000000),
    (4, 'Analista', 3000000, 4500000),
    (5, 'Desarrollador', 2500000, 3500000);
    
SELECT cargo_ID, cargo_nombre, cargo_sueldo_minimo, cargo_sueldo_maximo
FROM cargos;

INSERT INTO paises(pais_ID, pais_nombre)
VALUES (1, 'Colombia'),
	(2, 'Argentina'),
    (3, 'México'),
    (4, 'Uruguay'),
    (5, 'Chile');
    
SELECT pais_ID, pais_nombre
FROM paises;

INSERT INTO ciudades(ciud_ID, ciud_nombre, ciud_pais_ID)
VALUES (1, 'Bogotá', 1),
	(2, 'Buenos Aires', 2),
    (3, 'Ciudad de México', 3),
    (4, 'Montevideo', 4),
    (5, 'Santiago', 5);
    
SELECT ciud_ID, ciud_nombre, ciud_pais_ID
FROM ciudades;

INSERT INTO localizaciones(localiz_ID, localiz_direccion, localiz_ciudad_ID)
VALUES (1, 'Calle 100 # 15-20', 1),
	(2, 'Avenida Corrientes 1234', 2),
    (3, 'Paseo de la Reforma 250', 3),
    (4, 'Avenida 18 de Julio 1450', 4),
    (5, 'Avenida Providencia 2100', 5);
    
SELECT localiz_ID, localiz_direccion, localiz_ciudad_ID
FROM localizaciones;

INSERT INTO departamentos(dpto_ID, dpto_nombre, dpto_localiz_ID)
VALUES (1, 'Gerencia General', 1),
	(2, 'Tecnología', 2),
    (3, 'Talento Humano', 3),
    (4, 'Finanzas', 4),
    (5, 'Comercial', 5);
    
SELECT dpto_ID, dpto_nombre, dpto_localiz_ID
FROM departamentos;

INSERT INTO empleados(empl_ID, empl_primer_nombre, empl_segundo_nombre, empl_email, empl_fecha_nac, empl_sueldo, empl_comision, empl_cargo_ID, empl_gerente_ID, empl_dpto_ID)
VALUES (1, 'Carlos', 'Andrés', 'carlos.andres@rrhh.com', '1978-03-12', 20000000, NULL, 1, NULL, 1),
	(2, 'Laura', NULL , 'laura.gomez@rrhh.com', '1985-07-25', 10000000, 5 , 2, 1 , 2),
    (3, 'Julián', 'David', 'julian.david@rrhh.com', '1990-11-02', 6000000, NULL, 3, 2, 2),
    (4, 'Valentina', NULL , 'valentina.rojas@rrhh.com', '1993-04-18', 3800000 , 3.5 , 4, 1 , 4),
    (5, 'Mateo', 'Alejandro', 'mateo.alejandro@rrhh.com', '1998-09-30', 3000000, NULL, 5, 2 , 2);
    
SELECT empl_ID, empl_primer_nombre, empl_segundo_nombre, empl_email, empl_fecha_nac, empl_sueldo, empl_comision, empl_cargo_ID, empl_gerente_ID, empl_dpto_ID
FROM empleados;

INSERT INTO historico(emphist_ID, emphist_fecha_retiro, emphist_cargo_ID, emphist_dpto_ID)
VALUES (6, '2022-02-28', 5, 2),
	(7, '2023-06-15', 4, 4),
    (8, '2023-11-30', 3, 2),
    (9, '2024-08-10', 2, 5),
    (10, '2025-03-31', 4, 3);
    
SELECT emphist_ID, emphist_fecha_retiro, emphist_cargo_ID, emphist_dpto_ID
FROM historico;