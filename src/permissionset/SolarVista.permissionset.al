permissionset 50260 SolarVista
{
    Assignable = true;
    Caption = 'SolarVista API Access';
    Permissions =
        query "InventoryByLocation" = X,
        page "SVShipToAddressAPI" = X,
        tabledata "Item Ledger Entry" = R,
        tabledata Item = R,
        tabledata "Ship-to Address" = RIMD,
        tabledata User = R;
}