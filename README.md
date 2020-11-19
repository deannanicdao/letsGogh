# T2A2 - Two-Way Marketplace Application
# *Let's Gogh* :paintbrush: 
### Deanna Nicdao :sunflower: 

### The Problem :(
It's been known that the road to success in art is a narrow one, as it depends on the subjective interests of the market. This creates a tough environment for artists to successfully sell their artworks let alone acquire the funds for real estate to host art exhibitions and maintain a rental studio space. One approach to minimise costs is for artists is to exhibit their work online and create home studio spaces.

The internet has led to the increased exposure of art to a broader, even global, audience on several platforms, such as Etsy and Shopify. Etsy is a creative marketplace where craft supplies, homemade goods and vintage items can be sold. In contrast, Shopify is an eCommerce platform where general goods can be sold and their marketing, sales and operations can be managed. With access to such platforms, more and more artists have embraced digital technology for its benefits of increasing their marketability and creating a convenient platform for their client interactions. 

Despite the freedoms gained from a digital platform, artists are left to navigate and judge which of the platforms would best cater their goals. For example, they must consider whether their products will remain within the strict guidelines of what is allowed to be sold on the Etsy marketplace. It's likely that one might outgrow the Etsy constraints, yet a transition to another platform will cost revenue and a potential loss of customers. Moreover, upfront costs such as subscription-based selling fees, payment processing fees, listing and transaction fees per product need to be considered for platforms like Shopify. 

### The Issues to this Problem :cloud: 
The general way for minimising costs as a digital artist is through the use of larger social media platforms such as Facebook, Twitter and Instagram. However, there is a lack of efficiency with the user experience for digital artists on social media sites due to the broad audience and applicability of the sites. Requests for commissions over direct messaging apps on these platforms can often get lost or lack organisation as the messenger applications are not built for logging requests for items. 

### Deployed Website Link :dove:
The art trade website, **Let's Gogh** can be accessed via this link: https://letsgogh.herokuapp.com/

### GitHub repository Link :ant: 
The repository for **Let's Gogh** can be accessed via this link: https://github.com/deannanicdao/letsGogh

### The Marketplace :apple: 
#### Purpose and Target Audience :pen: 
*Let's Gogh* was created in response to the growing digital market costs of platforms such as "etsy.com" and "shopify.com". *Let's Gogh* aims to provide a simple marketplace platform for digital artists to sell their pieces without the constraints of larger online platforms and for customers to request art without navigating through the noise of other product categories or general social media. Commissioned rates can be provided by the artist and clients will be able to purchase their existing listings from the site. 

The target audience is kept specific to digital artists to ensure an efficient user experience. By providing a platform specific for digital art trade, a cleaner user experience is provided for both ends of the marketplace clientele by redirecting the trade from an instant messenger to a trading platform with fewer constraints and a more favorably-tailored user journey.

#### Functionality and features :bulb:
*Let's Gogh* greets the user with a buy or sell art option with a navigation bar for signing in. Users can sign in with their username or their email. Password complexity is enforced. There are two roles currently on the app: admin and users. All users can edit their profile by viewing their `own listings` and clicking on the `edit my profile` link. The user can view all listings. The user can view their own listings and create, delete or edit their own existing listings. The admin user can view all existing listings and can delete listings (if they find an inappropriate listing for example). 

Users can also purchase existing listings and will be redirected to stripe. Once the transaction is complete, they will be redirected back to the item's show page with a message notifying the user whether the transaction was successful or cancelled. 

#### Sitemap :microscope:
![Site Map](docs/LetsGoghSiteMap.png)

#### Screenshots :camera:
![Landing Page](docs/landing_page.png)
![Sign Up](docs/sign_up.png)
![Gallery Listings](docs/gallery_listings.png)
![Show Item](docs/show_item.png)
![Your Gallery](docs/your_gallery.png)
![Your Purchases](docs/your_purchases.png)
![Your Listings](docs/your_listings.png)
![Edit Profile](docs/edit_profile.png)

### Tech stack :cd:
<details>
	<summary>
		<b> Ruby on Rails </b>
	</summary>
	
Rails is a web application development framework that is written in the Ruby programming language. The aim of Rails is to ease development of web applications by providing boiler-plates in a model, view and controller format. This minimizes the amount of initial code required from the developer but the developer must follow its *convention over configuration* philosophy.
	
[Rails v- 6.0.3.4](https://edgeguides.rubyonrails.org/getting_started.html)

[Ruby v- 2.7.1p83](https://ruby-doc.org/stdlib-2.7.2/)

</details>

<details>
	<summary>
		<b> PostgreSQL </b>
	</summary>
	
PostgresQL is an object-relational database management system that is built on the SQL language, developed at the University of California at Berkeley Computer Science Department. It is open-source and free and is capable of handling workloads on the data warehouse level. 
A large part of the SQL standard is supported and offers many modern features:
+ complex queries
+ foreign keys
+ triggers
+ updatable views
+ transactional integrity
+ multiversion concurrency control

The user can also add new:
+ data types
+ functions
+ operators
+ aggregate functions
+ index methods
+ procedural languages
	
[PostgreSQL](https://www.postgresql.org/docs/10/index.html)

</details>

<details>
	<summary>
		<b> HTML 5 </b>
	</summary>
	
HTML5 is a markup language which structures and presents content on the World Wide Web. HIt introduces elements and attributes such as semantic replacements for common uses of generic block `<div>` and inline elements, `<span>`. It also specifies scripting application programming interfaces (APIs) used in junction with Javascript, by extending existing Document Object Model (DOM) interfaces.
	
[HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5)
</details>

<details>
	<summary>
		<b> SCSS - Bootstrap </b>
	</summary>
	
Bootstrap, once used for Twitter as *Twitter Blueprint*, is a popular front-end framework. It has since become an open-source project and serves as a style guide for internal tools development. It has evolved to integrate mobile-responsiveness, Sass and CSS's flexbox.

[Bootstrap](https://getbootstrap.com/docs/4.5/getting-started/introduction/)

</details>

<details>
	<summary>
		<b> Javascript </b>
	</summary>
	
JavaScript is a compiled programming language that is prototype-based, multi-paradigm, single-threaded, dynamic language and supports object-oriented, imperative, and declarative (*e.g.*, functional programming) languages. It runs on the client side of the web and is widely used for controller web page behaviour by functioning as a procedural and object oriented language. Objects are programmatically created with attached methods and properties. Once constructed, the object can be used a template or prototype for creating similar objects.

[Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
</details>

<details>
	<summary>
		<b> Postman </b>
	</summary>
	
Postman is an API client that was used to create and save HTTP/s requests and to read the responses. It made testing efficient without using the browser and test if specific params were being passed. 

[Postman](https://www.postman.com/)
</details>

### Ruby Gems :gem:

<details>
	<summary>
		<b> Devise </b>
	</summary>
	
Devise is used for user authentication. It provides sign-ups, confirmations, password changes and editing user details. 

[Devise Gem](https://rubygems.org/gems/devise)
</details>

<details>
	<summary>
		<b> Rolify </b>
	</summary>
	
Rolify was used in conjunction with Devise and CanCanCan to add roles to users. Two roles were implemented: admins and users. As explained above in features, admins can do everything the user can do (*i.e.*, CRUD listings) with the additional privilege of deleting other users' listings. 

[Rolify Gem](https://rubygems.org/gems/rolify)
</details>

<details>
	<summary>
		<b> CanCanCan </b>
	</summary>
	
CanCanCan is used to add authorisation to the user roles shown in the `ability.rb` file. This way users can view their own listings or all listings and the admin can view all listings with the additional option to delete any user's listing. 

[CanCanCan Gem](https://rubygems.org/gems/cancancan)
</details>

<details>
	<summary>
		<b> Stripe </b>
	</summary>
	
Stripe gem is used to redirect the user to an online payment platform (Stripe). It allows the user to purchase an existing listing at the advertised price. After the transaction, the user is redirected to the item's show page. 

[Stripe Gem](https://rubygems.org/gems/stripe)
</details>

<details>
	<summary>
		<b> Cloudinary </b>
	</summary>
	
The Cloudinary gem allows for cloud storage of assets onto the third-party Cloudinary service. This is used for image uploads through the applicaiton.

[Cloudinary Gem](https://rubygems.org/gems/cloudinary)
</details>

<details>
	<summary>
		<b> Simple Form </b>
	</summary>
	
Simple form was used with Devise to provide a layout for the sign up form. 

[Simple Form Gem](https://rubygems.org/gems/simple_form/versions/5.0.2)
</details>

<details>
    <summary>
        <b> Dotenv </b>
    </summary>
    
Dotenv is used for securely storing sensitive information that is accessed by the application through the use of environment variables. The `.env` file is included in the `.gitignore` file. 

[Devise Gem](https://www.rubydoc.info/gems/dotenv/2.1.1)
</details>

<details>
	<summary>
		<b> Will Paginate </b>
	</summary>

This gem was used to provide a maximum limit for the number of listings to display per page. This was used on items and orders to prevent overloading the browser with too many items.

[Will Paginate Gem](https://www.rubydoc.info/gems/will_paginate/3.1.0)
</details>

### Third Party Services :balloon: 

<details>
	<summary>
		<b> Cloudinary </b>
	</summary>
	
Cloudinary is an image and video cloud hosting service that can dynamically optimise images without the hassle of managing media assets. It is used to store any images uploaded by the users. 

[Cloudinary](https://cloudinary.com/)

</details>

<details>
	<summary>
		<b> Heroku </b>
	</summary>
	
Heroku is a Platform as a Service (PaaS) where developers can deploy and run their applications. Developers can also manage, and scale their apps entirely in the cloud as it supports Ruby and other programming languages. The free service model of Heroku has allowed this application to be deployed through an attached git repository. 

[Heroku](https://www.heroku.com/home)

</details>

<details>
	<summary>
		<b> Github</b>
	</summary>

Github is where the remote repository where the centralised code source is stored. It allows for source control management where changes to the code are tracked and managed. As mentioned above, the remote repository is used as the source code for deployment via Heroku. 

[Github](https://github.com/)

</details>

<details>
	<summary>
		<b> Stripe </b>
	</summary>
	
Stripe is an online, cloud-based payment platform that can be implemented into applications and can track revenue data of business operations and prevent fraud. It streamlines the development of implementing payment process feature on an international level as Stripe deals with regulatory complexities that comes with finance.

[Stripe](https://stripe.com/en-gb-us)
</details>


### User stories for your app :memo:
+ Users can view all listings
    + User has signed in to view all listings
    + Users can purchase listings
+ Users can create, edit, show, delete their own listings
    + Users must be signed in
    + Listings must have an attached image
    + Listings must specify a category
    + Users can view their own listings
+ Users can create an account
    + Users can edit their details
	+ Users can login with their email or username
+ Admin users can view a dashboard of listings with associated user emails
    + Admin users can delete existing listings (but not edit)

#### Stretch Goals 
+ Users can search for listings based on categories
+ Users can rate listings
+ Users can view their own ratings

### Wireframes for your app :pencil2:
![Wire Frames of Landing Page](docs/wireframe_homeppage.png)
![Wire Frames of Gallery Listings](docs/wireframe_listings.png)

### An ERD for your app
![ERD](docs/T2A2_MVP_Database_ERD.png)

### Explain the different high-level components (abstractions) in your app :robot: 
*Let's Gogh* is a two-sided marketplace app built on the Rails framework which follows the Model/View/Controller (MVC) architecture. MVC separates responsibilities and allows for clarity in development design. RESTful routes are also utilised where REST stands for "Representational State Transfer". By using MVC architecture with RESTful routes upscalability is facilitated as each MVC file has a distinct responsibility and therefore can be updated or debugged accordingly.

The only component that interacts with the database are the models which form a bridge between the Postgres relational database and the controllers. Each model object has a corresponding record in the database. The table (termed, relation) within a database is the plural version of the Model's class name by convention. Each of these models will have a relation within the database that is labelled in the plural form, *e.g.*, users relation for the User model. This model queries or writes to this 'users' relation. Several models are utilised to normalise the database, as listed here:
+ User, Role, Ability
	+ New users are registered (`new_user_registration_path`- GET) using Devise and are logged into a session as the `current_user` (`user_session_path` - POST)
	+ After registration the users are redirected to the landing page (`root_path` - GET) where they can choose to either `Buy Art` (directed to the index of all listings via `items_path` - GET) or `Sell Art` (directed to creating a new listing via ` items_path` - POST) 
	+ Users can edit their own profile via the `Your Listings` option (`user_items_path` - GET) in the navbar and clicking `Edit Your Profile` (`edit_user_registration_path` - GET; `user_registration_path` - PATCH)
	+ Users can logout of their session via the `Logout` option in the navbar (`destroy_user_session_path` - DELETE)
	+ The authentication of registered users are handled by Devise. The authorisation scope is handled by Rolify and CanCanCan where users are either an `admin` or a general `user`. Admins can view all users and their associated listings but can only show(`admin_users_listings_path` - GET) or delete (`admin_delete_path` - DELETE) other listings via the navigation bar option `Users`.
	+ Users must have one role but a role can belong to many users
	+ Data sanitisation is implemented in each model to prevent SQL injection and maintain database integrity.
+ Item
	+ Only registered users can view the existing items - this is to provide a layer of security against theft of digital art
	+ Users can have many items, and items belong to one user
	+ New listings can be created by the `current_user` and set a title, description, category and price (`new_item_path` - GET; `items#create` - POST)
	+ Users can only edit (`edit_item_path` GET; `items#update` PUT/PATCH) and delete (`items#destroy` - DELETE) their own listings
	+ An attached image of the listing is stored in Cloudify and handled by ActiveStorage that aids in preventing XSS for image attachments
	+ Users can purchase items (`buy_path` - POST). This is handled externally by the Stripe API as the user is redirected to the Stripe transaction page where they input their credit card details. Once a transaction is successful or cancelled, the users are redirected to the item's show page with a notice of the transaction state (either success, `success_path` or cancel, `cancel_path`- GET) 
+ Order
	+ Any logged in user can order an existing item
	+ Once the stripe payment has been processed, the order instance in the `buy` method is captured and stored in an orders table
	+ The orders are then viewable by the `current_user` via the `My Purchases` tab in the navbar (`orders#index` - GET)

### Models & Their Relationships (Active Record Associations) :heart: 
In this application, a relational database structure was utilised where duplicate data sets are reduced by creating relationships between data tables and can be:
##### (i) One-to-one:
Both tables only have a single record of each side of the relationship. Each primary key either relates to one or none in the related table. 
##### (ii) One-to-many:
The primary key table contains one record which relates to none, one or many records in the related table.
##### (iii) Many-to-many:
Either side of the relationship can relate to none or any number of records. This relationship requires an associate/linking table between them as it cannot be accommodated by the relational model.

Each model (table) was aimed to serve a single purpose and represent a single entity to achieve a normalised structure. The centralised model in this application are Users as no other entity should exist without an existing User association. The models are elaborated below:

##### User Model
```ruby
has_many :items, dependent: :destroy
has_many :orders, dependent: :destroy
```
A user can have many items and orders but an item or an order can only exist if a user instance is attached. Hence, `dependent: :destroy` is required for both associated models to prevent orphaning records of Items/Orders if a User instance is destroyed.  

##### Item Model
```ruby
# Validate and associate that an item must belong to a user
belongs_to :user 
validates :user, presence: true

# Association with an item has one artwork attached and its presence is validated via Active Storage Validations gem
has_one_attached :image, dependent: :destroy
validates :image, attached: true

# Association (one to many - item to orders) with orders and items is validated and if an item is destroyed, all its associated orders are also destroyed
has_many :orders, dependent: :destroy, inverse_of: :item
```

As mentioned above, an item must belong to a user. The dependency is mandatory on this end as an item cannot exist without a user but a user can exist without an item (buyer only). Another constraint is that one image must be attached. Items have an optional many association to Orders, as an item can exist without or with one or many orders. However, if an item is destroyed, its associated attached image and any existing orders must also be deleted (*i.e.*, `dependent: :destroy`). 

##### Order Model
```ruby
belongs_to :user
validates :user, presence: true
belongs_to :item
validates :item, presence: true
```
The Order model only has mandatory relationships with Users and Models as each instance of an Order must `belong to` a User and an Item. This is to allow the buyer to access a record of their own orders (User to Order association), as well as the seller to access a record of their sold items (User to Item association). Both associations (buyer and seller perspectives) are required to exist for and order to take place. 

##### Role Model
```ruby
has_and_belongs_to_many :users, :join_table => :users_roles
  
belongs_to :resource,
	:polymorphic => true,
	:optional => true


validates :resource_type,
	:inclusion => { :in => Rolify.resource_types },
	:allow_nil => true

scopify
```
The Role Model was generated using the Rolify gem. It is polymorphic and therefore can have or belong to many users (the resource). For a many to many relation to work in a relational database, a joining table must exist between the two parties. Thus the Roles model can access the User model records through the joining table `UserRoles`. 

### Discuss the database relations to be implemented in your application :computer: 
This application used a relational database on PostgresQL. Each bit of information in a relational database is represented as an attribute and is assigned a row with a unique ID (key). The set of values within a row must have a *relation* to one another in some way whilst conforming to the *attributes* (columns) of the table. A table can access another table's records so long as it has a foreign key that matches the other table's primary key. The foreign key constraint must be satisfied before any data manipulation actions can occur. This prevents entry of invalid data types (if it is not present in the FK column) or actions that would destroy links between associated tables. Implementation of this maintains referential integrity between tables. 

As mentioned above, *Let's Gogh* contains one centralised model, Users, in which its only mandatory association is a role. The PK `userId` is also associated to `Roles` as a FK through the joining table `UserRoles` which also contains the FK, `roleId`, which references the `Roles` table. In this application, every new user instance is automatically assigned as a general user by default. At the moment, existing users are designated a single role - either admin or a general user. However the entities are normalised and users could be assigned to several roles in future design. 

The non-mandatory associations to Users are further elaborated upon below, along with the associations with the Items model.

##### Users
+ Users have a PK `userId` which is linked to FK to Orders and Items through a `one to many` relationship 
	+ This ensures that if a user is deleted, their associated items and orders will also be destroyed (via `dependent: :destroy`) to avoid orphan records as they `belong to` the User

##### Items
+ The PK, `ItemId` is associated to Categories, Orders and Images (via Active Storage Attachments)
	+ Items has a strict `one to one` relation with Categories as an initial version for the MVP; for future design, the separation Categories from Items leaves the option to change the relationship to `one to many` between Items and Categories if the developers choose to allow several categories per item
	+ Items also has a `one to one` relation with the Image; the attachment is separated to deal with uploads - this maintains a normalised structure by separating the functions of storing attributes of an Item and the upload attributes that come with Active Storage
	+ As mentioned above, Items has a `one to many` optional relation with Orders to allow users to purchase an item more than once, if they wish to do so, and associates this instance back to the User

### Database Schema Design :pencil: 
##### Users
```ruby
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
```

The users table contains user details that have been generated by the Devise ruby gem. The username was a customised attribute that was added to allow provide users with another means of identification. 

##### User Roles
```ruby
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
```

User roles is a joining table automatically generated using the Rolify gem. It associates Roles with Users through the FKs, `user_id` and `role_id` respectively.

##### Roles
```ruby
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
```
Roles are generated by Rolify. It associates with the User model via the resource (type and id). 

##### Orders
```ruby
    t.decimal "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "buyer_username"
    t.string "seller_username"
    t.bigint "item_id"
    t.bigint "user_id"
```
Orders contain the details of the buyer and seller. An order instance is created after the `success` method in the order controller. It associates the instance of an item with a buyer (`current_user.username`) and links it back to the seller (`@item.user.username`).

##### Items
```ruby
    t.string "title"
    t.text "description"
    t.integer "price"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_items_on_user_id"
```
Items are for the item details (title, description, category, user, price). Constraints are added in the models for password complexity and character range for titles and descriptions. A range for the price was also added in the model. 

##### Active Storage Attachments
```ruby
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
```

##### Active Storage Blobs
```ruby
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
```
The two Active Storage tables above were generated by Active Storage for image uploads. The image description is contained in the attachment table (name, record type). It also  associates back to the item (record_id). The blobs table stores the file attributes (filename, key, metadata).

#### Task Allocation :calendar: 
Trello was the primary tool used to track progress in the project by using it's cards, calendar and activity features. Screenshots of the progress are shown below:

![Planning Stage](docs/initial_plan.png)
![Planning Stage 2](docs/planning_stage_2.png)
![Planning Stage - Trello Board](docs/planning_stage_cards.png)
![First Scrap](docs/first_scrap.png)
![Devise and Rolify](docs/devise_rolify.png)
![Planning Stage](docs/calendar_view.png)
![Planning Stage](docs/final_trello_view.png)

