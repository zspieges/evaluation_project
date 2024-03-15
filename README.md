# Instructions
1. Clone this repository to your local machine.
2. Install the require dependencies if you don't have them already. You may choose to use a virtual environment for the python dependencies.:
    - Python 3
    - dbt-core and dbt-sqlite
      - dbt-sqlite requires the same major and minor version of dbt-core. Make sure to install the correct version of both packages.
3. Build the project using dbt. There is a profile in the profiles.yml file that uses the dbt-sqlite adapter, and the database is already in this project. 
4. Fix any errors that may arise during the build process.
5. A request from another team has just come in for a table for a new visualization. They need a table that shows the total number of patients seen by each practice in the last 30, 60, and 90 days. 
    - Create a new model that will provide this information. 
    - Update the schema.yml file to include the new model and its columns.