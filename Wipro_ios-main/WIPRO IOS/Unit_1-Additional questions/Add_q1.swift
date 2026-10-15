
var itemPrice = 450.0
var quantity = 3

// 1.1 Calculate subtotal
var subtotal = itemPrice * Double(quantity)
print("Subtotal:", subtotal)

// 1.2 Calculate discount using ternary operator
var hasCoupon = true

var discount = (hasCoupon && subtotal > 1000) ? subtotal * 0.10 : 0.0
print("Discount:", discount)

// 1.3 Calculate GST and total
var discountedAmount = subtotal - discount
var gst = discountedAmount * 0.18
var total = discountedAmount + gst

print("GST:", gst)
print("Total Bill:", total)

// 1.4 Split bill between 4 people
var share = total / 4.0
print("Each Person's Share:", share)

// 1.5 Break 1234 rupees into hundreds and remainder
var amount = 1234
var hundreds = amount / 100
var remainder = amount % 100

print("Hundreds:", hundreds)
print("Remainder:", remainder)
