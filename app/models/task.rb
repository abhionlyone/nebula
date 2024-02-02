# == Schema Information
#
# Table name: tasks
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  status      :string
#  project_id  :bigint(8)        not null
#  author_id   :bigint(8)        not null
#  assignee_id :bigint(8)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_tasks_on_assignee_id  (assignee_id)
#  index_tasks_on_author_id    (author_id)
#  index_tasks_on_project_id   (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (assignee_id => users.id)
#  fk_rails_...  (author_id => users.id)
#  fk_rails_...  (project_id => projects.id)
#
class Task < ApplicationRecord
  belongs_to :project
  belongs_to :author
  belongs_to :assignee
end
