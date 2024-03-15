# Instructions
1. Clone this repository to your local machine.
2. Install the require dependencies if you don't have them already. You may choose to use a virtual environment for the python dependencies.:
    - Python 3
    - dbt-core and dbt-sqlite
      - dbt-sqlite requires the same major and minor version of dbt-core. Make sure to install the correct version of both packages.
3. Build the project using dbt. There is a profile in the profiles.yml file that uses the dbt-sqlite adapter, and the database is already in this project. 
4. Fix any errors that may arise during the build process.
5. The `encounter_details` model was recently added by a new analyst. It currently only contains the start date of the encounter, but the team had requested to also include the duration of the encounter in minutes. Please correct the mistake.
6. A request from another team has just come in for a table for a new visualization. They need a table that shows the total number of medications prescribed by each provider, each year. Please create a new model, with one row per provider per year, and the total number of medications prescribed by that provider in that year.