module UsersHelper

def user_role (user)
	return user.roles.first.name
end

end
