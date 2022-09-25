'''
Our project aims to have people avoid that stress by enabling a user to find a movie they want to watch with the help
of some filters, ratings, and special queries. A movie may pertain to a user due to a variety of factors that we
considered for this project: its director, producer, actor(s), character(s), genre(s), soundtrack, and the way it is
displayed (at a theater or streaming service). Hence, the main planned use of this database is to help users find
movies that capture their interests with the help of the database’s stored information.
'''

import pymysql
import matplotlib.pyplot as plt

# retrieves user input for username and password to establish
# a connection to MySQL
correct_connection_input = False
while correct_connection_input == False:
   username = input('Enter MySQL username: ')
   password = input('Enter MySQL password: ')
   try:
       connection = pymysql.connect(host='localhost',
                                    user=username,
                                    password=password,
                                    database='entertainment',
                                    cursorclass=pymysql.cursors.DictCursor,
                                    autocommit=True)
       correct_connection_input = True
       break
   except pymysql.err.OperationalError as connection_error:
       print('Invalid username and/or password. Error %d: %s' %
             (connection_error.args[0], connection_error.args[1]))
       correct_connection_input = False

# global variables for the user's username
movie_username_global = None

def data_validation(value_to_check, valid_value_list, allow_skip):
    '''
    Function: data_validation
    Parameters: value_to_check (any data type), a list of valid values, and a boolean
    Returns: a valid piece of data to use (any data type)
    '''
    valid_value = False
    value_to_check = str(value_to_check)
    valid_value_list2 = []
    for value in valid_value_list:
        value = str(value)
        valid_value_list2.append(value)
    while valid_value == False:
        if value_to_check not in valid_value_list2:
            if allow_skip == True:
                if value_to_check == "SKIP":
                    value_to_check = None
                    valid_value = True
                    break
                else:
                    print(valid_value_list2)
                    value_to_check = input("Error: Invalid input. Please enter a value from the list above or type "
                                           "'SKIP': ")
            elif allow_skip == False:
                print(valid_value_list2)
                value_to_check = input("Error: Invalid input. Please enter a value from the list above: ")
        else:
            valid_value = True
            break
    return value_to_check


def login_viewer():
   '''
   Function: login_viewer
   Parameters: None
   Returns: the user's username for the program (string)
   '''
   incorrect_login_inputs = 0
   while incorrect_login_inputs < 4:
       movie_username = input('Enter your account username: ')
       try:
           c1 = connection.cursor()
           c1.callproc('login_viewer', (movie_username,))
           c1.close()
           break
       except pymysql.Error as e:
           incorrect_login_inputs += 1
           print('Error %d: %s' % (e.args[0], e.args[1]))
   if incorrect_login_inputs == 4:
       print("Too many incorrect attempts. Please try again later. ")
       exit()
   return movie_username

def viewer_age():
   '''
   Function: viewer_age
   Parameters: None
   Returns: the user's age saved onto this account (int)
   '''
   correct_age_input = False
   while correct_age_input == False:
       try:
           age = input("Enter your age or type 'SKIP' "
                       "to not associate an age with the account: ")
           if age == 'SKIP':
               age = None
               correct_age_input = True
               break
           elif(age.isdigit()):
               age = int(age)
               if(age >= 0):
                   correct_age_input = True
                   break
               else:
                   print('Invalid value for age. Age must be at least 0.')
           else:
               print('Invalid value for age. Age must be a number that is '
                     'at least 0.')
       except pymysql.Error as e:
           print('Invalid value for age. Age must be a number that is at '
                 'least 0. Error %d: %s' %
                 (e.args[0], e.args[1]))
   return age


def viewer_sex():
    '''
    Function: viewer_sex
    Parameters: None
    Returns: the user's sex saved onto this account (string)
    '''
    sexes = ['Male', 'Female', 'Non-binary', 'Unknown']
    print(sexes)
    try:
        sex = input("Enter your sex (choose from the list above) or type 'SKIP' to not associate a sex with the "
                    "account: ")
        allow_skip = True
        sex = data_validation(sex, sexes, allow_skip)
    except pymysql.Error as e:
        print('Invalid value for sex. Error %d: %s' % (e.args[0], e.args[1]))

    return sex


def update_viewer(movie_username):
   '''
   Function: update_viewer
   Parameters: the user's username for this program (string)
   Returns: the user's updated username saved onto this account (string)
   '''
   correct_update_viewer_input = False
   while correct_update_viewer_input == False:
       try:
           new_username = input('Enter an account username: ')
           name = input('Enter your name: ')
           age = viewer_age()
           sex = viewer_sex()
           c2 = connection.cursor()
           c2.callproc('update_viewer',
                       (movie_username, new_username, name, age, sex,))
           correct_update_viewer_input = True
           c2.close()
           break
       except pymysql.Error as e:
           print('Account was not updated. Error %d: %s' % (e.args[0],
                                                            e.args[1]))
   return new_username


def delete_viewer(movie_username):
   '''
   Function: delete_viewer
   Parameters: the user's username for this program (string)
   Returns: Nothing, just deletes a user's account
   '''
   c3 = connection.cursor()
   correct_delete_viewer_input = False
   while correct_delete_viewer_input == False:
       try:
           c3.callproc('delete_viewer', (movie_username, ))
           correct_delete_viewer_input = True
           c3.close()
           break
       except pymysql.Error as e:
           print('Account was not deleted. Error %d: %s' % (e.args[0], e.args[1]))


def create_new_account():
   '''
   Function: create_new_account
   Parameters: None
   Returns: a new username for the user (string)
   '''
   correct_input = False
   while correct_input == False:
       try:
           new_username = input('Enter an account username: ')
           name = input('Enter your name: ')
           age = viewer_age()
           sex = viewer_sex()
           c4 = connection.cursor()
           c4.callproc('create_viewer', (new_username, name, age, sex,))
           c4.close()
           correct_input = True
           break
       except pymysql.Error as e:
           print('Account was not created. Error %d: %s' % (e.args[0],
                                                            e.args[1]))
   movie_username = new_username
   return movie_username


def account():
   '''
   Function: account
   Parameters: None
   Returns: Nothing, just allows a user to update/delete their account or neither
   '''
   account_yes_no_input = False
   while account_yes_no_input == False:
       account_exists = input('Do you have an account? ("Yes"/"No"): ')
       if account_exists == 'Yes':
           account_yes_no_input = True
           movie_username = login_viewer()

           update_delete_input = False
           while update_delete_input == False:
               account_prompt = input('Do you want update or delete '
                                      'your account? Or neither? ("Update"/"Delete"/"Neither"): ')
               if account_prompt == 'Update':
                   update_delete_input = True
                   movie_username = update_viewer(movie_username)
               elif account_prompt == 'Delete':
                   update_delete_input = True
                   delete_viewer(movie_username)
                   connection.close()
               elif account_prompt == 'Neither':
                   break
               else:
                   print('Invalid input. Input must be "Update"/"Delete"/"Neither". ')

       elif account_exists == 'No':
           account_yes_no_input = True
           movie_username = create_new_account()
       else:
           print('Invalid input. Input must be either "Yes" or "No".')
   global movie_username_global
   movie_username_global = movie_username

######################################################################

def star_rating():
   '''
   Function: star_rating
   Parameters: None
   Returns: a value for the number of stars a user gives for a movie (int)
   '''
   correct_stars_input = False
   while correct_stars_input == False:
       try:
           movie_stars = input(
               'Between 0 and 5, inclusive, how many stars would you like to '
               'give the movie? (enter a whole number): ')
           if (movie_stars.isdigit()):
               movie_stars = int(movie_stars)
               if 5 >= movie_stars >= 0:
                   correct_stars_input = True
                   break
               else:
                   print(
                       'Invalid star rating. It must be between 0 and 5, inclusive.')
           else:
               print(
                   'Invalid star rating. It must be a number between 0 and 5, inclusive.')
       except pymysql.Error as e:
           print(
               'Invalid star rating. It must be a number between 0 and 5, inclusive. '
               'Error %d: %s' % (e.args[0], e.args[1]))
   return movie_stars


def select_movie(procedure_name, movie_username):
   '''
   Function: select_movie
   Parameters: the name of a SQL procedure (string), the user's username (string)
   Returns: a value for the movie ID for the movie a user chooses (int)
   '''
   try:
       c5 = connection.cursor()
       if(procedure_name == 'movies_with_ratings'):
           c5.callproc(procedure_name)
       else:
           c5.callproc(procedure_name, (movie_username,))
       movies_list = []
       for row in c5.fetchall():
           print(row)
           for key, value in row.items():
               if key == "movie_id":
                   movies_list.append(value)
       c5.close()
   except pymysql.Error as e:
       print('Movie could not be selected. Error %d: %s' % (e.args[0], e.args[1]))

   movie_selection = input('Select a movie (enter the '
                                       'corresponding movie ID): ')

   allow_skip = False
   movie_selection = data_validation(movie_selection, movies_list, allow_skip)
   return movie_selection


def create_rating(movie_username):
   '''
   Function: create_rating
   Parameters: a user's username (string)
   Returns: Nothing, just creates a new rating for a movie
   '''
   movie_to_rate = select_movie('movies_not_rated', movie_username)
   if (movie_to_rate != None):
       movie_stars = star_rating()

       movie_review = input("Enter a review or type 'SKIP' to enter no review: ")
       if movie_review == 'SKIP':
           movie_review = None

       correct_create_rating_input = False
       while correct_create_rating_input == False:
           try:
               c6 = connection.cursor()
               c6.callproc('create_rating',
                           (movie_username, movie_to_rate, movie_stars,
                            movie_review,))
               c6.close()
               correct_create_rating_input = True
               break
           except pymysql.Error as e:
               print('Rating was not created, possibly because you have no ratings in the first place. Error %d: %s' %
                     (e.args[0], e.args[1]))
   else:
       print('No movies for which you can create a rating.')


def delete_rating(movie_username):
   '''
   Function: delete_rating
   Parameters: a user's username (string)
   Returns: Nothing, just deletes a rating for a movie
   '''
   movie_to_delete = select_movie('movies_rated', movie_username)
   if (movie_to_delete != None):
       correct_delete_rating_input = False
       while correct_delete_rating_input == False:
           try:
               c7 = connection.cursor()
               c7.callproc('delete_rating',
                           (movie_username, movie_to_delete,))
               c7.close()
               correct_delete_rating_input = True
               break
           except pymysql.Error as e:
               print('Rating was not deleted. Error %d: %s' % (e.args[0], e.args[1]))
   else:
       print('No movies for which you can delete the rating.')


def edit_rating(movie_username):
   '''
   Function: edit_rating
   Parameters: a user's username (string)
   Returns: Nothing, just edits a rating for a movie
   '''
   movie_to_edit_rating = select_movie('movies_rated', movie_username)
   if(movie_to_edit_rating != None):
       movie_stars = star_rating()

       movie_review = input("Enter a review or type 'SKIP' to enter no review: ")
       if movie_review == 'SKIP':
           movie_review = None

       correct_edit_rating_input = False
       while correct_edit_rating_input == False:
           try:
               c8 = connection.cursor()
               c8.callproc('edit_rating',
                            (movie_username, movie_to_edit_rating, movie_stars, movie_review, ))
               c8.close()
               correct_edit_rating_input = True
               break
           except pymysql.Error as e:
               print('Rating was not edited. Error %d: %s' % (e.args[0], e.args[1]))


def view_ratings(movie_username):
   '''
   Function: view_ratings
   Parameters: a user's username (string)
   Returns: Nothing, just allows a user to view the ratings for a movie they rated
   '''
   ratings_to_view = select_movie('movies_with_ratings', movie_username)

   if (ratings_to_view != None):
       correct_view_rating_input = False
       while correct_view_rating_input == False:
           try:
               c9 = connection.cursor()
               c9.callproc('retrieve_ratings',
                            (ratings_to_view,))
               for row in c9.fetchall():
                   print(row)
               correct_view_rating_input = True
               break
               c9.close()
           except pymysql.Error as e:
               print('Ratings could not be viewed. Error %d: %s' % (e.args[0], e.args[1]))
   else:
       print('No movies for which you can view the ratings.')


def review_movie():
   '''
   Function: review_movie
   Parameters: None
   Returns: Nothing, just allows a user to view, create, edit, or delete a rating on their own
   '''
   movie_review_input = False
   while movie_review_input == False:
       rate_prompt = input(
           'Do you want view, create, edit, or delete a review? '
           '("View"/"Create"/"Edit"/"Delete"): ')
       global movie_username_global
       if rate_prompt == 'View':
           movie_review_input = True
           view_ratings(movie_username_global)
       elif rate_prompt == 'Create':
           movie_review_input = True
           create_rating(movie_username_global)
       elif rate_prompt == 'Delete':
           movie_review_input = True
           delete_rating(movie_username_global)
       elif rate_prompt == 'Edit':
           movie_review_input = True
           edit_rating(movie_username_global)
       else:
           print('Invalid input. Input must be "View"/"Create"/"Edit"/"Delete".')

######################################################################

def select_streaming_service(allow_skip):
   '''
   Function: select_streaming_service
   Parameters: a boolean indicating whether a user must choose a streaming
   service from the options available
   Returns: Nothing, just enables a user to select a streaming service
   '''
   streaming_services = []
   try:
       c10 = connection.cursor()
       c10.callproc('retrieve_streaming_services')
       for row in c10.fetchall():
           print(row)
           for key, value in row.items():
               if key == 'display_place_id':
                   streaming_services.append(value)
       if allow_skip == True:
            streaming_service = input("Select a streaming service "
                                      "(enter the corresponding display "
                                      "place ID). Type 'SKIP' if the movie "
                                      "is unavailable at any of these "
                                      "streaming services: ")
       else:
           streaming_service = input('Select a streaming service '
                                     '(enter the corresponding display '
                                     'place ID): ')
       valid_streaming_service = data_validation(streaming_service,
       streaming_services, allow_skip)
       if valid_streaming_service != None:
           valid_streaming_service = int(valid_streaming_service)
       c10.close()
       return valid_streaming_service
   except pymysql.Error as e:
       print('Streaming service could not be selected. Error %d: %s' %
             (e.args[0], e.args[1]))


def show_theaters_at_location():
   '''
   Function: show_theaters_at_location
   Parameters: None
   Returns: the theater id for the theater a user chooses (int) and a list of
   theater ids for theaters with a certain zipcode and state
   '''
   valid_location = False
   valid_theater = False
   zipcodes = []
   states = []
   theaters = []

   try:
       c11 = connection.cursor()
       c11.callproc('retrieve_movie_theatres')
       for row in c11.fetchall():
           print(row)
           for key, value in row.items():
               if key == 'zipcode':
                   zipcodes.append(value)
               elif key == 'state':
                   states.append(value)
       c11.close()
   except pymysql.Error as e:
       print('Movies could not be retrieved. Error %d: %s' % (e.args[0],
                                                              e.args[1]))

   while valid_location == False:
       valid_state = False
       while valid_state == False:
           state = input('Enter a state where you want to watch a movie as a 2 letter abbreviation: ')
           if state in states:
               valid_state = True
               break
           else:
               print('Invalid state entered. A state must be entered as a 2 '
                     'letter abbreviation and a theater must be in that state.')

       valid_zipcode = False
       while valid_zipcode == False:
           zipcode = input('Enter a zipcode where you want to watch a movie: ')
           if zipcode.isdigit() == True:
               zipcode = int(zipcode)
               if zipcode in zipcodes:
                   valid_zipcode = True
                   break
               else:
                   print('Invalid zipcode entered. A zipcode must be entered'
                         ' as 5 digits and a theater must be in that zipcode.')
           else:
               print('Invalid zipcode entered. A zipcode must be entered'
                     ' as 5 digits and a theater must be in that zipcode.')

       for i in range(len(states)):
           if states[i] == state and zipcodes[i] == zipcode:
               valid_location = True
               break
       else:
           valid_location = False
           print('Invalid location combination entered.')

   try:
       c12 = connection.cursor()
       c12.callproc('theater_filter', (zipcode, state,))
       for row in c12.fetchall():
           print(row)
           for key, value in row.items():
               if key == 'display_place_id':
                   theaters.append(value)
       c12.close()
   except pymysql.Error as e:
       print('Theaters cannot be shown. Error %d: %s' % (e.args[0], e.args[1]))

   while valid_theater == False:
       theater_selection = input(
           'Select a theater (enter the corresponding display place ID): ')
       if(theater_selection.isdigit() == True):
           theater_selection = int(theater_selection)
           if theater_selection in theaters:
               valid_theater = True
               break
           else:
               print('Invalid theater selected.')
       else:
           print('Invalid theater selected.')
   return theater_selection, theaters


def purchase_ticket(tickets, movies):
   '''
   Function: purchase_ticket
   Parameters: a list ids representing available tickets (ints) and a list of
   movie ids (ints)
   Returns: the id corresponding to the chosen movie (int)
   '''
   theater_movie = None
   allow_skip = False
   ticket = input(
       "Select a ticket to purchase (enter its corresponding ticket ID: ")
   valid_ticket = int(data_validation(ticket, tickets, allow_skip))
   for i in range(len(tickets)):
       if tickets[i] == valid_ticket:
           theater_movie = movies[i]
   return theater_movie


def watch_at_streaming_service():
    '''
    Function: watch_at_streaming_service
    Parameters: None
    Returns: Nothing, just enables a user to select a movie from a streaming
    service
    '''
    streaming_service = select_streaming_service(False)
    try:
        c13 = connection.cursor()
        c13.callproc('movies_in_streaming_services',
                     (streaming_service,))

        streaming_movies = []
        for row in c13.fetchall():
            print(row)
            for key, value in row.items():
                if key == 'movie_id':
                    streaming_movies.append(value)
        c13.close()
    except pymysql.Error as e:
        print('Movies could not be shown. Error %d: %s' % (e.args[0], e.args[1]))

    streaming_movie = input(
        'Select a movie (enter the corresponding movie ID): ')
    allow_skip = False
    valid_streaming_movie = data_validation(streaming_movie,
                                            streaming_movies,
                                            allow_skip)

    try:
        c14 = connection.cursor()
        c14.callproc('update_movies_watched_ss', (
            movie_username_global, valid_streaming_movie,
            streaming_service,))
        c14.close()
    except pymysql.Error as e:
        print('Watch history was not updated. Error %d: %s' % (
            e.args[0], e.args[1]))


def watch_at_theater():
    '''
    Function: watch_at_theater
    Parameters: None
    Returns: Nothing, just enables a user to select a movie showing at a theater
    '''
    theater_details = show_theaters_at_location()
    for i in range(len(theater_details)):
        theater_id = theater_details[0]
        theaters = theater_details[1]

    allow_skip = False
    theater_id = int(data_validation(theater_id, theaters, allow_skip))

    # display ticket options
    try:
        c15 = connection.cursor()
        c15.callproc('movie_tickets', (theater_id,))
        tickets = []
        theater_movies = []
        for row in c15.fetchall():
            print(row)
            for key, value in row.items():
                if key == 'ticket_id':
                    tickets.append(value)
                if key == 'movie_id':
                    theater_movies.append(value)
        c15.close()
    except pymysql.Error as e:
        print('Tickets could not be shown. Error %d: %s' % (e.args[0], e.args[1]))

    theater_movie = purchase_ticket(tickets, theater_movies)

    # store the selected movie as a movie watched by the viewer
    try:
        c16 = connection.cursor()
        c16.callproc('update_movies_watched_theatre',
                     (movie_username_global, theater_movie,
                      theater_id,))
        c16.close()
        valid_watch_input = True
    except pymysql.Error as e:
        print('Watch history was not updated. Error %d: %s' % (
            e.args[0], e.args[1]))


def watch_movie():
   '''
   Function: watch_movie
   Parameters: None
   Returns: Nothing, just enables a user to choose a movie to watch via a
   streaming service or at a theater
   '''
   global movie_username_global
   valid_watch_input = False
   while valid_watch_input == False:
       where_to_watch = input('Do you want to watch a movie via a '
                              'streaming service or at a theater? ('
                              '"Streaming Service"/"Theater"): ')

       if where_to_watch == "Streaming Service":
           watch_at_streaming_service()
           valid_watch_input = True
           break
       elif where_to_watch == "Theater":
           watch_at_theater()
           valid_watch_input = True
           break
       else:
           print('Invalid input. Input must be "Streaming Service"/"Theater".')

######################################################################

def select_filter(procedure_name, primary_key):
   '''
   Function: select_filter
   Parameters: the name of a SQL procedure (string), the primary key for a table in the SQL driven back end of this program
   (any data type)
   Returns: a filter a user can use for movie selection (any data type)
   '''
   filters = []
   try:
       c17 = connection.cursor()
       c17.callproc(procedure_name)
       for row in c17.fetchall():
           print(row)
           for key, value in row.items():
               if key == primary_key:
                   filters.append(value)
       c17.close()
   except pymysql.Error as e:
       print('Filters could not be used.' % (e.args[0], e.args[1]))

   filter = input("Enter an ID from the list. Type 'SKIP' if you don't want to use an item from this list as a "
                  "filter: ")
   allow_skip = True
   valid_filter = data_validation(filter, filters, allow_skip)
   if valid_filter != None:
       if valid_filter.isdigit():
           valid_filter = int(valid_filter)
   return valid_filter


def find_movies():
   '''
   Function: find_movies
   Parameters: Nothing
   Returns: Nothing, just enables a user to select a movies based on chosen filters
   '''
   genre = select_filter('retrieve_genres', 'genre_name_id')
   actor = select_filter('retrieve_actors', 'actor_id')
   director = select_filter('retrieve_directors', 'director_id')
   producer = select_filter('retrieve_producers', 'producer_id')

   row_count = 0

   try:
       c18 = connection.cursor()
       c18.callproc('read_movies',
                    (genre, actor, director, producer,))
       for row in c18.fetchall():
           row_count += 1
           print(row)
       c18.close()
   except pymysql.Error as e:
       print('Movies could not be shown. Error %d: %s' % (e.args[0], e.args[1]))

   if row_count == 0:
       print("No movies could be found.")

######################################################################

def check_length_format():
   '''
   Function: check_length_format
   Parameters: None
   Returns: A valid string properly representing the length of a movie (string in the format of HH:MM:SS)
   '''
   valid_length = False
   while valid_length == False:
       new_length = input("Enter the length in the HH:MM:SS format: ")
       user_length = new_length.split()

       if len(new_length) == 8:
           for length in user_length:
               for i in range(len(length)):
                   if length[0].isdigit() == False or length[1].isdigit() == False or \
                           length[3].isdigit() == False or length[4].isdigit() == False or \
                           length[6].isdigit() == False or length[7].isdigit() == False or \
                           length[2] != ":" or length[5] != ":":
                       print("Error. You must enter the length in the HH:MM "
                             "format")
                       break
               else:
                   valid_length = True
                   break
       else:
           print("Error. You must enter the length in the HH:MM format")
   return new_length


def select_display_place(allow_skip, procedure_name):
   '''
   Function: select_display_place
   Parameters: a boolean indicating whether a user must choose a display place from the options available, the name of a
   SQL procedure (string)
   Returns: The id for a streaming service (int)
   '''
   display_places = []
   try:
       c19 = connection.cursor()
       c19.callproc(procedure_name)
       for row in c19.fetchall():
           print(row)
           for key, value in row.items():
               if key == 'display_place_id':
                   display_places.append(value)
       c19.close()
   except pymysql.Error as e:
       print('Error %d: %s' % (e.args[0], e.args[1]))
   display_place = input("Select a display place (enter the corresponding display place ID): ")
   valid_display_place = data_validation(display_place, display_places, allow_skip)
   if valid_display_place != None:
       valid_display_place = int(valid_display_place)
   return valid_display_place


def select_from_all_movie_theaters(allow_skip):
   '''
   Function: select_from_all_movie_theaters
   Parameters: a boolean indicating whether a user must choose a movie theater from the options available
   Returns: a valid id for a movie theater (int)
   '''
   valid_display_place = select_display_place(allow_skip, 'retrieve_movie_theatres')
   return valid_display_place


def select_streaming_service(allow_skip):
   '''
   Function: select_streaming_service
   Parameters: a boolean indicating whether a user must choose a streaming service from the options available
   Returns: A valid id for a streaming service (int)
   '''
   valid_display_place = select_display_place(allow_skip, 'retrieve_streaming_services')
   return valid_display_place


def enter_movie_locations():
   '''
   Function: enter_movie_locations
   Parameters: None
   Returns: A theater id (int) and streaming service id (int) representing places a movie can be seen
   '''
   invalid_location_input = False

   while invalid_location_input == False:
       allow_skip = True
       new_theater = select_from_all_movie_theaters(allow_skip)
       new_streaming_service = select_streaming_service(allow_skip)
       if new_theater == None and new_streaming_service == None:
           print('This movie needs to be shown at least once location. '
                 'Enter a location that is showing this movie.')
       else:
           invalid_location_input = True
           break
   return new_theater, new_streaming_service


def add_characters(movie_id, user_entered_movie):
   '''
   Function: add_characters
   Parameters: an id for a movie (int), a boolean indicating whether this data has been added by a user on the front end
   Returns: Nothing, just enables people to add characters to the back end database
   '''
   new_character = None
   character_actor_count = 0

   while new_character != "Done":
       new_character = input(
           "Enter a character in this film. Type 'Done' when you have "
           "finished entering characters. ")
       if new_character == "Done":
           if character_actor_count == 0:
               print("You must enter at least one character and actor. Please enter a value. ")
               new_character = None
           else:
               break
       else:
           new_actor = input(
               "Enter the character's corresponding actor in this film: ")
           character_actor_count += 1
           try:
               c20 = connection.cursor()
               c20.callproc('add_characters', (
                   movie_id, new_character, new_actor,
                   user_entered_movie,))
               c20.close()
           except pymysql.Error as e:
               print('Characters could not be added for this movie. Error '
                     '%d: %s' % (e.args[0], e.args[1]))


def add_characteristic(movie_id, user_entered_movie, procedure_name, characteristic_name):
   '''
   Function: add_characteristic
   Parameters: an id for a movie (int), a boolean indicating whether this data has been added by a user on the front end,
   a SQL procedure name (string), a movie characteristic prompted for the user (string)
   Returns: Nothing, just enables people to add characteristics associated with a movie that has data stored in the back
   end of the database
   '''
   new_characteristic = None
   characteristic_count = 0

   while new_characteristic != "Done":
       print("Enter a", characteristic_name, "for this film. Type 'Done' when you have finished entering",
             characteristic_name + "s.")
       new_characteristic = input('Enter here: ')
       if new_characteristic == "Done":
           if characteristic_count == 0:
               print("You must enter at least one", characteristic_name + ". Please enter a value ")
               new_characteristic = None
           else:
               break
       else:
           characteristic_count += 1
           try:
               c21 = connection.cursor()
               c21.callproc(procedure_name, (movie_id, new_characteristic, user_entered_movie,))
               c21.close()
           except pymysql.Error as e:
               print('The ' + characteristic_name + 's' ' could not be added. Error %d: %s' % (e.args[0], e.args[1]))


def create_genre_list():
   '''
   Function: create_genre_list
   Parameters: None
   Returns: A list of genres (string) for users to choose from
   '''
   genres = []
   try:
       c22 = connection.cursor()
       c22.callproc('retrieve_genres')
       for row in c22.fetchall():
           print(row)
           for key, value in row.items():
               if key == "genre_name_id":
                   genres.append(value)
       c22.close()
   except pymysql.Error as e:
       print('List of genres could not be created. Error %d: %s' % (e.args[0],
                                                                    e.args[1]))
   return genres


def add_genres_for_movie(movie_id, user_entered_movie):
   '''
   Function: add_genres_for_movie
   Parameters: an id for a movie (int), a boolean indicating whether this data has been added by a user on the front end
   Returns: Nothing, just enables people to associate genres with a movie as new data in the back end database
   '''
   allow_skip = False
   genres = create_genre_list()
   genre = input("Enter a genre to associate with this movie: ")
   new_genre = data_validation(genre, genres, allow_skip)
   try:
       c23 = connection.cursor()
       c23.callproc('classify_movie_with_genre', (new_genre, movie_id, user_entered_movie,))
       c23.close()
   except pymysql.Error as e:
       print('The genre could not be associated with this movie. Error %d: %s'
             % (e.args[0], e.args[1]))


def add_songs(movie_id, user_entered_movie):
   '''
   Function: add_songs
   Parameters: an id for a movie (int), a boolean indicating whether this data has been added by a user on the front end
   Returns: Nothing, just enables people to associate songs with a movie as new data in the back end database
   '''
   new_song = None
   song_count = 0
   while new_song != "Done":
       new_song = input(
           "Enter a song in this film. Type 'Done' when you have finished "
           "entering songs. ")
       if new_song == "Done":
           if song_count == 0:
               print("You must enter at least one song. Please enter a value. ")
               new_song = None
           else:
               break
       else:
           song_count += 1
           song_length = check_length_format()
           c24 = connection.cursor()
           try:
               c24.callproc('add_song', (movie_id, new_song, song_length,
                                         user_entered_movie,))
               c24.close()
           except pymysql.Error as e:
               print('Song could not be added for this movie. Error %d: %s' %
                     (e.args[0], e.args[1]))


def enter_movie():
    '''
    Function: enter_movie
    Parameters: None
    Returns: Nothing, just enables people to add movies as new data in the back end database
    '''
    user_entered_movie = True

    valid_title = False
    while valid_title == False:
        new_title = input(
            'Enter the title of the movie you wish to add: ')
        if len(new_title) > 0 and len(new_title) <= 36:
            valid_title = True
            break
        else:
            print(
                'This title is an invalid amount of characters. Please try again.')
    valid_year = False
    while valid_year == False:
        new_release_year = input(
            'Enter the release year of the movie you wish to add: ')
        if new_release_year.isdigit():
            if int(new_release_year) < 1888 or int(
                    new_release_year) > 2022:
                print('Invalid year entered. Please try again.')
            else:
                new_release_year = int(new_release_year)
                valid_year = True
                break
        elif new_release_year.isdigit() == False:
            print('Invalid year entered. Please try again.')

    movie_length = check_length_format()

    valid_synopsis = False
    while valid_synopsis == False:
        new_synopsis = input('Enter the synopsis for this movie: ')
        if len(new_synopsis) > 0 and len(new_synopsis) <= 16777215:
            valid_synopsis = True
            break
        else:
            print(
                'This synopsis is an invalid number of characters. Please try again. ')

    print(
        "Choose a theater and streaming service that are showing this movie, or type "
        "'SKIP' if you don't wish to. ")
    movie_locations = enter_movie_locations()
    for i in range(len(movie_locations)):
        new_theater = movie_locations[0]
        new_streaming_service = movie_locations[1]

    try:
        c25 = connection.cursor()
        c25.callproc('create_movie',
                     (new_title, new_release_year,
                      movie_length, new_synopsis,
                      new_theater,
                      new_streaming_service,
                      user_entered_movie,))
        c25.close()
    except pymysql.Error as e:
        print('Movie could not be created. Error %d: %s' % (e.args[0], e.args[1]))

    new_movie_id = None

    try:
        c26 = connection.cursor()
        c26.callproc('retrieve_max_movie_id')
        for row in c26.fetchall():
            for key, value in row.items():
                if key == "MAX(movie_id)":
                    new_movie_id = int(value)
        c26.close()
    except pymysql.Error as e:
        print('A movie_id could not be obtained for this new movie. '
              'Error %d: %s' % (e.args[0], e.args[1]))

    add_characters(new_movie_id, user_entered_movie)
    add_characteristic(new_movie_id, user_entered_movie,
                       'create_producer', 'producer')
    add_characteristic(new_movie_id, user_entered_movie,
                       'create_director', 'director')
    add_genres_for_movie(new_movie_id, user_entered_movie)
    add_songs(new_movie_id, user_entered_movie)

######################################################################

def new_movie_data():
    '''
    Function: new_movie_data
    Parameters: None
    Returns: Nothing, just enables people to edit existing data for a movie from the back end database
    '''
    user_entered_movie = False
    allow_skip = True
    movies = []

    try:
        c27 = connection.cursor()
        c27.callproc('retrieve_movies')
        for row in c27.fetchall():
            print(row)
            for key, value in row.items():
                if key == 'movie_id':
                    movies.append(value)
        c27.close()
    except pymysql.Error as e:
        print('Movies could not be retrieved. Error %d: %s' % (e.args[0], e.args[1]))


    movie_id = input('Select a movie (enter its corresponding movie ID): ')
    valid_movie = data_validation(movie_id, movies, allow_skip)
    if valid_movie.isdigit():
        valid_movie = int(valid_movie)

    print(
        "Choose a new theater that is showing this movie, or type "
        "'SKIP' if you don't wish to. ")
    new_theater = select_from_all_movie_theaters(allow_skip)
    print(
        "Choose a new streaming service that is showing this movie, or type "
        "'SKIP' if you don't wish to. ")
    new_streaming_service = select_streaming_service(allow_skip)

    valid_yes_or_no = False

    while valid_yes_or_no == False:
        add_new_characters = input(
            "Do you wish to add new characters? ('Yes'/'No'): ")
        if add_new_characters == "Yes":
            valid_yes_or_no = True
            add_characters(valid_movie, user_entered_movie)
        elif add_new_characters == "No":
            valid_yes_or_no = True
            break
        else:
            print("Invalid input. Please enter 'Yes'/'No'")

    valid_yes_or_no = False

    while valid_yes_or_no == False:
        add_new_producers = input(
            "Do you wish to add new producers? ('Yes'/'No') ")
        if add_new_producers == "Yes":
            valid_yes_or_no = True
            add_characteristic(movie_id, user_entered_movie,
                               'create_producer',
                               'producer')
        elif add_new_producers == "No":
            valid_yes_or_no = True
            break
        else:
            print("Invalid input. Please enter 'Yes'/'No'")

    valid_yes_or_no = False

    while valid_yes_or_no == False:
        add_new_directors = input(
            "Do you wish to add new directors? ('Yes'/'No') ")
        if add_new_directors == "Yes":
            valid_yes_or_no = True
            add_characteristic(movie_id, user_entered_movie,
                               'create_director',
                               'director')
        elif add_new_directors == "No":
            valid_yes_or_no = True
            break
        else:
            print("Invalid input. Please enter 'Yes'/'No'")

    valid_yes_or_no = False

    while valid_yes_or_no == False:
        add_new_genres = input(
            "Do you wish to add new genres for this movie? ('Yes'/'No') ")
        if add_new_genres == "Yes":
            valid_yes_or_no = True
            add_genres_for_movie(valid_movie, user_entered_movie)
        elif add_new_genres == "No":
            valid_yes_or_no = True
            break
        else:
            print("Invalid input. Please enter 'Yes'/'No'")

    valid_yes_or_no = False

    while valid_yes_or_no == False:
        add_new_songs = input(
            "Do you wish to add new songs for this movie? ('Yes'/'No') ")
        if add_new_songs == "Yes":
            valid_yes_or_no = True
            add_songs(valid_movie, user_entered_movie)
        elif add_new_songs == "No":
            valid_yes_or_no = True
            break
        else:
            print("Invalid input. Please enter 'Yes'/'No'")

    try:
        c28 = connection.cursor()
        c28.callproc('update_movie', (
            movie_id, new_theater, new_streaming_service,
            user_entered_movie,))
        c28.close()
    except pymysql.Error as e:
        print('This movie could not be updated. Error %d: %s' % (e.args[0], e.args[1]))


def new_genre():
   '''
   Function: new_genre
   Parameters: None
   Returns: Nothing, just enables people to add genres in the back end database
   '''
   user_entered_genre = True
   new_genre = input("Enter a new genre to add: ")

   try:
       c29 = connection.cursor()
       c29.callproc('create_genre',
                    (new_genre, user_entered_genre,))
       c29.close()
   except pymysql.Error as e:
       print(
           'This genre already exists in our database. Error %d: %s' % (
               e.args[0],
               e.args[1]))

######################################################################

def top_five_movies_genre(genre):
    '''
    Function: top_five_movies_genre
    Parameters: a particular genre (string)
    Returns: Nothing, just prints the top five movies for the genre inputted by the user
    '''
    try:
        c30 = connection.cursor()
        c30.callproc('top_five_movies_genre', (genre,))
        for row in c30.fetchall():
            print(row)
        c30.close()
    except pymysql.Error as e:
        print('The top five', genre, 'movies could not be shown. '
              'Error %d: %s' % (e.args[0], e.args[1]))


def average_age_viewers_for_movie(movie_id):
    '''
    Function: average_age_viewers_for_movie
    Parameters: an id for a movie (integer)
    Returns: Nothing, just prints average age of viewers for a movie indicated by the user
    '''
    try:
        c31 = connection.cursor()
        c31.callproc('calculate_average_age',
                     (movie_id,))
        for row in c31.fetchall():
            print(row)
        c31.close()
    except pymysql.Error as e:
        print('The average age of viewers for this movie could not be calculated. Error %d: %s' % (e.args[0],
                                                                                                   e.args[1]))


def top_five_actors():
    '''
    Function: top_five_actors
    Parameters: None
    Returns: Nothing, just prints the top five actors who play in the most movies stored in the database
    '''
    try:
        c32 = connection.cursor()
        c32.callproc('actor_stats')
        for row in c32.fetchall():
            print(row)
        c32.close()
    except pymysql.Error as e:
        print('The top five actors could not be found. Error %d: %s' % (e.args[0], e.args[1]))


def top_five_movies():
    '''
    Function: top_five_movies
    Parameters: None
    Returns: Nothing, just prints the top five movies with the highest average star rating
    '''
    try:
        c33 = connection.cursor()
        c33.callproc('top_five_movies')
        for row in c33.fetchall():
            print(row)
        c33.close()
    except pymysql.Error as e:
        print('The top five movies could not be found' % (e.args[0], e.args[1]))


def sentiment_score(comment, pos, neg):
    """
    Function: sentiment_score
    Parameters: comment (a string), list of positive words (strings), list of negative words (strings)
    Returns: sentiment score (float between -1 and 1)
    """
    score = 0
    words = comment.split()

    for word in words:
        if word in pos:
            score += 1
        if word in neg:
            score -= 1

    return score / len(words)


def clean_string(input_st):
    """
    Function: clean_string
    Parameter: input string, a string
    Returns: cleaned up version of a string that is all lowercase and contains
    no punctuation/numbers
    """
    output_str = ""

    for letter in input_st:
        if letter.isalpha() or letter == " ":
            output_str += letter.lower()

    return output_str

def categorize_scores(lst):
    """
    Function: categorize_scores
    Parameters: a list of sentiment scores (floats)
    Returns: A dict, where each key (str) indicates whether the values they
    align w/ are scores for a certain sentiment or indices of the scores in the
    inputted list. The values are scores (floats) or indices (ints).
    """
    sent_dct = {"pos_scores": [], "neg_scores": [], "neutral_scores": []}

    for i in range(len(lst)):
        if lst[i] > 0:
            sent_dct["pos_scores"].append(lst[i])
        elif lst[i] < 0:
            sent_dct["neg_scores"].append(lst[i])
        else:
            sent_dct["neutral_scores"].append(lst[i])

    return sent_dct

def plot_pie_chart(labels, data1, data2, data3, colors):
    """
    Function: plot_pie_chart
    Parameters: Five lists, one with sentiment names to be used as slice labels (strings), three each for the
    positive, neutral, and negative sentiment scores for the rating comments for a particular movie;
    a list of colors for the plot (strings)
    Returns: Nothing, just generates a pie chart representing the data
    """
    values = []

    data1_percent = (data1 / (data1 + data2 + data3)) * 100
    data2_percent = (data2 / (data1 + data2 + data3)) * 100
    data3_percent = (data3 / (data1 + data2 + data3)) * 100

    values.append(data1_percent)
    values.append(data2_percent)
    values.append(data3_percent)

    plt.pie(values, labels=labels, autopct="%1.1f%%", shadow=True, colors=colors)
    plt.axis("equal")
    plt.title("Overall Sentimentality of the Rating Comments For This Movie")
    plt.show()


def sentiment_analysis(movie_id):
    """
    Function: sentiment_analysis
    Parameters: an id for a movie (int)
    Returns: Nothing, just performs sentimental analysis for the comments of the movie indicated by the user
    """
    # Lists of calm/positive words and negative/worried words that are used to
    # analyze the sentiment of a movie comment
    POSITIVE = ["good", "happy", "relieved", "relief", "glad", "finally", "normal", "excited", "proud", "well",
                "healthy", "lol", "great", "amazing", "celebrate", "optimistic", "bliss", "soothing", "calm",
                "fantastic", "captivating", "hilarious", "funny", "wonderful", "great", "marvelous", "stunning", "best"]
    NEGATIVE = ["bad", "angry", "frustrated", "stressed", "stress", "stupid", "scared", "scary", "scaring", "hate",
                "hated", "annoying", "annoyed", "tired", "disappointed", "lol", "afraid", "complain", "pain", "trouble",
                "concern", "concerns", "worry", "worries",
                "crazy", "unfortunately", "concerning", "blood", "tough", "terrible", "awful", "poor", "worst"]
    COLORS = ["green", "red", "yellow"]
    LABELS = ["Positive", "Negative", "Neutral"]
    comments = []
    scores = []

    try:
        c34 = connection.cursor()
        c34.callproc('retrieve_comments', (movie_id,))
        for row in c34.fetchall():
            for key, value in row.items():
                if key == 'review':
                    comments.append(value)
        c34.close()
    except pymysql.Error as e:
        print('No comments for this movie could be retrieved. Error %d: %s' % (e.args[0], e.args[1]))

    # Cleans up every comment to remove punctuation and numbers and makes them
    # all lowercase. Each comment is given a sentiment score.
    for comment in comments:
        clean = clean_string(comment)
        score = sentiment_score(clean,
                                POSITIVE,
                                NEGATIVE)
        scores.append(score)

    # Calculates and prints out the average sentiment score of all the comments
    avg_score = sum(scores) / len(scores)
    print(
        "Average sentiment score of all comments:",
        avg_score)

    # Generates a plot that depicts the sentiment of each comment from oldest
    # to newest. The plot contains a title, axis labels, and a legend.
    scores.reverse()
    plot_dct = categorize_scores(scores)
    pos_scores = None
    neg_scores = None
    neutral_scores = None
    for key, value in plot_dct.items():
        if key == "pos_scores":
            pos_scores = len(value)
        elif key == "neg_scores":
            neg_scores = len(value)
        elif key == "neutral_scores":
            neutral_scores = len(value)
    plot_pie_chart(LABELS, pos_scores,
                   neg_scores,
                   neutral_scores, COLORS)

def main():
    app_running = True
    # Asks whether a user wants to update/delete an account or neither
    account()
    while app_running == True:
        # asks whether a user wants to keep the program running or not
        continue_or_logout = input('Do you want to continue or logout? '
                                   '("Continue"/"Logout") ')
        # disconnects the user from the program
        if continue_or_logout == "Logout":
            app_running = False
            break
            connection.close()
            exit()
        # the program continues running
        elif continue_or_logout == "Continue":
            # Enables the user to rate, find, watch a movie or perform a special operation
            main_menu_response = input('Do you want to rate, find, or '
                                       'watch a movie? Or do you want to '
                                       'perform a special operation?'
                                       ' ("Rate"/"Find"/"Watch"/"Other") ')
            # Allows users to manage ratings, find a movie to watch, or select a movie to watch
            if main_menu_response == "Rate":
                review_movie()
            elif main_menu_response == "Find":
                find_movies()
            elif main_menu_response == "Watch":
                watch_movie()

            elif main_menu_response == "Other":

                valid_create_or_stats = False
                while valid_create_or_stats == False:
                    create_or_stats = input(
                        "Do you want to enter data or review interesting statistics? "
                        "('Enter'/'Stats') ")

                    # Enables users to add data to the back end database that would be reviewed by back end managers
                    if create_or_stats == "Enter":
                        valid_existing_or_new = False
                        while valid_existing_or_new == False:
                            existing_or_new = input(
                                "Do you want to enter data for an existing "
                                "movie, enter data for or a new movie, or add a "
                                "new genre? ('Existing Movie'/'New Movie'/'New "
                                "Genre') ")

                            # allows users to add a new movie to the database
                            if existing_or_new == "New Movie":
                                enter_movie()
                                valid_existing_or_new = True
                                valid_create_or_stats = True

                            # allows users to edit data for a movie in the database
                            elif existing_or_new == "Existing Movie":
                                new_movie_data()
                                valid_existing_or_new = True
                                valid_create_or_stats = True

                            # allows users to add a new genre to the database
                            elif existing_or_new == "New Genre":
                                new_genre()
                                valid_existing_or_new = True
                                valid_create_or_stats = True
                            else:
                                print("Invalid input. Please type 'Existing Movie', 'New Movie', or 'New Genre'")

                    # Allows users to review interesting statistics based on the data from the back end database
                    elif create_or_stats == "Stats":

                        valid_stat_input = False
                        print("[1]: Find the top five movies by genre")
                        print("[2]: Find the average age of viewers for a movie")
                        print("[3]: Find the five most popular actors today!")
                        print("[4]: Find the top five movies today!")
                        print("[5]: Find the average sentiment rating of all the comments for a certain movie. Also"
                              " generates a pie chart illustrating the overall sentimentality of those comments")

                        while valid_stat_input == False:

                            stat_input = input("Enter a value indicating the operation you want to perform. The "
                                                   "number enclosed in brackets corresponds to the operation to the "
                                                   "right of it. ")
                            # Finds the top five movies by a genre chosen by the user
                            if stat_input == '1':
                                genres = create_genre_list()
                                genre = input("Choose a genre you want to find the top five movies for ")
                                allow_skip = False
                                genre = data_validation(genre, genres, allow_skip)
                                top_five_movies_genre(genre)
                                valid_stat_input = True
                                valid_create_or_stats = True

                            # Finds the average age of the viewers of a movie indicated by the user
                            elif stat_input == '2':
                                movie_id = select_movie('retrieve_movies', movie_username_global)
                                average_age_viewers_for_movie(movie_id)
                                valid_stat_input = True
                                valid_create_or_stats = True

                            # Allows users to discover the five actors that perform in the most movies held in the
                            # databse
                            elif stat_input == '3':
                                top_five_actors()
                                valid_stat_input = True
                                valid_create_or_stats = True

                            # Allows users to see the top five movies in the database based on average star rating
                            elif stat_input == '4':
                                top_five_movies()
                                valid_stat_input = True
                                valid_create_or_stats = True

                            # Allows users to see the distribution of sentiments across the comments pertaining to
                            # ratings for a film chosen by the user
                            elif stat_input == '5':
                                movie_id = select_movie('retrieve_movies', movie_username_global)
                                sentiment_analysis(movie_id)
                                valid_stat_input = True
                                valid_create_or_stats = True

                            else:
                                print("Invalid value entered. Please enter a number from 1-5. ")

                    else:
                        print("Invalid value entered. Please enter 'Enter' or 'Stats'. ")
            else:
                print("Invalid value entered. Please enter 'Rate,' 'Find,' 'Watch,' or 'Other'. ")
        else:
            print("Invalid value entered. Please enter 'Continue' or 'Logout'. ")

main()
