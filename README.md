# rails-ecommerce-microservices
See the overall picture of implementations on microservices with ruby on rails on real-world e-commerce microservices project;

![rails-ecommerce-microservice](https://user-images.githubusercontent.com/15216240/132295308-5b0d5b05-9816-4deb-af13-b945e4f8e013.PNG)

There is a couple of microservices which implemented **e-commerce** modules over **Catalog, Basket, Discount** and **Ordering** microservices with **NoSQL (MongoDB, Redis)** and **Relational databases (PostgreSQL, MySql)** with communicating over **Sidekiq Redis Communication** and using **API Gateway**.

## Whats Including In This Repository
We have implemented below **features over the rails-ecommerce-microservices repository**.

#### Catalog microservice which includes; 
* Rails Web API application 
* REST API principles, CRUD operations
* **MongoDB database** connection and containerization

#### Basket microservice which includes;
* Rails Web API application
* REST API principles, CRUD operations
* **Redis database** connection and containerization
* Publish BasketCheckout Queue with using **Sidekiq and Redis**

#### Microservices Communication
* Using **Sidekiq and Redis**
* Publishing BasketCheckout event queue from Basket microservices and Subscribin

#### Ordering Microservice
* Rails Web API application
* REST API principles, CRUD operations
* Consuming **Message** BasketCheckout event queue with using **Sidekiq** Configuration
* **Mysql database** connection and containerization
	
#### API Gateway Ocelot Microservice
* Implement **API Gateways with Ocelot**
* Sample microservices/containers to reroute through the API Gateways
* Run multiple different **API Gateway/BFF** container types	
* The Gateway aggregation pattern in Shopping.Aggregator

#### WebUI ShoppingApp Microservice
* Reactjs eccommerce template
* Call **Api gateway**

#### Ancillary Containers
* **adminer Tools** feature rich Open Source administration and development platform for database

#### Docker Compose establishment with all microservices on docker;
* Containerization of microservices
* Containerization of databases
* Override Environment variables
## Run The Project
You will need the following tools:

* Ruby
* Docker

### Installing
Follow these steps to get your development environment set up: (Before Run Start the Docker Desktop)
1. Clone the repository
2. At the root directory which include **.env** file, update env variables if necessary.
3. At the root directory which include **docker-compose.yml** files, run below command:
```csharp
docker-compose up
```
4. Wait for docker compose all microservices. That’s it! (some microservices need extra time to work so please wait if not worked in first shut)
5. You can **launch microservices** as below urls:

* **Catalog API -> http://host.docker.internal:8000**
* **Basket API -> http://host.docker.internal:8001**
* **Ordering API -> http://host.docker.internal:8004**
* **API Gateway -> http://host.docker.internal:8010**
* **Sidekiq Management Dashboard -> http://host.docker.internal:8004/sidekiq**
* **Adminer -> http://host.docker.internal:8080**

* **Web UI -> http://host.docker.internal:8006**

