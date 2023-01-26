tableextension 50101 CustomerExt extends Customer
{

    fields
    {
        // Add changes to table fields here
        field(50101; reward; Code[100])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if rec.reward = '' then begin
                    FieldError(rec.reward);
                end;
            end;

            trigger OnLookup()
            begin
                LookupContract(rec);
            end;

        }
    }

    procedure LookupContract(var customerRec: Record Customer): Boolean
    var
        contractList: Page "Customer List";
        Result: Boolean;
    begin
        contractList.SetTableView(customerRec);
        contractList.SetRecord(customerRec);
        contractList.LookupMode := true;
        Result := contractList.RunModal = ACTION::LookupOK;
        if Result then
            contractList.GetRecord(customerRec)
        else
            Clear(customerRec);

        exit(Result);
    end;

    var
        myInt: Integer;
}