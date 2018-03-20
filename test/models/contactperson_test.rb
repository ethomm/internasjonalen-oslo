require 'test_helper'

class ContactpersonTest < ActiveSupport::TestCase
  def setup
    @contact = contactpeople(:eirik)
  end

  test 'Contactperson is valid' do
    contact = Contactperson.new(name: @contact.name, email: @contact.email, telefon: @contact.telefon)
    assert contact.valid?
  end

  test 'Contactperson should have name' do
    contact = Contactperson.new(name: "", email: @contact.email, telefon: @contact.telefon)
    assert_not contact.valid?
  end

  test 'Contactperson name should be longer than 1 character' do
    contact = Contactperson.new(name: "X", email: @contact.email, telefon: @contact.telefon)
    assert_not contact.valid?
  end

  test 'Contactperson should have email' do
    contact = Contactperson.new(name: @contact.name, email: "", telefon: @contact.telefon)
    assert_not contact.valid?
  end

  test 'Contactperson should have email adress has to be valid' do
    contact = Contactperson.new(name: @contact.name, email: "Eirk(At)something.com", telefon: @contact.telefon)
    assert_not contact.valid?
  end

end
