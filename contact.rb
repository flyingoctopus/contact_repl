class Contact <ActiveRecord::Base

  #self.table_name = "contacts"
  self.primary_key = :id

  attr_accessor :id

  def create_contact(firstname, lastname, email)
    begin
      self.build(:firstname => "#{firstname}", :lastname => "#{lastname}", :email => "#{email}")
      self.save
    rescue Exception => e
      puts "#{e.message}"
      puts "#{e.backtrace}"
    end
  end

  def find_by_user_id(user_id)
    returned_id = Contact.find_by(1)
    put returned_id
  end
end


 
  # def initialize(firstname, lastname, email, id = nil)
  #   @firstname = firstname
  #   @lastname = lastname
  #   @email = email
  #   @id = id
  # end

  # def to_s
  # 	"#{self.id}: #{self.firstname} #{self.lastname} #{self.email}"
  # end
   
  # class << self

  #   def save
  #     if @id
  #       update
  #     else
  #       create_contact 
  #     end
  #   end


  # 	def all
  # 		@@contacts
  # 	end

  #   def find_all_by_lastname(search_lastname)
  #     sur = connection.exec("SELECT * FROM contacts
  #     WHERE lastname = '#{search_lastname}' LIMIT 1;")
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
