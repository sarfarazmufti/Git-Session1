pageextension 50102 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter("Balance Due (LCY)")
        {
            field(reward; rec.reward)
            {
                ApplicationArea = all;
            }

        }
    }
}