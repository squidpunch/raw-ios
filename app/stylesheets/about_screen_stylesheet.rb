class AboutScreenStylesheet < ApplicationStylesheet
  def about_copy(st)
    st.font = font.small
    st.text = %Q~
The Race Around Waltham (RAW) Series is the coordination of charitable road races ranging from 3.1 to 4 miles, starting and finishing in Waltham, MA.

The RAW Series is funded through the generous donations from the local Business community, so when you have a choice, please support our sponsors and let them know their community involvement matters to you:

Platinum Sponsor
 - Doctors Express

Gold Sponsors
 - RTN Federal Credit Union
 - Copper House Tavern
 - NK Family Dentistry
 - JE Murphy Plumbing and Heating
 - Health and Safety Services of New England
 - Greater Boston Running Company

Silver
 - The Law Offices of Delaney and Delaney

Bronze
 - True Value by Ideal
 - Gelineau and Associates Real Estate
 - Johnson Compounding and Wellness Center

New This Year
We are now offering eleven charitable events to choose from to earn prizes.  Those who run, walk, or volunteer in six of the races earn a RAW Series T-shirt, eight or more earn a RAW Series jacket, and those who complete ten or more events earn city bragging rights, T-shirt, jacket and will receive awesome swag sponsored by the Greater Boston Running Company in Lexington.

Please review the rules and complete and return the participation form found on the Rules Page to be tracked.

We've also asked all race directors to offer discounted rates for youths, as well as two under-18 awards categories.  Mark your calendars and bring the kids!"
~
    st.color = color.black
    st.frame = { t: 10, l: 10, w: screen_width - 20, h: screen_height - 10  }
    st.editable = false
  end

  def root_view(st)
    st.background_color = color.white
  end
end
