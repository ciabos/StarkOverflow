class AddUserIdToQuestionsAndAnswers < ActiveRecord::Migration
  def change
    add_reference(:questions, :user)
    add_reference(:answers, :user)
  end
end
