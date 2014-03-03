require 'spec_helper'

module KnowledgeBase
  describe ArticlesController do
    routes { KnowledgeBase::Engine.routes }

    describe "GET 'show'" do
      it "returns http success" do
        category = create :category
        article  = create :article, category: category

        get :show, category_id: category.slug, id: article.slug

        response.should be_success
      end
    end

  end
end
