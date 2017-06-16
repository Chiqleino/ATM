require './lib/account'


describe Account do

  xit 'is expected to have a 4 digit pin number on initialize' do
    pin = 1234
    pin_length = Math.log10(number).to_i + 1
    expect(pin_length).to eq 4
  end

  it 'is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
end

it 'deactivates account using Class method' do
  Account.deactivate(subject)
  expect(subject.account_status).to eq :deactivated
end
end
