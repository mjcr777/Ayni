class ConvenioFinanciamientosController < ApplicationController
  # GET /convenio_financiamientos
  # GET /convenio_financiamientos.xml
  def index
    @convenio_financiamientos = ConvenioFinanciamiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @convenio_financiamientos }
    end
  end

  # GET /convenio_financiamientos/1
  # GET /convenio_financiamientos/1.xml
  def show
    @convenio_financiamiento = ConvenioFinanciamiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @convenio_financiamiento }
    end
  end

  # GET /convenio_financiamientos/new
  # GET /convenio_financiamientos/new.xml
  def new
    @convenio_financiamiento = ConvenioFinanciamiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @convenio_financiamiento }
    end
  end

  # GET /convenio_financiamientos/1/edit
  def edit
    @convenio_financiamiento = ConvenioFinanciamiento.find(params[:id])
  end

  # POST /convenio_financiamientos
  # POST /convenio_financiamientos.xml
  def create
    @convenio_financiamiento = ConvenioFinanciamiento.new(params[:convenio_financiamiento])

    respond_to do |format|
      if @convenio_financiamiento.save
        format.html { redirect_to(@convenio_financiamiento, :notice => 'Convenio financiamiento was successfully created.') }
        format.xml  { render :xml => @convenio_financiamiento, :status => :created, :location => @convenio_financiamiento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @convenio_financiamiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /convenio_financiamientos/1
  # PUT /convenio_financiamientos/1.xml
  def update
    @convenio_financiamiento = ConvenioFinanciamiento.find(params[:id])

    respond_to do |format|
      if @convenio_financiamiento.update_attributes(params[:convenio_financiamiento])
        format.html { redirect_to(@convenio_financiamiento, :notice => 'Convenio financiamiento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @convenio_financiamiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /convenio_financiamientos/1
  # DELETE /convenio_financiamientos/1.xml
  def destroy
    @convenio_financiamiento = ConvenioFinanciamiento.find(params[:id])
    @convenio_financiamiento.destroy

    respond_to do |format|
      format.html { redirect_to(convenio_financiamientos_url) }
      format.xml  { head :ok }
    end
  end
end
