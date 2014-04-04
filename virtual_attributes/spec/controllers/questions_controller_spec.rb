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
      question_params = { question: { title: "My question", content: "question content", tags: ["tag_1", "tag_2", "tag_3"] } }

      expect { post :create, question_params }.to change { Question.count }.by(1)
    end
  end
end

