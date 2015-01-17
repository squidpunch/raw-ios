class AppDelegate < PM::Delegate
  include CDQ

  status_bar true, animation: :fade

  def on_load(app, options)
    cdq.setup
    setup_local_data
    open HomeScreen.new(nav_bar: true)
  end

  # Remove this if you are only supporting portrait
  def application(application, willChangeStatusBarOrientation: new_orientation, duration: duration)
    # Manually set RMQ's orientation before the device is actually oriented
    # So that we can do stuff like style views before the rotation begins
    device.orientation = new_orientation
  end

  def setup_local_data
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
    cdq.save
  end
end
