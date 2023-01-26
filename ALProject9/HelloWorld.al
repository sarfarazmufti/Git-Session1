// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage()
    var
        records: Record Customer;
    begin
        Message('App published: Hello world');
        if records.Find() then begin

        end;
    end;

    [TryFunction]
    local procedure MyProcedure()
    var
        myInt: Integer;
    begin

    end;




}