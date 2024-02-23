// Jennifer Guajardo

VAR doorCount = 0 // For the Mr. Cube interaction.
VAR chaosCount = 0 // To judge the moral character of the player.
VAR pickedUpGayAgenda = false // If you picked up the Gay Agenda™

// I misread the Homework and confused sitches with knots. I will not be renaming them because I'm already knee-deep in this thing.
// So please, if something says "Knot" take it with a grain of salt.
// I guess anything labeled stitches are now bonus knots.

-> ShapelandNeighborHood // I know this is a crude way of fixing my mistake. TOO BAD!

== ShapelandNeighborHood == // Knot. I converted all the things labeled "Knots" into stiches under this thing.

You are the camera holder, and you live within the magical world of shapeland.
Alas, since you are the only one who can see, due to having a lense, the citizens rely on YOU for their "Triangle Delieveries."

* [Wake Up] You wake up, ready to start the day!
- What will you do?

* [Go to work.] You leave your cube-shaped domicle, delivery-cap on your head, and triangle in-tow.

// This is to the rest of the content.
    There's a road ahead of you.
    Near your house, there's a cliff.
    * * [Walk on the road.] You walk along the one road. The sky is magnificent muted-gray, and the five second tune is incessantly looping in your ear.
        ->Knot0

// I initially thought this was what was meant by "loop," but then the discord message clarified it.
* * [Walk off a cliff.] You walk off a cliff.
    * * * [Fall.] You fall down, perpetually, in a gray void.
        You keep falling.
        -> Knot9

= Knot0 
You make your way through the Shapeland's neighborhood.

You see the house of Mr. Cube up ahead.

You also see a stray copy of the Gay Agenda™ blowing in the breeze. // Remember, I'm trans, lol.

+ [Concentrate On Your Job] // Sticky choice demonstration.
    -> Knot1

* [Pick up the Gay Agenda™] Instead of focusing on your job (you slacker), you focus your attention on catching the little booklet, which you promptly succeed in. // I genuinely couldn't think of anything else.
    ~ pickedUpGayAgenda = true // Saving this for conditional choices later.
    * * [Flip to a random page.] You flip to a random page in the booklet.
            It says, "Anything that involves a genderbend will automatically be gay in some way."
                * * * [???] You don't understand why this is written, but then, out of nowhere, you hear the voice of a really cool person, whom you, somehow, instinctually know to be "Jennifer."
                    She says, "This is a reference to one of Sam's stories in Gone Home, where one of the characters changed genders due to being captured by the Amazons."
                    "I thought it was kinda cool, because it felt really reflective of my own queer experience. Experimentation with written fiction allows for a safe space for that kind of exploration of the self, due to how one can easily project onto the characters."
                    * * * * [Contemplate Her Words] You think about what this mysterious "Jennifer" has said. Honestly, every fiber of your being is telling you that she is really smart and cool. There is without a doubt in your mind that you think this is a PhD-level observation on the nature of gender.
                        * * * * * [Go back to work.] Alas, you cannot experience the grace of the mysterious "Jennifer" forever, so you re-focus on your deliveries.
                            -> Knot0

= Knot1
// Fallback demonstration
// This piece of s*** software crashed on me here, so I had to take a picture of code for this Knot and re-type it all! Godot somehow ran better than this!
You are in front of Mr. Cube's house.
    * [Knock on the Door] You knock on the door.
        {doorCount > 0: But there's STILL no answer. Your boss wouldn't like it if a triangle isn't delievered. You feel nervous, and are afraid of wasting company time. | No one answers, though.}
        ~ doorCount += 1
        -> Knot1
    * [Ring the Doorbell] You ring the doorbell.
        {doorCount > 0: But there's STILL no answer. Your boss wouldn't like it if a triangle isn't delievered. You feel nervous, and are afraid of wasting company time. | No one answers, though.}
        ~ doorCount += 1
        -> Knot1
    * -> Stich1
= Stich1
~ chaosCount += 1 // For doing a morally reprehensable action.
* [Throw the triangle through his window!] Out of options, you toss a triangle into Mr. Cube's window! The glass shatters on impact!
    Your efforts weren't in vain, however, as you hear the triangle land on the living room floor.
    // Good, "choose" violence.
    * * [Be proud of your ingenuity.] An overwhelming amount of pride swells through you. You have proven yourself to be an upstanding member of society and a good employee of Triangle Mailing Services.
        Alas, Mr. Cube doesn't seem to appricate your hard work.
        * * * [Run Away] You run away!
        * * * [Beat Him to Death] Oi, bruv! You think I'm going to let you commit murder!? You should be ashamed of yourself.
        
            * * * * [...] However, you are absolutely right.
            ~ chaosCount += 1 // For doing a morally reprehensable action.
            You do succeed in beating him, but not to death!
            Death itself doesn't exist, for there are no Health Points or lives programmed into Shapeland.
            Out of sheer embarrasment for entertaining this possibility, you run away.
        - You succesfully escape Mr. Cube!
            
        - -> Knot2 // Quick lead to Knot2

= Knot2 
// Shuffle demonstration.
You go towards next house you have to deliver to, and you come across "Plane's Bridge."
Plain himself says "Hello!" He doesn't have a face, but you can tell he's in a good mood.
However, this idiot stole your triangle back in high school.
What will you do?
+ [Shove him off the bridge!] You attempt to shove him off the bridge!
    ~ chaosCount += 1 // For doing a morally reprehensable action.
    {~And you succeed!->Knot3|But you fail! He tosses you off instead, and you fall into the void. ->Knot9}
+ [Be the bigger shape.] You return his friendly gesture, being kind enough to forgive past transgressions.
    You leave the scene disgruntled, but confident you did the right thing.

-> Knot4
= Knot3 
You hear him scream as he falls down.
You do a little victory dance!
* [Get Back to Work] As intoxicating as the rush of revenge is, you have to get back to work.
->Knot4
= Knot4
As you walk towards Mrs. Sphere's house, your next delivery, you find a newspaper stand that says "Evil Weekly."
It seems like only people who done evil things can take papers.
What will you do?
// I put the conditional choices here.
+ {chaosCount > 2} [Take a paper.] Given that you've proven yourself to be evil enough, you take a paper out of there.
    You've now learned how to build a bomb out of peanut butter.
        ~ chaosCount += 1 // For doing a morally reprehensable action.
+ {pickedUpGayAgenda} [Shove the Gay Agenda™ in there!] You force the Gay Agenda™ into the the Evil Weekly newspaper stand.
    Somehow, it magically turns into a diarama of Freddie Mercury riding a bicycle. // This is a reference to that supposedly being his "coming out" song. 
+ [Kick it.] You kick the stand to let off some steam!
    Nothing happened, but you feel good.
+ [Ignore it.] You ignore the "Evil Weekly" stand.
- You then approach on Mrs. Sphere's door.
-> Knot5
= Knot5 
There's no doorbell here, so you knock.
You hear a voice! Mrs. Sphere says, "I'll be out in just a minute!
* [Acknowledge] You acknowledge what she says. (This is suppose to lead to a fallback choice.)
    ->Knot5
* -> Knot7
= Knot6 
~ doorCount += 1
+ [Wait.] You wait for {1|2|3|4|5?|maybe 6| probably 7| defintely around 8| somewhere between 9-11| almost certainly 20| possbily -1| "Taco"| "Hippo"|"Amount of time it takes for Silksong to release"} minute(s).
-> Knot6
+ [Kick a pebble.] You kick a pebble. {!It makes a satisfactory clicking noise.|You wonder if the fridge light stays on when you shut it.}
-> Knot6
//
+ {doorCount > 5} [Break the door down.] You break the door down!
    Alas, Mrs. Sphere calls the police on you, and you get arrested for breaking and entering.
    -> END
= Knot7 
* [Patiently wait for her.] You patiently wait for Mrs. Sphere to answer, trying to suppress your violent thoughts, like any quirky service worker.
-> Knot6
= Knot8 
Welcome to ultima.
-> END
= Knot9 
Why did you do this?
* [Keep falling.] -> Stich0
= Stich0
+ [Contemplate Your Life Choices] You begin to contemplate your life choices, and regret what led you to your current predicament.
    + + [...]You keep falling in the grey void.
        Alas, there's nothing to fall on.
        It seems like you'll be falling forever.
        + + + [Continue Falling] You continue to fall.
        // Okay, so I found a way to put a cycle here.
        // A good way of showcasing the player character's regret.
            You think about {&your job, and how you can never return.|your secret love affair with the boss's husband.|Reeday, your favorite day of the week.|the stove. You wonder if you left it on.|how annoying that little background tune is. It won't stop playing.|why you were delivering triangles in the first place. What do shapes even do with them? Are they food? Newspapers? Amazon-like packages?}
            -> Stich0
