json.extract! @user, :id, :email, :first_name, :last_name
# json.id @user.id
# json.first_name @user.first_name
# json.last_name @user.last_name
if @user.user_images.exists? then
  json.image polymorphic_url(@user.user_images.first.profile_image)
else
  json.image 'https://www.derev.com/uploads/crop/400/400/user/avatar/19193ef05fb2112f45763b62792106022bbab573.jpg'
end
