class User
    attr_reader :name, :banks_accounts
    def initialize(name, banks_accounts = [])
        if banks_accounts.class != Array
            raise 'Valor ingresado debe ser un arreglo'
        end
        @name = name
        @banks_accounts = banks_accounts
    end

    def total_balances
        self.banks_accounts[0].balance + self.banks_accounts[1].balance
    end
end

class BankAccount
    attr_accessor :balance
    def initialize(bank, account_number, balance = 0)
        if bank.class != String || account_number.class != String
            raise 'Se debe ingresar el valor como String'
        end

        if balance.class != Integer
            raise 'El valor debe ser un entero'
        end

        @bank = bank
        @account_number = account_number
        @balance = balance
    end

    def transfer(account1, account2)
        account1.balance = account1.balance + account2.balance
        account2.balance = account2.balance - account2.balance
    end
end

## Creando cuentas bancarias

acc1 = BankAccount.new('SuperBank', '2942', 5000)
acc2 = BankAccount.new('ExtraBank', '1240', 5000)
acc3 = BankAccount.new('UltraBank', '1111', 2500)

## Realizando una transferencia

transfer_01 = acc1.transfer(acc1, acc2)

## Chequeando saldo resultante en las cuentas

pp acc1.balance
pp acc2.balance

## Creando usuarios y asignandoles cuentas bancarias

user1 = User.new('Juan', [acc1, acc3])

## Chequeando saldo total de las cuentas bancarias del usuario

pp user1.total_balances
