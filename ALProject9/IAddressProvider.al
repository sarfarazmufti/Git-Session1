interface IAddressProvider
{
    procedure GetAddress(): Text;
}

codeunit 50106 CompanyAddressProvider implements IAddressProvider
{
    Permissions = tabledata Customer = r;
    procedure GetAddress(): Text;
    begin
        exit('Company address \ Denmark 2800')
    end;
}

codeunit 50107 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('My Home address \ Denmark 2800')
    end;
}