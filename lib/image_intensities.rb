# frozen_string_literal: true

module ImageIntensities
  def self.file(path, type:)
    case type
    when :png
      ins = Native.png_intensities(path)
      raise 'Processing error' if ins[:error] != 0

      { nw: ins[:nw], ne: ins[:ne], sw: ins[:sw], se: ins[:se] }
    when :jpeg
      ins = Native.jpeg_intensities(path)
      raise 'Processing error' if ins[:error] != 0

      { nw: ins[:nw], ne: ins[:ne], sw: ins[:sw], se: ins[:se] }
    else
      raise "Unsupported file type `#{tymimepe}'"
    end
  end
end

require 'image_intensities/native'
require 'image_intensities/version'
