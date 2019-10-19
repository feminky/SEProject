
VAR intel = 0
-> Knot
 === function raise(ref x)
 	~ x = x + 1
=== Knot
#IMAGE: manor.jpg
Welcome to the Winchester estate where once a year prestigious guests attend a yearly ball. Soothing sounds that make the ocean calm, glamorous light that would make the sun jealous, food dishes made from the finest ingredients across the world. Yes, this is a night no one would want to miss, that is until now.

* [Begin Story]
(Clashing noises from a rather upset crowd)
???: May I have your attention please. Good evening ladies and gentlemen. I ask that we stay calm. 

It is to my greatest displeasure that a murder has occurred within the premises. Duke Edgaras has been found dead in the study room and one of you, the guests killed him. I would ask that nobody leaves the premises until the killer is caught. 

Duke Nero: and who might you be.

???: ooh how rude of me. I am Detective Tobi. A pleasure to meet you all.

* *[Investigation Begins]

Detective Tobi: Constantine please make sure they are no disturbances.

Constantine: but sir, we can interrogate everyone. they are in the hundreds sir.

Detective Tobi: you are right Constantine. Follow me Constantine, lets go investigate the crime scene. 

Constantine: Yes sir.

    - Detective Tobi: Now where do i start.
        #IMAGE: studyroom.jpg
        * ->investigate
    = make_observation
        * 'Observe body'
            -> observebody
        * 'Observe lips'
            -> observelips
        * 'Observe clothing'
            -> observeclothing
        + [Search the study room.]
            -> studyroom
    
    =investigate
        * [Investigate the duke's body.]
        ~ raise(intel)
            -> dukesbody
        
        * [Search the study room.]
            -> studyroom
        
            
    = dukesbody
        - Detective Tobi: The body is still warm, so the murder happened recently.
        - Constantine: Sir, can i ask why you beleive this is a murder.
        - Detective Tobi: Duke Edgaras is one of the wealthiest men in Gaia, why would he kill himself.
        - Constantine: I heard from a bloke working in his mansion that the duke had been leaning close to the bottle for a while now and been crying for hours at night.
        - Detective Tobi: Hmmmm, but why would you believe anything from someone you call a bloke.
        - Constantine: Uh... (looks away embarrassingly)
                ~ raise(intel)

        -> make_observation
      
    = observelips
        - The Detective moves closer to the duke's body, leaning a bit forward to observe the lips. 
        - Detective Tobi: Lips are as dry as a cactus.
        - Constantine: Really odd one sir, considering the amount of drinks that have been made available at the party.
        - Detective Tobi: and who supplied the drinks for this party Sergent.
        - Constantine: The Viceroy of the grape field, Duke Pierre.
        - Detective Tobi: Interesting.
                ~ raise(intel)

            -> make_observation   
            
     = observebody
        - Detective Tobi observes the duke's body lying on the seat. Caught by the attention of the shiny jewellry on the duke's hand, he proceeds to come in contact with the duke's hands.
        - Detective Tobi: Constantine, how warm do you think this room is?
        - Constantine: It's a bit chilly tonight sir and with the fire place currently lit in this room Sir, I'd say it's the perfect type of warm to have some company around, if you know what I mean Sir.
        - Detective Tobi: No I don't Sergent. (sternly eyes the Sergent)
        - Constantine: Sorry Sir. (bows his head down)
        - Detective Tobi: (takes in a deep breath and breathes out) His palms are sweaty and if I am right (places his hand behind the duke's neck), the back of his neck would be also. (takes his hand of the duke's neck and rubs his finger tips against each other). Hmmm, Interesting.
                ~ raise(intel)

            -> make_observation
            
     = observeclothing
        - Constantine: Now that is what I call a suit. Hey Detective, when do you think I could get a raise. 
        - Detective Tobi: Why this sudden question Sergent.
        - Constantine: I need a new suit to impress the lads and ladies.
        - Detective Tobi: You know what, after the investigation you can have the duke's current suit. (smiles)
        - Constantine: But Sir, that's evidence, they won't allow me ... wait a minute, you are being sarcastic again sir.
        - Detective Tobi: Of course not, Sergent (smiles mischievously). Now back to the inves.... (eyes squint a little and focus on a white object barley sticking out of the inner parts of the jacket.).
        - Constantine: Hmmmm Investigation Sir.
        - Detective Tobi: What do we have here. (places his hand into the jacket and btings out a white piece of paper)
        - Constantine: What could that be Sir.
        - Detective Tobi: It's a document stating that all of the duke's assets would be sold. 
        - Constantine: Why would he do that. 
        - Detective Tobi: By the looks the deal has not gone through yet but still what would drive him to do that.
                ~ raise(intel)

            -> make_observation   
    


    = studyroom
        - Detective Tobi: Let's take a look around shall we.
        - The Detective walks around the room while also paying attention to every corner of the room.
        - Constantine: (picks up a cup of wine from the table) I am seriously perched.
        - Detective Tobi: What in God's name are you doing Sergent. 
        - Constantine: Sir?
        - Detective Tobi: You are on duty Sergent. 
        - Constantine: It's just a cup of wine to help clear the throat Sir.
        - Detective Tobi: (gives the sergent a stern look).
        - Constantine: All right Sir. (slugglishly drops the cup of win back on the table).
        - Detective Tobi: Compose yourself Sergent.
        - Constantine: Yes Sir. (clumsly throws some books on the floor while trying to salute). Sorry Sir. (quickly tries to pick up the books when a piece of paper drops on the floor)
        - Detective Tobi: Hold on a minute, what is that.
        - Constantine: It's the picture of  a lady sir. 
        - Detective Tobi: and who might she be.
        - Constantine: There is something written at the bak sir.
        - Detective Tobi: (flipping the image around and reading out) 'To my dearest, love you always, see you soon'.
        - Constantine: but that is not his wife Sir.
        - Detective Tobi: (sigh) this is turning out to be a bit complex for my taste.
            * 'Investigate the duke's body.'
                -> dukesbody
            * 'Announce Suspects'
                -> suspects
                

    = suspects
        - Detective Tobi: I guess i have my suspects now. 
        - Constantine: and who might they be Sir.
        - Detective Tobi: the Wife, the Viceroy, and the business partner.
        - Constantine: What a list Sir. What next Sir.
        - Detective Tobi: I will interrogate them one after the other, send the rest home.
        - Constantine: Who do you want to interrogate first Sir.
        - Detective Tobi: Let's see:
            -> interrogatesuspects
                
    = interrogatesuspects
            * Wife 
                -> wife
            * Viceroy
                -> viceroyinterrogate
            * Business Parnter
                -> businterogate
            * Announce killer
                ->choosekiller
        
    = wife
        - Detective Tobi: Welcome Mam. I am truely sorry for your loss.
        - Wife: Thank you Detective but what is all this about.
        - Detective Tobi: I just have a few questions to aks. I hope you would be ok with this.
        - Wife: Argh. Let's just get this over with.
            -> wifeinterrogate
   
    = wifeinterrogate
        * [Ask about marriage]
            ->askmarraige
        * [Ask about Rumors]
            ->askrumors
        * Interrogate Others.
                -> interrogatesuspects
    
    = askmarraige
        -  Detective Tobi: Did you have any issues in your Marriage Mam?
        - Wife: Whose marriage is not rocky. We had issues, yes but we always resolved it and moved forward.
        - Detective Tobi: True, although I found this picture in the study room, who might that be Mam?
        - Wife: My husband had his distractions, but as long as he did not bring in a child, I overlooked them.
        - Detective Tobi: Hmmm. Some would also call your husband a tyrant, what are your thoughts on that.
        - Wife: Now Detective, don't beleive all you hear.
                ~ raise(intel)

        * * ->wifeinterrogate
            
    = askrumors
        - Detective Tobi: Rumors have it that your husband was crying at night, how thru was that Mam?
        - Wife: Hmmmm, I never took notice. I have been away on a business trip.
        - Detective Tobi: Hmmm, ok.
        - As you interrogate her, you notice that her gaze turns a bit to a picture of the Duke and his business partner
        * * ->wifeinterrogate
        
        
    =viceroyinterrogate
        * [Ask about wine]
            ->wineinter 
        * Interrogate Others.
                -> interrogatesuspects
                
    =wineinter
        - Detective Tobi: It must always be an honor for you to supply the drinks during this event.
        - Viceroy: It's a good thing I beleive.
        - Detective Tobi: But I am a bit concerned about you Viceroy. It's in the news that the Duke would soon acquire your properties, yet you honor the event.
        - Viceroy: We already came to an understanding about this until this unfortunate event.
        - Detective Tobi: An unfortunate event that works for you.
        - Viceroy: Are you insinuating something Detective?
        - Detective Tobi: oooh nothing. I was just stating that since the Duke is dead, you dont have to lose all your property. I would just say you are lucky and that luck did not extend to the Duke.
                ~ raise(intel)

        * * ->viceroyinterrogate
    
    =businterogate
        * [Ask about business]
            ->businter 
        *[Go for bathroom break]
            ->wifeinter
        * Interrogate Others.
                -> interrogatesuspects
    
    
    =businter
        - Detective Tobi: Good evening sir, so sorry about the news of your business partner.
        - Business Partner: It truely is a sad news.
        - Detective Tobi: To others yes, but not sure about you. The story about you and the Duke, how both of you started together and he decided to claim it all for himself and give you the crumbs. Revenge would have been sweet for you.
        - Business Partner: sigh. Detective this is how business works. The smart ones win. It's that simple.
        - Detective Tobi: so you are not bothered with the crumbs.
        - Business Partner: Truthfully speaking, no. It's all vanity.
        - Detective Tobi: Then what is gold to you.
        - Business Partner: (stares at the table). Love 
        * *->businterogate
        
    =wifeinter
        - 'The Detective tries to take a bathroom break and while going back to the interrogate room notices an unsettled business partner talking to the wife'
                ~ raise(intel)

        * *->businterogate
   
    =choosekiller
        #IMAGE: killer.jpg
        - Detective Tobi: With all theses, the killer must be:
            * Wife
                ->wifearrest
            * Viceroy
                ->vicarrest
            * business partner
                ->busarrest
           
            * { intel >= 5} [all of them] all of them
                ->arrestornot
            
    =wifearrest
        - 'You arrest the wife based on the fact that she was jealous and was tired of the Duke cheaitng. A good motive but has Justice really been served?'
            ->DONE
    =vicarrest
        - 'You arrest the Viceroy because you believe that he was not happy about the Duke claiming his lands. A good motive but has Justice really been served?'
            ->DONE
    =busarrest
        - 'You arrest the business partner because you believe that he was not happy with what the Duke to him and wanted revenge. A good motive but has Justice really been served?'
            ->DONE
            
    =arrestornot
        - Detective Tobi: The killer was not just one of you but you all. The Duke was not a good character, treating you all badly and revenge is understandable. He cheated on you, his wife and also beat you when he belives you are out of line but still you are not the master mind of this.
            * Viceroy
        - Detective Tobi: Viceroy, he was about to claim your land and you were concerned about not just your family but your employers. He has always cheated you out of what you own and if he had taken your land, a lot of people would be out on the street but still you are not the master mind of this.
            * Business Partner
        - Detective Tobi: Business Partner, now you are the master mind here. I understand that you have been at the recieving end of the Duke but you did not kil him because of that. You killed him because he were in love with the wife as she is also in love with you and ever bruise she got mad you mad and so you planned. You got a poison and with the help of the Viceroy laced his drink and gave it to his wife to serve him.
        - Business Partner: Now that you know that the man was a tyrant, would you still arrest us.
        - Detective Tobi: In my hand, I hold a deed. The Duke was going to change, leave everything he owned and leave. He was going to give you everything and divorce his Wife.
        - Business Partner: WHAT. How is that possible
        - Detective Tobi: You see, he loved a certain lady. The lady in this picture From the news last week there was a fire at a store and she was one of the victims and that took a toll on him and he reflected a lot on himself. Nothing mattered to him and he just wanted to commit suicide, hence the see you soon at the back of the picture. Hmmm but as a human i understand you all. 
                * [Arrest Them]
                    ->arrestthem
                * [Let them go]
                    ->letthemgo
        
        
        =arrestthem
            -'As a human, you understand their pain but you are a servant to Justice. You arrest them all'
            * * ->DONE
        =letthemgo
            -'As a human, you understand their pain and let them go'
            * * ->DONE

-> DONE
































