class SalesOrderItemsController < ApplicationController
  def new
    sales_order = SalesOrder.find(params[:sales_order_id])
    @sales_order_item = SalesOrderItem.new
    @sales_order_item.sales_order = sales_order

    Size.find_all_by_material_type_id(sales_order.material_type_id).each do |size|
      quantity = @sales_order_item.quantities.build
      quantity.size = size
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_order_item }
    end
  end

  def edit
    @sales_order_item = SalesOrderItem.find(params[:id])
  end

  def create
    sales_order = SalesOrder.find(params[:sales_order_id])
    @sales_order_item = SalesOrderItem.new(params[:sales_order_item])
    @sales_order_item.sales_order = sales_order

    respond_to do |format|
      if @sales_order_item.save
        format.html { redirect_to @sales_order_item.sales_order, notice: 'Sales order item was successfully created.' }
        format.json { render json: @sales_order_item, status: :created, location: @sales_order_item }
      else
        format.html { render action: "new" }
        format.json { render json: @sales_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @sales_order_item = SalesOrderItem.find(params[:id])

    respond_to do |format|
      if @sales_order_item.update_attributes(params[:sales_order_item])
        format.html { redirect_to @sales_order_item.sales_order, notice: 'Sales order item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sales_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    sales_order = SalesOrder.find(params[:sales_order_id])
    @sales_order_item = SalesOrderItem.find(params[:id])
    @sales_order_item.destroy

    respond_to do |format|
      format.html { redirect_to sales_order }
      format.json { head :no_content }
    end
  end
end
