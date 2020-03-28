class Song
  attr_accessor :name, :artist_name
  @@all = []
  
<<<<<<< HEAD
  def initialize(name=name, artist_name=artist_name)
=======
  def initialize(name=name)
>>>>>>> a4586ffc3dad2010162e665345d95f788cbedde1
   @name = name
    @artist_name = artist_name
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    self.new
  end
    
  def self.new_by_name(name)
    self.new(name)
  end
  
  def self.create_by_name(name)
    self.new(name)
  end
    
<<<<<<< HEAD
  def self.find_by_name(name)
    @@all.find { |song_obj| song_obj.name == name}
  end
  
  def self.find_or_create_by_name(name)
   if self.find_by_name(name)
    self.find_by_name(name)
    else
     self.create_by_name(name)
   end
 end
  #def self.find_or_create_by_name(name)
   # if self.find_by_name(name) == false
    #  self.create_by_name(name)
    #else
      #self.find_by_name(name)
    #end
  #end
    
=======
  def self.find_by_name(search_name)
    @@all.find { |song_obj| song_obj.name == search_name}
  end
  
  def self.find_or_create_by_name(name)
   if !find_by_name(name)
     creat_by_name(name)
   else
     find_by_name
   end
 end
  
>>>>>>> a4586ffc3dad2010162e665345d95f788cbedde1
  def self.alphabetical
    self.all.sort_by { |song| song.name[0]}
  end
  
<<<<<<< HEAD
  def self.create_from_filename(filename)
    song_array = filename.sub!(/.mp3/, '').split(' - ')
    new_song = self.new
    new_song.artist_name = song_array[0]
    new_song.name = song_array[1]
    new_song
  end
  
  def self.new_from_filename(filename)
    song_array = filename.sub!(/.mp3/, '').split(' - ')
    new_song = self.new
    new_song.artist_name = song_array[0]
    new_song.name = song_array[1]
    new_song
  end
=======
  
>>>>>>> a4586ffc3dad2010162e665345d95f788cbedde1
  
  def self.destroy_all
    @@all.clear
  end
  

end
