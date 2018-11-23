CREATE TABLE grupo (
  id_grupo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  usuario_id_usuario INTEGER UNSIGNED NOT NULL,
  nome_grupo VARCHAR(255) NULL,
  descricao_grupo TEXT NULL,
  PRIMARY KEY(id_grupo, usuario_id_usuario),
  INDEX grupo_FKIndex1(usuario_id_usuario)
);

CREATE TABLE sensor (
  idsensor INTEGER UNSIGNED NOT NULL,
  grupo_usuario_id_usuario INTEGER UNSIGNED NOT NULL,
  grupo_id_grupo INTEGER UNSIGNED NOT NULL,
  nome_sensor VARCHAR(255) NOT NULL,
  dados_temperatura VARCHAR(255) NULL,
  status_sensor VARCHAR(255) NULL,
  bateria_sensor INT NULL,
  temperatura_max INT NULL,
  temperatura_min INT NULL,
  obs_sensor TEXT NULL,
  PRIMARY KEY(idsensor, grupo_usuario_id_usuario, grupo_id_grupo),
  INDEX sensor_FKIndex1(grupo_id_grupo, grupo_usuario_id_usuario)
);

CREATE TABLE usuario (
  id_usuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_empresa VARCHAR(255) NULL,
  cnpj VARCHAR(20) NULL,
  email_empresa VARCHAR(255) NULL,
  telefone_empresa_1 VARCHAR(15) NULL,
  telefone_empresa_2 VARCHAR(15) NULL,
  cidade VARCHAR(255) NULL,
  estado CHAR(2) NULL,
  cep VARCHAR(13) NULL,
  nome_responsavel VARCHAR(255) NULL,
  cpf VARCHAR(14) NULL,
  email_responsavel VARCHAR(255) NULL,
  telefone_responsavel VARCHAR(15) NULL,
  celular_responsavel VARCHAR(15) NULL,
  genero INT NULL,
  senha VARCHAR(255) NULL,
  PRIMARY KEY(id_usuario)
);


