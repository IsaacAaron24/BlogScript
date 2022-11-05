CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" varchar
);

CREATE TABLE "tickets" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "author_id" int,
  "category_id" int,
  "comment_id" int,
  "content" text
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" text
);

CREATE TABLE "authors" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "tickets" ADD FOREIGN KEY ("author_id") REFERENCES "authors" ("id");

ALTER TABLE "tickets" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "tickets" ADD FOREIGN KEY ("comment_id") REFERENCES "comments" ("id");

insert into users (name, email, password, age) values ('Jose Gonzalez', 'jose@email.com', '1234', 20), 
('Maria Rendon', 'maria@email.com', '4321', 25);

insert into categories (name) values ('moda'), ('cocina');

insert into authors (name) values ('Altamirano Cortez'), ('Lupe Guaman');

insert into comments (comment) values 
('Me gusta demasiado tu blog me enseña mucho al respecto de la moda y como vestirme adecuadamente '),
('Tu blog de cocina es lo mejor traes siempre las mejores recetas y mi familia la pasa muy bien con la comida que preparo');

insert into tickets (title, description, author_id, category_id, comment_id, content) values 
('La cocina de Altamirano', 'Aprenderas nuevas recetas y mejoraras tu cocina', 1, 2, 2, 'Mi contenido se basara
en que aprendas muchas cosas sobre la cocina, en la parte de abajo del video te estare dejando la receta de lo
que voy a preparar'),
('A la moda siempre', 'Conmigo siempre estaras al dia en la moda', 2, 1, 1, 'En mi blog siempre estare actualizando
o subiendo imagenes sobre lo ultimo de la moda, tambien estare subiendo ayudas a como combinar colores, tambien
para que color te resaltaria mucho mejor y que tu siempre seas lo mas top');
