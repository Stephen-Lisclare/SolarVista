page 50261 SVShipToAddressAPI
{
    PageType = API;
    SourceTable = "Ship-to Address";
    APIPublisher = 'DHLab';
    APIGroup = 'SolarVista';
    APIVersion = 'v2.0';
    EntityName = 'SVShipToAddress';
    EntitySetName = 'SVShipToAddresses';
    DelayedInsert = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(SystemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(CustomerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(Code; Rec.Code)
                {
                    Caption = 'Code';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(Address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                }
                field(City; Rec.City)
                {
                    Caption = 'City';
                }
                field(Contact; Rec.Contact)
                {
                    Caption = 'Contact';
                }
                field(PhoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field(TelexNo; Rec."Telex No.")
                {
                    Caption = 'Telex No.';
                }
                field(CountryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code';
                }
                field(PostCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }
                field(County; Rec.County)
                {
                    Caption = 'County';
                }
                field(FaxNo; Rec."Fax No.")
                {
                    Caption = 'Fax No.';
                }
                field(EMail; Rec."E-Mail")
                {
                    Caption = 'E-Mail';
                }
                field(LocationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(ShippingAgentCode; Rec."Shipping Agent Code")
                {
                    Caption = 'Shipping Agent Code';
                }
                field(ShippingAgentServiceCode; Rec."Shipping Agent Service Code")
                {
                    Caption = 'Shipping Agent Service Code';
                }
                field(PlaceOfExport; Rec."Place of Export")
                {
                    Caption = 'Place of Export';
                }
                field(GLN; Rec.GLN)
                {
                    Caption = 'GLN';
                }
            }
        }
    }
}
