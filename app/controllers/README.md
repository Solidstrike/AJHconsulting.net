FORMS AND PICTURES

<!-- app/views/articles/_form.html.erb -->

<%= simple_form_for(article) do |f| %>

  <!-- [...] -->

<%= f.input :photo, as: :file %>

  <!-- [...] -->

<% end %>

# app/controllers/articles_controller.rb

def article_params
params.require(:article).permit(:title, :body, :photo)
end

DISPLAYING THE IMAGE

<!-- app/views/articles/show.html.erb -->

<%= cl_image_tag @article.photo.key, height: 300, width: 400, crop: :fill %>

SAGE IN BACKGROUND-IMAGE
Example: Card component.

You must use cl_image_path

<div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url('<%= cl_image_path @article.photo.key, height: 300, width: 400, crop: :fill %>')">
  Cool article
</div>

@article.photo.attached? #=> true/false
@article.photo.purge #=> Destroy the photo

VIEW & CONTROLLER

<!-- app/views/articles/_form.html.erb -->

<%= simple_form_for(article) do |f| %>

  <!-- [...] -->

<%= f.input :photos, as: :file, input_html: { multiple: true } %>

  <!-- [...] -->

<% end %>

# app/controllers/articles_controller.rb

def article_params
params.require(:article).permit(:title, :body, photos: [])
end

<!-- app/views/articles/show.html.erb -->

<% @article.photos.each do |photo| %>
<%= cl_image_tag photo.key, height: 300, width: 400, crop: :fill %>
<% end %>
