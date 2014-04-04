require 'spec_helper'

describe QuestionsController do
  describe "#new" do
    it "it should assign an empty question" do
      question = double(:question)
      Question
        .should_receive(:new)
        .and_return(question)
      get :new
      expect(assigns(:question)).to eq question
    end
  end

  describe "#create" do
    it "should create a new question with the params" do
      question_params = { question: { title: "My question", content: "question content", tag_list: "tag1,tag2,tag3" } }

      expect { post :create, question_params }.to change { Question.count }.by(1)
      expect { post :create, question_params }.to change { Tag.count }.by(3)
    end
  end
end

