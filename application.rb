class Application
  attr_accessor :name, :email

  @quit = false

  def run
    puts "Welcome to da contact ap. What do you want"
    print_menu_options
    unless @quit == true
      ask_for_input
    end
  end

  private

  # Prints the main menu only
  def print_menu_options
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " show     - Search by ID"
    puts " find     - Find"
    puts " delete   - Delete"
    puts " quit     - Exit Application"
    print "> "
  end

  #def create_contact
    #puts "Create a new contact - Please input a name: "
    #name = gets.chomp.to_s
    #puts "Email address? "
    #email = gets.chomp.to_s
    #new_contact(name, email)
    #ask_for_input
  #end

  def ask_for_input
    puts "What would you like to do? Type 'options' for options."
    input = gets.chomp.downcase
    case input
      when "options"
        print_menu_options
        ask_for_input
      when "new"
        input_contact
      when "list"
        list_all_contacts
      when "find"
        find_contacts
      when "delete"
        ask_delete
      when "seed"
        add_seed_contacts
      when "show"
        ask_for_id
      when "quit"
        quit
      else
        wrong_input
      end
  end

  def input_contact
    puts "Please enter first name"
    firstname = gets.chomp
    puts "Please enter last name"
    surname = gets.chomp
    puts "Whatz da emails?"
    email = gets.chomp
    create_contact(firstname, surname, email)
    #Contact.create_contact(firstname, surname, email)
    puts "Thanks!"
    ask_for_input
  end

  def list_all_contacts
    puts '*************'
    contacts = Contact.all
    contacts.each do |contact|
      puts contact.to_s
    end
    ask_for_input
  end

  def find_contacts
    puts "Search by last name - enter last name"
    search_surname = gets.chomp
    Contact.find_all_by_lastname(search_surname)
  end

  def add_seed_contacts
    @contact_list << Contact.new('Cali', 'Diva', 'Cali@diva.com')
  end

  def ask_for_id
    puts "Please enter an id number __"
    user_id = gets.chomp
    user_id.to_i
    Contact.find_by_user_id(user_id)
  end

  def wrong_input
    puts "I didn't understand, bro!"
    ask_for_input
  end

  def invalid_search
    puts "Sorry, can't find by that name"
  end

  def ask_delete
    puts "Please input id you would like to delete:"
    contact_to_delete = gets.chomp
    Contact.destroy(contact_to_delete)
  end

  def quit 
    @quit = true
    puts "good bye" 
  end

end
