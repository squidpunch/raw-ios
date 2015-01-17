class FaqScreen < PM::TableScreen
  title "FAQs"
  stylesheet FaqScreenStylesheet

  def on_load
  end

  def table_data
    [{
      cells: Faq.map do |item|
        {
          title: item.question,
          action: :show_faq,
          arguments: { faq: item }
        }
      end
    }]
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end

  def show_faq(faq)
    open SingleFaqScreen.new(faq)
  end
end
