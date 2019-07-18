def build_sms_message(first_name, last_name, eta, order_num)
  shortened_order_num = "***#{order_num[-3..-1]}"
  name_initial = first_name[0]

  "К вам выехали по заказу #{shortened_order_num}. Приедем через #{eta} мин. Бригадир #{last_name} #{name_initial}."
end
