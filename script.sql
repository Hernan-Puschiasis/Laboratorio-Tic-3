INSERT INTO galaxy (name, universe)
VALUES ('1', 'Primaria');

INSERT INTO galaxy (name, universe)
VALUES ('2', 'Primaria');

INSERT INTO galaxy (name, universe)
VALUES ('3', 'Primaria');

INSERT INTO galaxy (name, universe)
VALUES ('4', 'Primaria');

INSERT INTO galaxy (name, universe)
VALUES ('5', 'Primaria');

INSERT INTO galaxy (name, universe)
VALUES ('6', 'Primaria');

INSERT INTO galaxy (name, universe)
VALUES ('1', 'Secundaria');

INSERT INTO galaxy (name, universe)
VALUES ('2', 'Secundaria');

INSERT INTO galaxy (name, universe)
VALUES ('3', 'Secundaria');

INSERT INTO galaxy (name, universe)
VALUES ('4', 'Secundaria');

INSERT INTO galaxy (name, universe)
VALUES ('5', 'Secundaria');

INSERT INTO galaxy (name, universe)
VALUES ('6', 'Secundaria');

INSERT INTO galaxy (name, universe)
VALUES ('1', 'GAL1 Universidad');

INSERT INTO galaxy (name, universe)
VALUES ('2', 'GAL2 Universidad');

INSERT INTO galaxy (name, universe)
VALUES ('3', 'AM1 Universidad');

INSERT INTO galaxy (name, universe)
VALUES ('4', 'AM2 Universidad');

INSERT INTO galaxy (name, universe)
VALUES ('5', 'AM3 Universidad');

INSERT INTO galaxy (name, universe)
VALUES ('6', 'PyE Universidad');

INSERT INTO world (name, "galaxyId")
VALUES ('Polinomios 1', 11);

INSERT INTO world (name, "galaxyId")
VALUES ('Polinomios 2', 11);

INSERT INTO world (name, "galaxyId")
VALUES ('Ecuaciones no lineales', 11);

INSERT INTO world (name, "galaxyId")
VALUES ('Geometría Analítica', 11);

INSERT INTO world (name, "galaxyId")
VALUES ('Numeros Complejos', 11);

INSERT INTO world (name, "galaxyId")
VALUES ('Probabilidad', 11);

INSERT INTO world (name, "galaxyId")
VALUES ('Estadística', 11);

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Si tienes dos manzanas y tu amigo te da tres más, ¿cuántas manzanas tienes en total?', '5', '1', '1', 'Primaria', '1', '2', '4', '5', '7');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Si tienes cuatro juguetes y te dan dos más, ¿cuántos juguetes tienes ahora?', '6', '1', '1', 'Primaria', '1', '4', '6', '8', '10');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('¿Cuántos son 2 + 3?', '5', '1', '1', 'Primaria', '1', '1', '3', '5', '6');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Si tienes tres globos y pierdes uno, ¿cuántos globos te quedan?', '2', '1', '1', 'Primaria', '1', '2', '1', '-1', '0');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('¿Cuántos números puedes contar del 1 al 10?', '10', '1', '1', 'Primaria', '1', '7', '8', '9', '10');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('¿Cuántos días tiene una semana?', '7', '1', '1', 'Primaria', '1', '4', '5', '6', '7');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Si tienes cinco caramelos y compartes dos con tu hermano, ¿cuántos caramelos te quedan?', '3', '1', '1', 'Primaria', '1', '1', '3', '5', '7');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Cuanto es 73-24', '49', '1', '1', 'Primaria', '1', '38', '42', '49', '53');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Cuanto es 13+19', '32', '1', '1', 'Primaria', '1', '32', '33', '35', '36');

INSERT INTO theorem (name,statement,proof) values('Raíz evidente 0', 'Se considera el polinomio $$p(x) = a_n x^n + a_{n - 1} x^{n - 1} + \dots + a_1 x + a_0$$. Si $$a_0=0$$, entonces $$x=0$$ es raíz del polinomio.', 'Notemos que $$p(0) = a_0 = 0$$ por hipótesis. Por definición $$x=0$$ es raíz de $$p(x)$$.');

INSERT INTO question (body, answer, type, category, "worldId", "theoremId")
VALUES ('Sea $$P(x) = x^3-x$$. ¿Cuál es la suma de las raíces del polinomio?', '0', '1', '1', 1, 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Sea $$P(x) = x^3-3x^2+2x$$. ¿Cuál es la raíz más grande del polinomio?', '2', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Sea $$P(x) = x^3-6x^2+9x$$. ¿Cuál es el producto de las dos raíces más grandes del polinomio?', '9', '1', '1', 1);

INSERT INTO theorem (name,statement,proof) values('Raíz evidente 1', 'Se considera el polinomio $$p(x) = a_n x^n + a_{n - 1} x^{n - 1} + \dots + a_1 x + a_0$$. Si $$a_n + a_{n - 1} +\dots + a_1 + a_0 = 1$$ entonces $$x=1$$ es raíz del polinomio.', 'Notemos que $$p(1) = a_n + a_{n - 1} +\dots + a_1 + a_0 = 1$ por hipótesis. Por definición $$x=1$$ es raíz de $$p(x)$$.');

INSERT INTO question (body, answer, type, category, "worldId", "theoremId")
VALUES ('Sea $$P(x) = x^3-x^2-x+1$$. ¿Cuál es la suma de las raíces del polinomio?', '1', '1', '1', 1, 2);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Sea $$P(x) = x^3+x^2-x-1$$. ¿Cuál es el producto de las raíces del polinomio?', '-1', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Sea $$P(x) = x^3-5x^2+8x-4$$. ¿Cuál es la suma de las raíces del polinomio?', '5', '1', '1', 1);

INSERT INTO theorem (name,statement,proof) values('Teorema del Resto', 'Sea $$P(x)$$ un polinomio. El residuo resultante R(x) de dividir $$P(x)$$ entre $$F(x) = x - a$$ es igual a evaluar a $$P(x)$$ en $$a$$.', 'Por definición de división de polinomios se sabe que $$P(x) = Q(x)(x-a) + R(x)$$ con el grado de $$R(x)$$ menor al de $$F(x)$$, por lo que $$R(x)$$ tiene grado $$0$$ y es constante. Si se evalúa el polinomio en $$a$$ se obtiene que $$P(a) = Q(a)(a-a) + R(a) = R(a)$$. Como $$R(x)$$ es contante, se obtiene que $$R(x) = P(a)$$, como se quería probar.');

INSERT INTO question (body, answer, type, category, "worldId", "theoremId")
VALUES ('¿Cuál es el resto de dividir $$x^3+x^2+x$$ entre $$x$$?', '0', '1', '1', 1,3);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('¿Cuál es el resto de dividir $$x^4+2x^3+2x^2-x+17$$ entre $$x-1$$?', '21', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body1', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body2', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body3', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body4', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body5', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body6', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body7', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body8', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body9', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body10', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body11', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body12', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body13', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body14', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body15', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body16', 'Answer', '1', '1', 1);

INSERT INTO question (body, answer, type, category, "worldId")
VALUES ('Body17', 'Answer', '1', '1', 1);

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Resuelve la siguiente integral $$\int_0^4 x^3 dx$$.', '$$64$$', '1', '1', 'Universidad', 'AM2', '$$4$$', '$$8$$', '$$64$$', '$$128$$');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Resuelve la siguiente integral $$\int_0^3 x^2 dx$$.', '$$9$$', '1', '1', 'Universidad', 'AM2', '$$9$$', '$$27$$', '$$3$$', '$$81$$');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Resuelve la siguiente integral $$\int_0^2 x dx$$.', '$$2$$', '1', '1', 'Universidad', 'AM2', '$$16$$', '$$8$$', '$$4$$', '$$2$$');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Resuelve la siguiente integral $$\int_0^{2\pi} cos(x) dx$$.', '$$0$$', '1', 'Universidad', 'AM2', '1', '$$\pi$$', '$$0$$', '$$2\pi$$', '$$4\pi$$');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('¿Cuál de las siguientes opciones es una solución a la siguiente ecuación diferencial $$\frac{dy}{dx}=y$$?', 'Answer', '1', '1', 'Universidad', 'AM2', '$$e^{2x}$$', '$$cos(x)$$', '$$4e^x$$', '$$sin(x)$$');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('¿Cuál es el valor de la derivada de $$sin(x)$$ en $$x=0$$?', 'Answer', '1', '1', 'Universidad', 'AM2', '$$1$$', '$$\pi$$', '$$0$$', '$$2\pi$$');

INSERT INTO trivia_question (body, answer, type, category, universe, galaxy, option1, option2, option3, option4)
VALUES ('Calcula el siguiente límite $$\lim_{x\rightarrow0} \frac{sin(x)}{x}$$', 'Answer', '1', '1', 'Universidad', 'AM2', '$$\pi$$', '$$0$$', '$$1$$', '$$-1$$');
