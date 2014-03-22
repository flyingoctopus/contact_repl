class Contact <ActiveRecord::Base
 

# create_contact = contact.create (

#   )

  def find_by_user_id(user_id)
    returned_id = Contact.find_by(1)
    put returned_id
  end


end


  # attr_accessor :firstname, :surname, :email, :id
 
  # def initialize(firstname, surname, email, id = nil)
  #   @firstname = firstname
  #   @surname = surname
  #   @email = email
  #   @id = id
  # end

  # def to_s
  # 	"#{self.id}: #{self.firstname} #{self.surname} #{self.email}"
  # end
   
  # class << self

  #   def connection
  #   PG.connect(
  #     dbname: 'd41v60r8f4uio6',
  #     port: 5432,
  #     user: 'baorjodkhgotca',
  #     host: 'ec2-54-204-24-202.compute-1.amazonaws.com',
  #     password: 'cG6WmW0m4HExgxS4kwx9Zxer5Y'
  #     ) 
  #   end

  #   def save
  #     if @id
  #       update
  #     else
  #       create_contact 
  #     end
  #   end

  #   def create_contact(firstname, surname, email)
  #     id = connection.exec("INSERT INTO contacts (firstname, lastname, email)
  #     VALUES ( '#{firstname}', '#{surname}', '#{email}') RETURNING id").getvalue(0,0)
  #     Contact.new(firstname, surname, email, id)
  #     @id = id
  #     puts @id
  #   end

  # 	def all
  # 		@@contacts
  # 	end

  #   def find_all_by_lastname(search_surname)
  #     sur = connection.exec("SELECT * FROM contacts
  #     WHERE lastname = '#{search_surname}' LIMIT 1;")
  #     sur.each do |row|
  #     Contact.new(row["firstname"], row["lastname"], row["email"])
  #     search_result
  #     end
  #   end

  # 	def destroy(contact_to_delete)
  #     Contact.connection.exec(
  #     "DELETE FROM contacts
  #     WHERE id = #{contact_to_delete}"
  #     )
  #     puts "Contact deleted."
  #   end

  # end
  	
  # end
