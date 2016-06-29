require 'minitest/autorun'
require File.expand_path('../../lib/account', __FILE__)

describe Account do
  def setup
    @account = Account.new 1, 0
  end

  describe "#add_transaction" do
    it "saldo positivo ao fazer depositos" do
      @account.add_transaction "10000"

      @account.balance.must_equal 10000
    end

    it "saldo deve ser somado ao fazer novos depositos" do
      @account.add_transaction "10000"
      @account.add_transaction "10000"

      @account.balance.must_equal 20000
    end

    it "saldo negativo ao fazer débitos" do
      @account.add_transaction  "20000"
      @account.add_transaction "-10000"

      @account.balance.must_equal 10000
    end

    it "saldo deve ser subtraido ao fazer novos débitos" do
      @account.add_transaction  "20000"
      @account.add_transaction "-10000"
      @account.add_transaction "-10000"

      @account.balance.must_equal 0
    end

    it "multas de R$ 5 (500) devem ser aplicadas a cada débito onde o saldo fique negativo" do
      @account.add_transaction   "5000"
      @account.add_transaction "-10000"

      @account.balance.must_equal(-5500)
    end

    it "novas multas devem ser aplicadas a todos os débitos com saldo negativo" do
      @account.add_transaction  "0"
      @account.add_transaction "-10000"
      @account.add_transaction "-10000"

      @account.balance.must_equal(-21000)
    end

    it "multas não devem ser aplicadas para depositos, mesmo que o saldo esteja negativo" do
      @account.add_transaction "-10000"

      @account.balance.must_equal(-10500)

      @account.add_transaction   "5000"

      @account.balance.must_equal(-5500)
    end

    it "multas não devem ser aplicadas para novos depositos, mesmo que o saldo esteja negativo" do
      @account.add_transaction "-10000"

      @account.balance.must_equal(-10500)

      @account.add_transaction   "1000"
      @account.add_transaction   "1000"

      @account.balance.must_equal(-8500)
    end
  end
end
