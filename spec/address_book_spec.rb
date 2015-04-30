require('rspec')
require('contact')
require('pry')

describe(Contact) do
  before do
    Contact.clear()
  end

  describe('.clear') do
    it('will clear array of all contacts') do
      Contact.new("Erin", "Collins", "September").save()
      Contact.clear
      expect(Contact.all).to(eq([]))
    end
  end

  describe('.all') do
    it('will return all contacts in the array of contacts') do
      test_contact = Contact.new("Erin", "Collins", "September").save()
      expect(Contact.all).to(eq(test_contact))
    end
    it('will be empty at first') do
      expect(Contact.all).to(eq([]))
    end
  end

  describe('#save') do
    it('will save a contact into the array of contacts') do
      test_contact = Contact.new("Erin", "Collins", "September").save()
      expect(Contact.all).to(eq(test_contact))
    end
  end

  describe('#first_name') do
    it('will return the first name of a contact') do
      test_contact = Contact.new("Erin", "Collins", "September")
      expect(test_contact.first_name()).to(eq("Erin"))
    end
  end

  describe('#last_name') do
    it('will return the last name of a contact') do
      test_contact = Contact.new("Erin", "Collins", "September")
      expect(test_contact.last_name()).to(eq("Collins"))
    end
  end

  describe('#birthday_month') do
    it('will return the birthday month of a contact') do
      test_contact = Contact.new("Erin", "Collins", "September")
      expect(test_contact.birthday_month()).to(eq("September"))
    end
  end

  describe('#contact_id') do
    it('will return the contact id of a contact') do
      test_contact = Contact.new("Billy", "Joel", "April")
      expect(test_contact.contact_id()).to(eq(1))
    end
  end

  describe('.find') do
    it('will return a contact by id') do
      Contact.new("Billy", "Joel", "April").save()
      test_contact = Contact.new("Beyonce", "Knolls", "June")
      test_contact.save()
      expect(Contact.find(test_contact.contact_id())).to(eq(test_contact))
    end
  end




end
