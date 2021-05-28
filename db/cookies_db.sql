CREATE DATABASE IF NOT EXISTS cookies_db;

create table cookies_db.Cookies(
    cookieId int auto_increment,
    name varchar(50) not null,
    weight double not null,
    calories double not null,
    primary key (cookieId)
);

create table cookies_db.Ingredients(
    ingredientID int auto_increment,
    name varchar(50) not null,
    primary key (ingredientID)
);

create table cookies_db.CookieIngredients(
    cookieId int not null,
    ingredientID int not null,
    primary key(cookieID, ingredientID),
    CONSTRAINT fk_CookieIngredients_Cookies foreign key (cookieId) references Cookies (cookieId),
    CONSTRAINT fk_CookieIngredients_Ingredients foreign key (ingredientId) references Ingredients (ingredientID)
);

INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Abernethy', 150, 320);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Lincoln biscuit', 250, 440);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Panellets', 300, 160);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Aparon', 600, 400);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Biscuit', 250, 500);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Macaroon', 315, 360);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Rich tea', 120, 800);
INSERT INTO cookies_db.Cookies (name, weight, calories) VALUES ('Butter cookie', 270, 350);

INSERT INTO cookies_db.Ingredients (name) VALUES ('Sugar');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Eggs');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Milk');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Vanilla');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Soda');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Cocoa');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Strawberry');
INSERT INTO cookies_db.Ingredients (name) VALUES ('White chocolate');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Dark chocolate');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Liquor');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Butter');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Carrot');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Syrup');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Brown sugar');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Nuts');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Flour');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Ginger');
INSERT INTO cookies_db.Ingredients (name) VALUES ('Sesame');

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (1,3);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (1,5);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (1,8);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (1,16);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (1,17);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (2,1);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (2,2);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (2,4);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (2,5);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (3,2);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (3,4);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (3,10);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (3,11);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (4,8);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (4,9);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (4,16);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (5,5);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (5,14);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (5,15);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (5,17);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (5,18);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (6,3);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (6,7);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (6,13);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (7,7);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (7,9);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (7,12);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (7,13);

INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (8,14);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (8,15);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (8,17);
INSERT INTO cookies_db.CookieIngredients (cookieId, ingredientId) VALUES (8,18);
