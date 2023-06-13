# Crowdfunding_ETL
An awesome project which involved practicing the extract, transform, and load procedure that is frequently a part of a data professional's day-to-day activities. 


## Overview & Phases

Given two .xlsx files containing synthetic crowdfunding data, students were asked to read the files into pandas dataframes, perform a series of transformations, and output the cleaned data into csv files. The following portion of this README provides a general description of each phase of the ETL process.

### Extract

1. crowdfunding.xlsx
    - this file contained data on crowdfunding campaigns including backer count, launch & end dates, and categories of the campaign. 

2. contacts.xlsc
    - this file contained unformatted contact information for the campaigns contained in crowdfunding.xlsx. This data was linked with crowdfunding.xlsx through a contact_id


### Transform

1. crowdfunding.xlsx
    - Separated some columns that contained compound information and introduced id columns to link data within a database constructed in the load phase. 

2. contacts.xlsc
    - Extracted data from the .xlsx file and separated the fields into distinct columns. Formatted data such that it could be linked to the dataframes created from the crowdfundign.xlsx.

Throughtout this phase, four dataframes were created and extracted into csv files to be later loaded into an SQL dataframes. 

### Load

A schema was created in SQL which corresponded to the four dataframes created during the extract and transform phases. Incomplete data was filtered using NOT NULL states. Tables were linked using foreign keys. Tables were loaded in without errors. 