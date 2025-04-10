-- SQL: Create a table to store e-commerce orders as JSONB
CREATE TABLE ecommerce_orders (
  id SERIAL PRIMARY KEY,
  order_data JSONB
);

-- SQL: Insert statements for each JSON document
INSERT INTO ecommerce_orders (order_data) VALUES
  ('{
    "orderId": "ORD1001",
    "userId": "user_001",
    "items": [
      { "product": "Mechanical Keyboard", "qty": 1, "price": 99.99 },
      { "product": "Mousepad XL", "qty": 2, "price": 14.50 }
    ],
    "total": 128.99,
    "status": "shipped",
    "shippedAt": "2024-03-01T09:00:00Z"
  }'),
  ('{
    "orderId": "ORD1002",
    "userId": "user_002",
    "items": [
      { "product": "USB-C Cable", "qty": 3, "price": 9.99 }
    ],
    "total": 29.97,
    "status": "processing",
    "shippedAt": null
  }'),
  ('{
    "orderId": "ORD1003",
    "userId": "user_003",
    "items": [
      { "product": "Laptop Stand", "qty": 1, "price": 49.99 },
      { "product": "Bluetooth Mouse", "qty": 1, "price": 24.99 }
    ],
    "total": 74.98,
    "status": "delivered",
    "shippedAt": "2024-02-25T14:30:00Z"
  }'),
  ('{
    "orderId": "ORD1004",
    "userId": "user_004",
    "items": [
      { "product": "Noise Cancelling Headphones", "qty": 1, "price": 199.99 }
    ],
    "total": 199.99,
    "status": "cancelled",
    "shippedAt": null
  }'),
  ('{
    "orderId": "ORD1005",
    "userId": "user_005",
    "items": [
      { "product": "Monitor 27\"", "qty": 2, "price": 229.99 }
    ],
    "total": 459.98,
    "status": "shipped",
    "shippedAt": "2024-03-04T11:15:00Z"
  }'),
  ('{
    "orderId": "ORD1006",
    "userId": "user_006",
    "items": [
      { "product": "Webcam 1080p", "qty": 1, "price": 59.99 },
      { "product": "Ring Light", "qty": 1, "price": 39.99 }
    ],
    "total": 99.98,
    "status": "processing",
    "shippedAt": null
  }'),
  ('{
    "orderId": "ORD1007",
    "userId": "user_007",
    "items": [
      { "product": "Ergonomic Chair", "qty": 1, "price": 329.99 }
    ],
    "total": 329.99,
    "status": "shipped",
    "shippedAt": "2024-03-02T16:45:00Z"
  }'),
  ('{
    "orderId": "ORD1008",
    "userId": "user_008",
    "items": [
      { "product": "Wireless Charger", "qty": 2, "price": 19.99 },
      { "product": "Smartphone Case", "qty": 1, "price": 14.99 }
    ],
    "total": 54.97,
    "status": "delivered",
    "shippedAt": "2024-02-28T08:00:00Z"
  }'),
  ('{
    "orderId": "ORD1009",
    "userId": "user_009",
    "items": [
      { "product": "Portable SSD 1TB", "qty": 1, "price": 129.99 }
    ],
    "total": 129.99,
    "status": "pending",
    "shippedAt": null
  }'),
  ('{
    "orderId": "ORD1010",
    "userId": "user_010",
    "items": [
      { "product": "Desk Lamp", "qty": 1, "price": 39.99 },
      { "product": "Cable Organizer", "qty": 2, "price": 8.99 }
    ],
    "total": 57.97,
    "status": "shipped",
    "shippedAt": "2024-03-03T13:20:00Z"
  }');


  , ('{
    "orderId": "ORD1011",
    "userId": "user_011",
    "items": [
      { "product": "Smartwatch", "qty": 1, "price": 149.99 }
    ],
    "total": 149.99,
    "status": "shipped",
    "shippedAt": "2024-03-05T10:00:00Z"
  }')
  , ('{
    "orderId": "ORD1012",
    "userId": "user_012",
    "items": [
      { "product": "Tablet Case", "qty": 2, "price": 25.00 }
    ],
    "total": 50.00,
    "status": "delivered",
    "shippedAt": "2024-03-04T09:00:00Z"
  }')
  , ('{
    "orderId": "ORD1013",
    "userId": "user_013",
    "items": [
      { "product": "Wireless Keyboard", "qty": 1, "price": 79.99 }
    ],
    "total": 79.99,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1014",
    "userId": "user_014",
    "items": [
      { "product": "USB Hub", "qty": 2, "price": 12.50 }
    ],
    "total": 25.00,
    "status": "shipped",
    "shippedAt": "2024-03-06T14:00:00Z"
  }')
  , ('{
    "orderId": "ORD1015",
    "userId": "user_015",
    "items": [
      { "product": "Fitness Tracker", "qty": 1, "price": 89.99 }
    ],
    "total": 89.99,
    "status": "cancelled",
    "shippedAt": null
  }')

  , ('{
    "orderId": "ORD1016",
    "userId": "user_016",
    "items": [
      { "product": "Bluetooth Speaker", "qty": 1, "price": 59.99 }
    ],
    "total": 59.99,
    "status": "shipped",
    "shippedAt": "2024-03-05T13:00:00Z"
  }')
  , ('{
    "orderId": "ORD1017",
    "userId": "user_017",
    "items": [
      { "product": "Laptop Sleeve", "qty": 2, "price": 18.50 }
    ],
    "total": 37.00,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1018",
    "userId": "user_018",
    "items": [
      { "product": "Stylus Pen", "qty": 3, "price": 14.99 }
    ],
    "total": 44.97,
    "status": "delivered",
    "shippedAt": "2024-03-06T08:30:00Z"
  }')
  , ('{
    "orderId": "ORD1019",
    "userId": "user_019",
    "items": [
      { "product": "Gaming Headset", "qty": 1, "price": 89.99 }
    ],
    "total": 89.99,
    "status": "shipped",
    "shippedAt": "2024-03-07T10:45:00Z"
  }')
  , ('{
    "orderId": "ORD1020",
    "userId": "user_020",
    "items": [
      { "product": "Drawing Tablet", "qty": 1, "price": 199.99 }
    ],
    "total": 199.99,
    "status": "cancelled",
    "shippedAt": null
  }')

  , ('{
    "orderId": "ORD1021",
    "userId": "user_021",
    "items": [
      { "product": "LED Strip Lights", "qty": 1, "price": 29.99 }
    ],
    "total": 29.99,
    "status": "delivered",
    "shippedAt": "2024-03-06T18:10:00Z"
  }')
  , ('{
    "orderId": "ORD1022",
    "userId": "user_022",
    "items": [
      { "product": "USB Extension Cable", "qty": 2, "price": 7.99 }
    ],
    "total": 15.98,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1023",
    "userId": "user_023",
    "items": [
      { "product": "Surge Protector", "qty": 1, "price": 34.99 }
    ],
    "total": 34.99,
    "status": "shipped",
    "shippedAt": "2024-03-06T07:45:00Z"
  }')
  , ('{
    "orderId": "ORD1024",
    "userId": "user_024",
    "items": [
      { "product": "Monitor Riser", "qty": 1, "price": 45.00 }
    ],
    "total": 45.00,
    "status": "delivered",
    "shippedAt": "2024-03-06T11:00:00Z"
  }')
  , ('{
    "orderId": "ORD1025",
    "userId": "user_025",
    "items": [
      { "product": "Gaming Mouse", "qty": 1, "price": 59.99 },
      { "product": "RGB Mousepad", "qty": 1, "price": 24.99 }
    ],
    "total": 84.98,
    "status": "delivered",
    "shippedAt": "2024-03-02T10:32:00Z"
  }')
-- Continuing from ORD1026 to ORD1050
  , ('{
    "orderId": "ORD1026",
    "userId": "user_026",
    "items": [
      { "product": "HDMI Cable", "qty": 2, "price": 11.99 }
    ],
    "total": 23.98,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1027",
    "userId": "user_027",
    "items": [
      { "product": "External Hard Drive", "qty": 1, "price": 89.99 }
    ],
    "total": 89.99,
    "status": "shipped",
    "shippedAt": "2024-03-08T11:30:00Z"
  }')
  , ('{
    "orderId": "ORD1028",
    "userId": "user_028",
    "items": [
      { "product": "Desk Mat", "qty": 1, "price": 25.99 },
      { "product": "USB Fan", "qty": 1, "price": 14.99 }
    ],
    "total": 40.98,
    "status": "delivered",
    "shippedAt": "2024-03-06T13:10:00Z"
  }')
  , ('{
    "orderId": "ORD1029",
    "userId": "user_029",
    "items": [
      { "product": "Smart Light Bulb", "qty": 3, "price": 12.99 }
    ],
    "total": 38.97,
    "status": "pending",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1030",
    "userId": "user_030",
    "items": [
      { "product": "Phone Mount", "qty": 1, "price": 19.99 },
      { "product": "Charging Dock", "qty": 1, "price": 29.99 }
    ],
    "total": 49.98,
    "status": "shipped",
    "shippedAt": "2024-03-08T15:00:00Z"
  }')
  , ('{
    "orderId": "ORD1031",
    "userId": "user_031",
    "items": [
      { "product": "Adjustable Laptop Stand", "qty": 1, "price": 69.99 }
    ],
    "total": 69.99,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1032",
    "userId": "user_032",
    "items": [
      { "product": "Bluetooth Transmitter", "qty": 1, "price": 24.99 }
    ],
    "total": 24.99,
    "status": "shipped",
    "shippedAt": "2024-03-07T12:15:00Z"
  }')
  , ('{
    "orderId": "ORD1033",
    "userId": "user_033",
    "items": [
      { "product": "Laptop Cooling Pad", "qty": 1, "price": 29.99 }
    ],
    "total": 29.99,
    "status": "cancelled",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1034",
    "userId": "user_034",
    "items": [
      { "product": "USB Desk Fan", "qty": 1, "price": 14.99 },
      { "product": "Keyboard Wrist Rest", "qty": 1, "price": 17.99 }
    ],
    "total": 32.98,
    "status": "shipped",
    "shippedAt": "2024-03-06T10:45:00Z"
  }')
  , ('{
    "orderId": "ORD1035",
    "userId": "user_035",
    "items": [
      { "product": "Standing Desk Converter", "qty": 1, "price": 149.99 }
    ],
    "total": 149.99,
    "status": "delivered",
    "shippedAt": "2024-03-05T09:00:00Z"
  }')
-- Final batch through ORD1050
  , ('{
    "orderId": "ORD1036",
    "userId": "user_036",
    "items": [
      { "product": "Smartphone Tripod", "qty": 1, "price": 22.49 },
      { "product": "Phone Lens Kit", "qty": 1, "price": 17.50 }
    ],
    "total": 39.99,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1037",
    "userId": "user_037",
    "items": [
      { "product": "Gaming Controller", "qty": 1, "price": 59.99 }
    ],
    "total": 59.99,
    "status": "shipped",
    "shippedAt": "2024-03-07T10:30:00Z"
  }')
  , ('{
    "orderId": "ORD1038",
    "userId": "user_038",
    "items": [
      { "product": "USB Sound Card", "qty": 1, "price": 19.99 }
    ],
    "total": 19.99,
    "status": "delivered",
    "shippedAt": "2024-03-06T16:00:00Z"
  }')
  , ('{
    "orderId": "ORD1039",
    "userId": "user_039",
    "items": [
      { "product": "Wireless Presenter", "qty": 1, "price": 34.95 }
    ],
    "total": 34.95,
    "status": "cancelled",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1040",
    "userId": "user_040",
    "items": [
      { "product": "USB Webcam Cover", "qty": 3, "price": 3.99 }
    ],
    "total": 11.97,
    "status": "shipped",
    "shippedAt": "2024-03-06T12:45:00Z"
  }')
  , ('{
    "orderId": "ORD1041",
    "userId": "user_041",
    "items": [
      { "product": "Wireless Router", "qty": 1, "price": 129.99 }
    ],
    "total": 129.99,
    "status": "delivered",
    "shippedAt": "2024-03-08T10:20:00Z"
  }')
  , ('{
    "orderId": "ORD1042",
    "userId": "user_042",
    "items": [
      { "product": "Portable Monitor", "qty": 2, "price": 179.99 }
    ],
    "total": 359.98,
    "status": "shipped",
    "shippedAt": "2024-03-06T09:10:00Z"
  }')
  , ('{
    "orderId": "ORD1043",
    "userId": "user_043",
    "items": [
      { "product": "Ergonomic Mouse", "qty": 1, "price": 39.99 },
      { "product": "Keyboard Tray", "qty": 1, "price": 49.99 }
    ],
    "total": 89.98,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1044",
    "userId": "user_044",
    "items": [
      { "product": "Streaming Microphone", "qty": 1, "price": 119.99 }
    ],
    "total": 119.99,
    "status": "shipped",
    "shippedAt": "2024-03-08T11:00:00Z"
  }')
  , ('{
    "orderId": "ORD1045",
    "userId": "user_045",
    "items": [
      { "product": "Wireless Charging Pad", "qty": 1, "price": 29.99 }
    ],
    "total": 29.99,
    "status": "delivered",
    "shippedAt": "2024-03-07T14:30:00Z"
  }')
  , ('{
    "orderId": "ORD1046",
    "userId": "user_046",
    "items": [
      { "product": "4K HDMI Splitter", "qty": 1, "price": 34.99 }
    ],
    "total": 34.99,
    "status": "cancelled",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1047",
    "userId": "user_047",
    "items": [
      { "product": "Bluetooth Headphones", "qty": 1, "price": 89.99 }
    ],
    "total": 89.99,
    "status": "shipped",
    "shippedAt": "2024-03-06T17:45:00Z"
  }')
  , ('{
    "orderId": "ORD1048",
    "userId": "user_048",
    "items": [
      { "product": "Streaming Light Kit", "qty": 1, "price": 99.99 }
    ],
    "total": 99.99,
    "status": "processing",
    "shippedAt": null
  }')
  , ('{
    "orderId": "ORD1049",
    "userId": "user_049",
    "items": [
      { "product": "USB-C Hub Docking Station", "qty": 1, "price": 139.99 }
    ],
    "total": 139.99,
    "status": "shipped",
    "shippedAt": "2024-03-06T14:10:00Z"
  }')
  , ('{
    "orderId": "ORD1050",
    "userId": "user_050",
    "items": [
      { "product": "Phone Tripod", "qty": 1, "price": 22.49 },
      { "product": "Wireless Earbuds", "qty": 2, "price": 69.99 }
    ],
    "total": 162.47,
    "status": "processing",
    "shippedAt": null
  }');
