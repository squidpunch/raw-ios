class RulesScreenStylesheet < ApplicationStylesheet
  def root_view(st)
    st.background_color = color.white
  end

  def rules_copy(st)
    st.font = font.small
    st.text = %Q~
To be tracked for the RAW Series please complete the participation form above and return it to rawseries@yahoo.com or drop off at the RAW Booth at one of the events and confirm your standings after each event if they are different from the published results.

The 2015 Race Around Waltham (RAW) Series is the coordination of charitable road races ranging from 3.1 to 4 miles, starting and finishing in Waltham, MA. Participants who run, walk or volunteer (any combination) in six of the races earn a Series Shirt, and those who participate eight or more races earn a RAW Series jacket, plus other swag and city bragging rights.   The goal of the series is to promote a healthy life style, increase participation in Waltham’s running events and promote community involvement.   The 2015 RAW Series participating races are scheduled from March through November requiring an nine-month fitness commitment.

RAW Series Rules: Runners, walkers and volunteers of all ages and abilities are encouraged to participate in the RAW Series.  To be scored and eligible for series benefits, you need to register for the Series by filling out the application available on the website and at the events.  To participate, you need to run, walk or volunteer (any combination) in at least six of the events to qualify for a series shirt; eight events for a jacket, and ten or more to qualify for additional swag.  We require that at least one of your events be a trail run (Prospect Bandit Run or Western Greenway Run).  And if, for example, a runner is injured, he/she can volunteer for a race instead of running, and thereby still qualify for participation prizes.

Scoring: The top 20 overall scores for men and women are determined by a place/point system based on overall race results.  At the end of the series, the participant with the best overall score for completing the events will be declared the winner.  Everyone of any age is eligible to score and prizes will be awarded for Overall and Under 17 both female and male divisions.

Swag will be given to all athletes who complete or volunteer at 6 or more events, with extra additional special awards (gender specific - RAW Series Jacket or long sleeve shirt) for anyone who completes eight-race events and a ten event challenge award on top of it all.

· Key and bag watch for RAW Series participants at each event
~


    st.color = color.black
    st.frame = { t: 10, l: 10, w: device_width - 20, h: app_height - 10  }
    st.editable = false
  end
end
