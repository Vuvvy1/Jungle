module Admin::SalesHelper
  def active_sale?
    Sale.where("sales.ends_on >= ? AND sales.starts_on <= ? ", Date.current, Date.current).any?
  end
end
