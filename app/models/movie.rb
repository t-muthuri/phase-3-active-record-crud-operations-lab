class Movie < ActiveRecord::Base

    # CREATE
    # A movie can be instantiated, given a title, and saved
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    # READ
    # Can return the first item in the table
    def self.first_movie
        Movie.first
        # order by primary key
    end
    # Can return the last item in the table
    def self.last_movie
        Movie.last
    end
    # Can return the number of records in the table
    def self.movie_count
        Movie.count
    end
    # Can return a movie from the table based on its id with the .find method
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    # Can return a movie from the table based on its attributes with the .find_by method
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end
    # Can use a .where clause to select the appropriate movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
        # the result of filtering the current relation according to the conditions in the arguments
    end

    # UPDATE
    # Can update a single movie using the #update method
    def update_with_attributes (attributes)
        self.update(attributes)
    end
    # Can update the title of all records at once using the .update method
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    # DELETE
    # Can delete a single item with the #destroy method
    def self.delete_by_id(id)
        # self.find_movie_with_id.destroy
        Movie.find(id).destroy
    end
    # Can delete all items at once with the .destroy_all method
    def self.delete_all_movies
        Movie.destroy_all
    end
end