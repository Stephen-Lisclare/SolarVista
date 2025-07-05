query 50260 InventoryByLocation
{
    QueryType = API;
    APIPublisher = 'DHLab';
    APIGroup = 'Inventory';
    APIVersion = 'v2.0';
    EntityName = 'InventoryByLocation';
    EntitySetName = 'InventoryByLocation';

    elements
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            column(ItemNo; "Item No.")
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(Inventory; Quantity)
            {
                Method = Sum;
            }
        }
    }

    var

    trigger OnBeforeOpen()
    begin

    end;
}