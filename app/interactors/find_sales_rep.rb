class FindSalesRep
  include Interactor

  def call
    begin
      result = SalesRep.find(context.user_id)
      context.sales_rep_id = result.id
    rescue => e
      context.fail!(message: e)
    end
  end
end