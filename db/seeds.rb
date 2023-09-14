
user_a = User.create(name: 'User A', email: 'usera@example.com', role: 'Owner')
user_b = User.create(name: 'User B', email: 'userb@example.com', role: 'Guest')
user_c = User.create(name: 'User C', email: 'userc@example.com', role: 'Guest')

# Create rooms
room_101 = Room.create(room_number: '101', price: 100.0)
room_102 = Room.create(room_number: '102', price: 120.0)

# Create bookings
booking_1 = Booking.create(user: user_b, room: room_101, paid: true, booking_date: Date.today)
booking_2 = Booking.create(user: user_c, room: room_102, paid: false, booking_date: Date.tomorrow)
