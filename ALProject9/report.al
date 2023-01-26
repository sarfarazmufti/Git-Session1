report 50100 SalesFsc
{

    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    WordLayout = 'MyWordReport3.docx';
    RDLCLayout = 'MyWordReport3.rdl';
    //ProcessingOnly = true;

    ExcelLayout = 'MyWordReport3.xlsx';
    WordMergeDataItem = Customer;

    dataset
    {

        dataitem(Customer; Customer)
        {
            // Sort the table view based on the "No." field.
            DataItemTableView = Sorting("No.");

            RequestFilterFields = "No.";

            PrintOnlyIfDetail = True;
            column(CustNo_; Customer."No.")
            { }
            column(CustomerName; Customer.Name)
            {

            }


            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");
                DataItemLinkReference = Customer;
                column(No_; "No.")
                {

                }
                column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
                column(Status; Status) { }

                dataitem("Sales Line"; "Sales Line")
                {
                    //DataItemLink = "Document No." = field("No.");
                    DataItemLink = "Document No." = FIELD("No.");
                    DataItemLinkReference = "Sales Header";
                    // DataItemTableView = SORTING("Document No.", "Line No.");
                    //UseTemporary = true;

                    column(Type; "Type") { }
                    column(item_; "No.") { }
                    column(Description; Description) { }
                    column(Quantity; Quantity) { }
                    column(Unit_Price; "Unit Price") { }
                    trigger OnAfterGetRecord()
                    var
                        myInt: Integer;
                    begin


                    end;
                }
                trigger OnAfterGetRecord()
                var
                    myInt: Integer;
                begin

                end;
            }


        }

    }


    var
        myInt: Integer;
}