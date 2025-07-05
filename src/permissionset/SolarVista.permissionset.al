permissionset 50260 SolarVista
{
    Assignable = true;
    Caption = 'SolarVista API Access';
    Permissions =
        query "InventoryByLocation" = X,
        tabledata "Item Ledger Entry" = R,
        tabledata Item = R,
        tabledata "User" = R;
}