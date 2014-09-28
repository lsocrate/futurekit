class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /cards
  # GET /cards.json
  def index
    if params[:search]
      @cards = Card.paginate(:page => params[:page], :per_page => 16).search(params[:search]).order("updated_at DESC")
      respond_to do |format|
        format.html
        format.js
        format.json { render :json => @cards.map(&:attributes) }

      end
    else
      @cards =  Card.paginate(:page => params[:page], :per_page => 16).where(approved: true).order("updated_at DESC")
      respond_to do |format|
        format.html
        format.js
        format.json { render :json => @cards.map(&:attributes) }
      end
    end

  end
  

  
def relate
  
 puts params[:selected_card]
 selected_card = Card.friendly.find(params[:selected_card])


 @card.follow(selected_card)
  #@card.follow(Card.find(params[:selected_id]))
  respond_to do |format|
   format.html { redirect_to cards_url, notice: 'Card was related successfully.' }
  end
end



  def show
    if params[:search]
      redirect_to cards_path(:search => (params[:search]))
    else
      @link = Link.new
      @links = @card.links
      respond_to :html

     # render :pdf => "card",
     #   :page_height                    => 85,
     #   :page_width                     => 55


   end
 end







 def new
  @card = Card.new
end


def history
  @versions = PaperTrail::Version.order('created_at DESC')
end

def edit
end

def to_approve
  @cards = Card.where(approved: nil)
end

def jackpot
  @cards = Card.order("RANDOM()").where(approved: true).first(3)

end


def approve
  @card = Card.find(params[:card]) 
  if @card
    @card.approved = 'true'
    if @card.save
      flash[:notice] = "Tech activated"
      redirect_to to_approve_path
    else
      puts @card.errors.inspect
      flash[:notice] = "Something went wrong"
      redirect_to to_approve_path
    end
  else
    flash[:notice] = "Tech not found"
    redirect_to to_approve_path
  end
end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to cards_url, notice: 'Card was successfully addd to our submission list.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:name, :short_desc, :question0, :question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8, :question9, :tag_list, :long_desc, :category, :readiness, :photo, :approved, :category_id, category_attributes: [:name])
    end
  end
