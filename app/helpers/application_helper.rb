module ApplicationHelper
  def copyright_generator
    ClingmanViewTool::Renderer.copyright "Deven Clingman", "All rights reserved"
  end
end
