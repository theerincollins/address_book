class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :birthday_month, :contact_id)

  define_method(:initialize) do |first_name, last_name, birthday_month|
    @first_name = first_name
    @last_name = last_name
    @birthday_month = birthday_month
    @contact_id = @@contacts.length + 1
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:find) do |id|
    found_contact = ''
    @@contacts.each do |contact|
      if contact.contact_id() == id
        found_contact = contact
      end
    end
    found_contact
  end
end
