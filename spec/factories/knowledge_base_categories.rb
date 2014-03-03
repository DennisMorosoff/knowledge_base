# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :knowledge_base_category, aliases: [:category], class: 'KnowledgeBase::Category' do
    title "MyString"
    description "MyText"
    category nil
    sequence(:position)
  end
end
