page 50262 SVSalesOrderAPI
{
    APIVersion = 'v2.0';
    EntityCaption = 'Sales Order';
    EntitySetCaption = 'Sales Orders';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    EntityName = 'SVSalesOrder';
    EntitySetName = 'SVSalesOrders';
    ODataKeyFields = Id;
    APIPublisher = 'DHLab';
    APIGroup = 'solarvista';
    PageType = API;
    SourceTable = "Sales Order Entity Buffer";
    Extensible = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.Id)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(number; Rec."No.")
                {
                    Caption = 'No.';
                    Editable = false;
                }
                field(externalDocumentNumber; Rec."External Document No.")
                {
                    Caption = 'External Document No.';
                }
                field(orderDate; Rec."Document Date")
                {
                    Caption = 'Order Date';
                }
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                }
                field(customerId; Rec."Customer Id")
                {
                    Caption = 'Customer Id';
                }
                field(customerNumber; Rec."Sell-to Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(customerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Customer Name';
                    Editable = false;
                }
                field(billToName; Rec."Bill-to Name")
                {
                    Caption = 'Bill-to Name';
                    Editable = false;
                }
                field(billToCustomerId; Rec."Bill-to Customer Id")
                {
                    Caption = 'Bill-to Customer Id';
                }
                field(billToCustomerNumber; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(currencyId; Rec."Currency Id")
                {
                    Caption = 'Currency Id';
                }
                field(paymentTermsId; Rec."Payment Terms Id")
                {
                    Caption = 'Payment Terms Id';
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    Caption = 'Payment Terms Code';
                }
                field(shipmentMethodId; Rec."Shipment Method Id")
                {
                    Caption = 'Shipment Method Id';
                }
                field(shipmentMethodCode; Rec."Shipment Method Code")
                {
                    Caption = 'Shipment Method Code';
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                    Editable = false;
                }
                field(shortcutDimension1Code; Rec."Shortcut Dimension 1 Code")
                {
                    Caption = 'Shortcut Dimension 1 Code';
                }
                field(shortcutDimension2Code; Rec."Shortcut Dimension 2 Code")
                {
                    Caption = 'Shortcut Dimension 2 Code';
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    Caption = 'Last Modified Date Time';
                    Editable = false;
                }
            }
        }
    }

    var
        SalesHeader: Record "Sales Header";
        ReleaseSalesDoc: Codeunit "Release Sales Document";

    [ServiceEnabled]
    procedure ReleaseSalesOrder()
    begin
        if not SalesHeader.GetBySystemId(Rec.Id) then
            Error('Sales Order not found.');

        SalesHeader.TestField("Document Type", SalesHeader."Document Type"::Order);

        // Check if order is in Open status before releasing (API shows "Draft" but actual status is 0 = Open)
        if SalesHeader.Status <> SalesHeader.Status::Open then  // Use enum instead of integer
            Error('Sales Order status must be Open to release. Current status: %1', SalesHeader.Status);

        ReleaseSalesDoc.Run(SalesHeader);
        SalesHeader.Modify(true);

    end;

    [ServiceEnabled]
    procedure ReopenSalesOrder()
    begin
        if not SalesHeader.GetBySystemId(Rec.Id) then
            Error('Sales Order not found.');

        SalesHeader.TestField("Document Type", SalesHeader."Document Type"::Order);

        // Check if order is in Released status before reopening
        if SalesHeader.Status <> SalesHeader.Status::Released then  // Use enum instead of integer
            Error('Sales Order status must be Released to reopen. Current status: %1', SalesHeader.Status);

        ReleaseSalesDoc.Reopen(SalesHeader);
        SalesHeader.Modify(true);

    end;
}
