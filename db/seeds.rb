
Role.destroy_all
Audition.destroy_all




r_one = Role.create(character_name: "Hamlet")
r_two = Role.create(character_name: "Edna Turnblad")

a_one = Audition.create(actor: "Bobby Brenson", location: "Cincinnati", hired: false, belong_to: r_one.id, phone: 1973800164)
a_two = Audition.create(actor: "Beeby Boonsson", location: "Los Angeles", hired: true, belong_to: r_two.id, phone: 2850203494)
a_three = Audition.create(actor: "Joan McGreel", location: "Los Angeles", hired: true, belong_to: r_one.id)

