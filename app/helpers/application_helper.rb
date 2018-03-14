module ApplicationHelper
  
  def contextualize_action_type act
    act == 'deposit' ? 'table-success' : 'table-danger'
  end

  def action_type_to_sign act
    act == 'deposit' ? '+' : '-'
  end

end
