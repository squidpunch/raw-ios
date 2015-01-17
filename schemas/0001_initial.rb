schema "0001 initial" do
  entity "Faq" do
    string :question, optional: false
    string :answer, optional: false
  end

  entity "Race" do
    string :short_name, optional: false
    string :name, optional: false
    string :benefit, optional: false
    datetime :race_date
    string :website, optional: false
  end


  # Examples:
  #
  # entity "Person" do
  #   string :name, optional: false
  #
  #   has_many :posts
  # end
  #
  # entity "Post" do
  #   string :title, optional: false
  #   string :body
  #
  #   datetime :created_at
  #   datetime :updated_at
  #
  #   has_many :replies, inverse: "Post.parent"
  #   belongs_to :parent, inverse: "Post.replies"
  #
  #   belongs_to :person
  # end

end
