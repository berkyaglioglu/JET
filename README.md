## TakeAway Junior Code Challenge

#### Database
- Mariadb container uses a initial script located in ```./db/init.sh``` to create ```Cookies``` and ```Ingredients``` tables, and also ```CookieIngredients``` to create many to many relationship between these tables.

#### API
- Microservices are implemented in .NET Core, and this service's port is mapped to port number ```6062``` on the host machine.
- Endpoint to obtain all cookies in alphabetical order is : ```http://localhost:6062/api/cookie```
- Endpoint to obtain detail of a cookie with ingredients in alphabetical order is : ```http://localhost:6062/api/cookie/{id}```

#### WEBSITE
- Frontend application is created in Vue js, and this service's port is mapped to port number ```6061``` on the host machine.
- The home page of the website is : ```http://localhost:6061```

#### Getting started
- Open your terminal and cd into this folder
- Execute ```docker-compose up --build```
- Wait for it to complete (this can take some time)
- Open ```http://localhost:6061``` in your browser for home page of cookies website and view all the cookies in alphebetical order. You can also see the detail for each cookie by clicking details text below each one. :)
