Client.destroy_all
Trainer.destroy_all
Session.destroy_all




Client.create([
    {name: "Denis", age: 23},
    {name: "Michael", age: 30}
])

Trainer.create([
    {name: "Arnold Schwarzenegger" ,image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2019%2F08%2Fgettyimages-83149193-2000.jpg",rating: 8.5},
    {name: "Jason Statham",image: "https://etcanada.com/wp-content/uploads/2017/06/19050697_308744662911248_7466767650157232128_n.jpg?quality=80&strip=all&w=605",rating: 7},
    {name: "Sylvester Stallone",image: "https://i.insider.com/565dc87b84307663008b6652?width=1001&format=jpeg" ,rating: 9},
    {name: "Terry Crews",image: "https://manofmany.com/wp-content/uploads/2021/04/terry-crews-workout-diet-plan-2-1200x800.jpg",rating: 9},
    {name: "Jet Li",image: "https://i.pinimg.com/originals/86/c3/1e/86c31e0574e51ac03556f34269e05d3e.jpg" ,rating: 7.5},
    {name: "The Rock",image: "https://cdn.substack.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F3bdb2575-9a92-42f8-8472-bb78c7bd118a_720x405.jpeg",rating: 9},
    {name: "Wesley Snipes",image: "https://www.nme.com/wp-content/uploads/2021/02/Wesley-Snipes-in-Blade-696x442.jpg",rating: 7},
    {name: "Chuck Norris",image: "https://pbs.twimg.com/profile_images/2519797916/xarxmdq5tmxh51ncropr_400x400.jpeg",rating: 10},
    {name: "Chris Hemsworth",image: "https://www.bosshunting.com.au/wp-content/uploads/2020/11/Chris-Hemsworth-Workout-Diet-Plan-1200x640.jpg",rating: 8},
    {name: "Jason Momoa",image: "https://img.cinemablend.com/filter:scale/quill/2/f/4/e/8/a/2f4e8a8372657667a3818959e777a4817657b1e3.jpg?fw=1200",rating: 8},
    {name: "Ronda Rousey",image: "https://i.redd.it/x8qgwktq4s841.jpg",rating: 9},
    {name: "Gal Gadot",image: "https://parade.com/wp-content/uploads/2020/05/Cover-Wonder-Woman-FTR.jpg",rating: 10},
    {name: "The Hulk",image: "https://qph.fs.quoracdn.net/main-qimg-b475b90cf9796e6ad885ea68c3fc1560",rating: 10}
])

Session.create([
    {workout_description: "weight training",date: 5282021,price: 100,client_id: Client.first.id, trainer_id: Trainer.first.id},
    {workout_description: "cardio",date: 5292021,price: 75,client_id: Client.second.id, trainer_id: Trainer.second.id},
    {workout_description: "strength training",date: 5302021,price: 150,client_id: Client.first.id, trainer_id: Trainer.fifth.id}
])

puts "Created clients "