$: << '.'

require 'gosu'
require 'voronoi'

class GameWindow < Gosu::Window

  def initialize
    super 640, 480, false
    self.caption = "Gosu Tutorial"

    @diagram = Voronoi::Diagram.new([[1,2]], 0, 638)
  end

  def update
  end

  def draw
    draw_line 0, 0, Gosu::Color::WHITE, 640, 480, Gosu::Color::WHITE
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

end

window = GameWindow.new
window.show
