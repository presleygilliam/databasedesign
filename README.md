# databasedesign
ITSC 3155 Database Design Assignment 

I plan to migrate from schema v1 to v2 through modifications to the current metadata database design. The additional requirements of v2 include multiple user playlists. In addition, there will be multiple user accounts for free, standard, and premium. To fulfill these requirements, the playlist table will include a user_id foreign key allowing for multiple playlist creations. As part of the user table, a new column will need to be created titled type which will allow for free, standard, and premium account types. 
