require 'rails_helper'
describe Todo, "#completed" do
  it "returns true if  is completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end


  it "returns false if completed at is nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed

  end

end

describe Todo, "#complete!" do
  it "update completed at" do
    todo = Todo.create!(completed_at: nil)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end

describe Todo, "#incomplete!" do
  it "set completed at to nil" do
    todo = Todo.create!(completed_at: Time.current)
    todo.mark_incomplete!
    todo.reload
    expect(todo).not_to be_completed
  end
  end