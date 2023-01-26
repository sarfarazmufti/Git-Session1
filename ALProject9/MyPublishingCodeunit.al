codeunit 50104 MyPublishingCodeunit
{
    [IntegrationEvent(true, true)]
    procedure OnAddressLineChangedEvent(line: Text[100])
    begin
    end;

    var
        recordLine: Integer;
}

codeunit 50103 MySubscribingCodeunit
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublishingCodeunit, 'OnAddressLineChangedEvent', '', true, true)]
    local procedure SubcribeToOnAddressLineChangedEvent(sender: Codeunit MyPublishingCodeunit; recordLine: Integer)
    begin
        // My subscriber code
    end;
}