ActiveAdmin.register Joke do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :jokes, :author
#
form do |f|
	f.inputs "Add joke" do 
	  f.input :jokes
	  f.input :author
	end
	f.actions
end 


end
