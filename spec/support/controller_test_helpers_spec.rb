def create_comment
  comment = FactoryBot.build(:comment)
  user = FactoryBot.create(:user)
  allow(Post).to receive(:find).and_return(comment.post)
  allow(controller).to receive(:current_user).and_return(user)
  post :create, params: { post_id: comment.post.id, comment: { message: "A Comment" } }
end

def create_like
  allow(controller).to receive(:current_user).and_return(user)
  post :create, params: { post_id: test_post.id }
end

def delete_like
  allow(controller).to receive(:already_liked?).and_return(true)
  allow(controller).to receive(:current_user).and_return(user)
  delete :destroy, params: { post_id: like.post.id, id: like.id }
end

def create_global_post
  allow(User).to receive(:find).and_return(user)
  get :index
  post :create, params: { post: { id: test_post.id, message: test_post.message, user_id: "" } }
end

def create_timeline_post
  timeline = FactoryBot.create(:timeline)
  user_with_timeline = FactoryBot.create(:user, timeline: timeline)
  allow(User).to receive(:find).and_return(user_with_timeline)
  post :create, params: { post: { id: test_post.id, message: test_post.message, user_id: timeline.user.id } }
end

def delete_post
  delete :destroy, params: { id: post_in_db.id }
end
