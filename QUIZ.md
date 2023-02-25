# CMPS1171 - Quiz #2

1. Login as the postgres superuser and complete the following tasks:

   a. Create a database named music
   b. Create a new role for the music database named music. Be sure to set an appropriate
   password for the music role.
   c. Logout of the postgres account.

2. Login to the music database (as user music) that you just created and create
   two tables, one named 'albums', and one named 'tracks', in a file named 'tables.sql'.
   An album should have at least a column named title which represents the name of the
   album. A track should have at least two columns, one name title representing the
   name of the track and one named length representing (in minutes) the length of
   the track. Note: A track is another name for a song.
3. Establish a relationship between the albums table and the tracks table.
   [Hint]: read the queries below to get an idea of the relationship.
4. Insert at least ten rows for each of the tables you created in the music database.
5. Write an SQL query to see the albums and the tracks that belong to that album.

6. Write an SQL query to see the album or albums that each track belongs to

7. Write a query to see the number of songs an album has.

8. Write a query to see how many albums a particular track is included on.

9. Logout out of the music database when you have completed the tasks.

10. Create the ER-Diagram for the music database that you designed using the
    ['dbdiagram.io'](https://dbdiagram.io/home) website.
    The ER-Diagram should be saved as a PDF file named 'er-diagram'
