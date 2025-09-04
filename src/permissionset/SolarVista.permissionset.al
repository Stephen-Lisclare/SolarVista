permissionset 50260 SolarVista
{
    Assignable = true;
    Caption = 'SolarVista API Access';
    Permissions =
        query "InventoryByLocation" = X,
        page "SVShipToAddressAPI" = X,
        page "SVSalesOrderAPI" = X,
        codeunit "Release Sales Document" = X,
        tabledata "Item Ledger Entry" = R,
        tabledata Item = R,
        tabledata "Ship-to Address" = RIMD,
        tabledata "Sales Header" = RIMD,
        tabledata "Sales Order Entity Buffer" = RIMD,
        tabledata User = R;
}