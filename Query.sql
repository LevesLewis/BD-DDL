create table Disciplinas (
	pk_disciplinas serial,
	nome varchar(100) not null,
	duracao interval,
	
	fk_professor int not null,
	
	constraint constraint_pk_disciplinas primary key(pk_disciplinas),
	
	constraint constraint_fk_professor
		foreign key (fk_professor)
		references professor(pk_professor)
);

create table Professor (
	pk_professor serial,
	nome varchar(100) not null,
	idade int,
	
	constraint constraint_pk_professor primary key(pk_professor)
);

create table Alunos (
	pk_alunos serial,
	nome varchar(100),
	idade int,
	data_nascimento date,
	email varchar(100) not null,

	constraint constraint_pk_alunos primary key(pk_alunos)
);

create table Matricula (
	pk_matricula serial,
	data_matricula timestamp not null,
	codigo_matricula varchar(40) not null unique,

	fk_alunos int not null,
	fk_disciplinas int not null,

	constraint constraint_pk_matricula primary key(pk_matricula),

	constraint constraint_fk_alunos
		foreign key (fk_alunos)
		references alunos(pk_alunos),
	constraint constraint_fk_disciplinas
		foreign key (fk_disciplinas)
		references disciplinas(pk_disciplinas)
);