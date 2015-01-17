class DataLoader
  include CDQ

  def self.instance
    Dispatch.once { @instance ||= new }
    @instance
  end

  def self.load_data!
    instance.load_faqs
    instance.load_races
    instance.save
  end

  def save
    cdq.save
  end

  def load_races
    if Race.count == 0
      Race.create(
        short_name: "JB Blastoff 5K",
        name: "JB Blastoff 5K",
        benefit: "American Brain Tumor Association",
        race_date: Time.new(2015, 03, 29),
        website: "http://www.jbblastoff.com"
      )
      Race.create(
        short_name: "Shifter's 5K",
        name: "Shifter's 5K",
        benefit: "The Data Farber Marathon Challenge",
        race_date: Time.now(2015, 04, 04),
        website: "http://www.shifters5k.com"
      )

      Race.create(
        short_name: "Moody Streek 5K",
        name: "Moody Streek 5K",
        benefit: "Waltham public secondary schools",
        race_date: Time.now(2015, 05, 03),
        website: "http://www.moodyst5k.com"
      )

      Race.create(
        short_name: "Melanoma 5K",
        name: "Melanoma 5K Run/Walk for Hope",
        benefit: "The Melanoma Foundation",
        website: "http://www.mfne.org/runwalkforhope/"
      )

      Race.create(
       short_name: "Tailgate Trot 4 Mile",
       name: "Tailgate Trot 4 Mile - 4Miles for 4 Reasons 4 Michaels",
       benefit: "Alzheimer’s Association, American Cancer Society, National Multiple Sclerosis Society, Joslin Diabetes Center High Hopes Fund",
       race_date: Time.now(2015, 06, 07),
       website: "http://tailgatetrot.webs.com"
      )

      Race.create(
        short_name: "Saint Jude School 5K",
        name: "Saint Jude School 5K Road Race and Family Fun Walk",
        benefit: "St. Jude School",
        website: "http://saintjudewaltham.com"
      )

      Race.create(
        short_name: "Prospect Bandit 5K",
        name: "Prospect Bandit 5K",
        benefit: "RAW Series and  Waltham Track Club",
        race_date: Time.now(2015, 9, 12),
        website: "http://rawseries.weebly.com"
      )

      Race.create(
        short_name: "Rock Into Recovery",
        name: "Rock Into Recovery",
        benefit: "The Edinburg Center",
        race_date: Time.now(2015, 9, 26),
        website: "htpp://www.edinburgcenter.org"
      )

      Race.create(
        short_name: "Western Greenway Trail 5K",
        name: "Western Greenway Trail 5K",
        benefit: "The RAW Series and Waltham Land Trust",
        race_date: Time.now(2015, 10, 04),
        website: "http://www.walthamlandtrust.org"
      )

      Race.create(
        short_name: "Trick or Treat Trot 5K",
        name: "Trick or Treat Trot 5K",
        benefit: "The Guild For Human Services",
        race_date: Time.now(2015, 10, 25),
        website: "http://www.theguildschool.org"
      )

      Race.create(
        short_name: "Piggy's 5K",
        name: "Piggy's 5K",
        benefit: "The Paul Logue Charitable Trust",
        race_date: Time.now(2015, 11, 21),
        website: "http://www.piggysrun.com"
      )
    end
  end

  def load_faqs
    if Faq.count == 0
      Faq.create(
        question: "Does it cost any money to participate in the RAW Series?",
        answer: "No, The RAW Series was created to give a little something back to runners and Race Directors at no cost to either. All proceeds are generated through sponsorship/donations from the business community and through the sponsoring races; PBR5K or WG5K."
      )

      Faq.create(
        question: "Can I register for all the Races at once?",
        answer: "No, You do need to sign up for each race individually because all the races are independent of each other and have their own Race Directors , registration format and timing companies.  At this time there is no single method to sign up for all of the events.  This is a long term goal our committee has so stay tuned."
      )
    end

    Faq.create(
      question: "How do I get signed up?",
      answer: "Simply go to the 'Rules' page and download the participation form and either email it or drop it off at the RAW Series booth at an event."
    )

    Faq.create(
      question: "How do I know I am being tracked?",
      answer: "After the fourth event a 'Standings' page will be updated with all the participants names and race finishes on it.  The standings will then be updated after each event and published on the website, Facebook, and Yahoo group site and YOU MUST review them after each event and if you have an concern just email rawseries@yahoo.com privately with your issue and it will be taken care of.  If you do not notify us within two weeks after the event you continued participation is not guaranteed."
      )

    Faq.create(
      question: "Will my registration information be sold?",
      answer: "The RAW Series does not and will not sell/loan you registration information and will only use it for Series related correspondence.  We can't guarantee how each of the races use your registration information."
    )

    Faq.create(
      question: "How can I stay current with Series updates?",
      answer: "If you have not already, please click on the Yahoo Groups Icon and request to join to stay current with Series updates."
    )

    Faq.create(
      question: "What races are in the Series?",
      answer: "Please see the 2015 Races Page on this website for a complete list of races and their website information."
    )
  end
end
