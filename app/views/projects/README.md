map
javascript selecting specialty

cl_image_tag("IMAGE_WITH_FACE_ID",
width: 150, height: 150, crop: :thumb, gravity: :face)

project.index
modelo / 2
if 1 picture words
if 0 words picture

<!--<%= cl_image_tag(project.image), crop: :fill %> -->

    <!--<% @projects.group_by{ |a| a.city}.sort.each do |city, project| %>
      <%= render 'city_banner_project', city:city %> -->

<%= render 'top' %>
<%= render 'new_project_button' %>
<%= render 'banner_project' %>

@projects = @projects.group_by{ |x| x.starts_at.strftime('%Y')}.sort.reverse

<div class="project_container">
  <% @projects.each do |year, project| %>
    <%= render 'date_project', year:year %>
    <% project.each_with_index do | info, index|  %>
      <% if index.even? %>
        <div class="project-info-pic">
          <%= render 'card_project', project:info  %>
          <%= render 'picture_project', project:info  %>
        </div>
      <% else %>
        <div class="project-info-pic">
          <%= render 'picture_project', project:info  %>
          <%= render 'card_project', project:info  %>
        </div>
      <% end %>
    <% end %>
  <% end %>
</div>
