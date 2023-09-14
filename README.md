# data-project-database


Steps to run the .sql script from git repository in PostgreSQL

1. Clone the Git Repository :
   Clone the Git repository that contains the `.sql` script to your local machine. You can use the `git clone` command to do this.
   
   git clone https://github.com/ishan-thk/data-project-database.git


2. Navigate to the Repository Directory :
   Use the `cd` command to navigate to the directory where you cloned the Git repository.

   cd data-project-database


3. Connect to PostgreSQL :
   Open a terminal or command prompt and connect to your PostgreSQL database using the `psql` command. You'll need to provide the appropriate connection details such as username, password, host, and database name.

   psql -U your_username -d your_database -h localhost -p 5432


4. Run the SQL Script :
   Once you are connected to the PostgreSQL database, you can run the SQL script using the `\i` command followed by the path to the `.sql` script relative to your current directory. For example:

   
   \i path/to/script.sql

   



That's it! You have successfully run the `.sql` script from the Git repository in your PostgreSQL database.
