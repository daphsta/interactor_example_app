class CreateClient
  include Interactor

  def call
    begin
      result = Client.create(sales_rep_id: context.sales_rep_id, name: context.name, abn: context.abn)
      context.client = result
    rescue => e
      context.fail!(message: e)
    end
  end
end