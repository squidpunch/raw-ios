class SignupFormScreen < PM::FormScreen
  title "Signup"
  stylesheet SignupFormScreenStylesheet

  def on_load
  end

  def form_data
    [{
      title: "Participant Details",
      footer: %Q~By submitting this form, I agree that road races and trail runs/walks are hazardous and assume all responsibility for all risk or injury that may occurs to me while traveling to, from or while running and attending the listed activities. I hereby for myself, heirs, executors and administrators release and discharge any and all sponsors and all persons associated with the race including the City of Waltham, Doctors Express, Waltham Track Club, Waltham Land Trust, Tim and Kathleen Irving, RAW Series, all volunteers, organizers and sponsors of the races for any injury suffered by me. I attest and certify that I am physically able and sufficiently trained for competition or walking this event. Please be advised In case of a minor, this entry must be signed by parent or guardian of entrant.~,
      cells: [{
        name: "f_name",
        title: "First Name",
        type: :text,
        value: "",
        placeholder: "Mit"
      }, {
        name: "l_name",
        title: "Last Name",
        type: :text,
        placeholder: "Gnivri"
      }, {
        name: "city_state",
        title: "City State",
        type: :text,
        placeholder: "Waltham Ma"
      }, {
        name: "dob",
        title: "Birthdate",
        type: :date
      }, {
        name: "email",
        title: "Email",
        type: :email
      }, {
        name: "shirt",
        title: "RAW Shirt Size",
        type: :text,
        options: [ "Small", "Medium", "Large" ]
      }, {
        name: "jacket",
        title: "RAW Jacket Size",
        type: :text,
        options: [ "Small", "Medium", "Large" ]
      }]
    }, {
      cells: [{
        name: :submit,
        title: "Submit",
        type: :button,
        action: "save:"
      }]
    }]
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end

  def save(cell)
    mp render_form
  end
end
