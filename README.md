# SolarVista Integration

Additional fields and functions to support SolarVista integration.

## API Endpoints

### Ship-to Address API

The Ship-to Address API provides full CRUD operations for managing ship-to addresses within the SolarVista extension.

**Endpoint:** `/api/dhlab/solarvista/v2.0/ShipToAddresses`

**Supported Operations:**
- **GET** - Retrieve ship-to addresses
- **POST** - Create new ship-to address
- **PUT** - Update existing ship-to address
- **DELETE** - Delete ship-to address

**Key Fields:**
- `SystemId` - Unique system identifier (read-only)
- `CustomerNo` - Customer number
- `Code` - Address code
- `Name` - Address name
- `Address` - Primary address
- `Address2` - Secondary address
- `City` - City
- `Contact` - Contact person
- `PhoneNo` - Phone number
- `CountryRegionCode` - Country/region code
- `PostCode` - Postal code
- `LocationCode` - Location code
- `ShippingAgentCode` - Shipping agent code
- `GLN` - Global Location Number

**Authentication:**
Requires appropriate permissions through the SolarVista permission set.

**Example Usage:**
```http
GET /api/dhlab/solarvista/v2.0/ShipToAddresses
Authorization: Bearer {access_token}
```

## Installation

1. Install the SolarVista extension
2. Assign the SolarVista permission set to users who need API access
3. The API will be available at the configured endpoint

## Dependencies

- Business Central 18.0 or later
- Runtime 13.0 or later
