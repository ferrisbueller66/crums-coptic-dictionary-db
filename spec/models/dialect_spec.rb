require 'rails_helper'

RSpec.describe Dialect, type: :model do
  let(:dialect){Dialect.create(name: "Sahidic")}
  let(:dialectical_form){
    DialecticalForm.create(dialect_id: dialect.id,
    lexeme: "ⲛⲟⲩϩⲃ")
  }

  it "contains a name" do
    expect(dialect.name).to eq "Sahidic"
  end

  it "has_many dialectical_forms" do
    expect(dialectical_form).to be_valid
  end

end
