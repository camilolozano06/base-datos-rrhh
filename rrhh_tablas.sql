use rrhh;

CREATE TABLE paises (
pais_ID INT NOT NULL,
pais_nombre VARCHAR(60) NOT NULL,
CONSTRAINT pk_paises PRIMARY KEY (pais_ID)
);

CREATE TABLE ciudades(
	ciud_ID INT NOT NULL, 
    ciud_nombre VARCHAR(60) NOT NULL,
    ciud_pais_ID INT NOT NULL,
    CONSTRAINT pk_ciudades PRIMARY KEY (ciud_ID),
    INDEX idx_ciud_pais (ciud_pais_ID),
    CONSTRAINT fk_ciud_pais FOREIGN KEY (ciud_pais_ID) REFERENCES paises(pais_ID)
    );
    
CREATE TABLE localizaciones(
	localiz_ID INT NOT NULL, 
    localiz_direccion VARCHAR(100) NOT NULL, 
    localiz_ciudad_ID INT NOT NULL, 
    CONSTRAINT pk_localizaciones PRIMARY KEY (localiz_ID),
    INDEX idx_localiz_ciudad (localiz_ciudad_ID),
    CONSTRAINT fk_localiz_ciudad FOREIGN KEY (localiz_ciudad_ID) REFERENCES ciudades(ciud_ID)
    );
    
CREATE TABLE departamentos(
	dpto_ID INT NOT NULL, 
    dpto_nombre VARCHAR(60) NOT NULL, 
    dpto_localiz_ID INT NOT NULL, 
    CONSTRAINT pk_departamentos PRIMARY KEY (dpto_ID),
    INDEX idx_dpto_localiz (dpto_localiz_ID),
    CONSTRAINT fk_dpto_localiz FOREIGN KEY (dpto_localiz_ID) REFERENCES localizaciones(localiz_ID)
    );
    
CREATE TABLE cargos(
	cargo_ID INT NOT NULL, 
    cargo_nombre VARCHAR(60) NOT NULL, 
    cargo_sueldo_minimo DECIMAL(12,2) NOT NULL, 
    cargo_sueldo_maximo DECIMAL (12,2) NOT NULL, 
    CONSTRAINT pk_cargos PRIMARY KEY (cargo_ID)
    );
    
CREATE TABLE empleados(
	empl_ID INT NOT NULL,
    empl_primer_nombre VARCHAR(40) NOT NULL,
    empl_segundo_nombre VARCHAR(40),
    empl_email VARCHAR(100) NOT NULL,
    empl_fecha_nac DATE NOT NULL, 
    empl_sueldo DECIMAL(12,2) NOT NULL,
    empl_comision DECIMAL (5,2), 
    empl_cargo_ID INT NOT NULL, 
    empl_gerente_ID INT,
    empl_dpto_ID INT NOT NULL, 
    CONSTRAINT pk_empleados PRIMARY KEY (empl_ID),
    CONSTRAINT uq_empl_email UNIQUE (empl_email),
    INDEX idx_empl_cargo (empl_cargo_ID),
    CONSTRAINT fk_empl_cargo FOREIGN KEY (empl_cargo_ID) REFERENCES cargos(cargo_ID),
    INDEX idx_empl_gerente (empl_gerente_ID),
    CONSTRAINT fk_empl_gerente FOREIGN KEY (empl_gerente_ID) REFERENCES empleados(empl_ID),
	INDEX idx_empl_dpto (empl_dpto_ID),
    CONSTRAINT fk_empl_dpto FOREIGN KEY (empl_dpto_ID) REFERENCES departamentos(dpto_ID)
    );
    
CREATE TABLE historico(
	emphist_ID INT NOT NULL,
    emphist_fecha_retiro DATE NOT NULL,
    emphist_cargo_ID INT NOT NULL,
    emphist_dpto_ID INT NOT NULL, 
	CONSTRAINT pk_historico PRIMARY KEY (emphist_ID),
    INDEX idx_hist_cargo (emphist_cargo_ID),
    CONSTRAINT fk_hist_cargo FOREIGN KEY (emphist_cargo_ID) REFERENCES cargos(cargo_ID),
    INDEX idx_hist_dpto (emphist_dpto_ID),
    CONSTRAINT fk_hist_dpto FOREIGN KEY (emphist_dpto_ID) REFERENCES departamentos(dpto_ID)
    );