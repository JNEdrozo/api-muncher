class Recipe
  attr_reader :uri, :label, :url, :ingredientLines, :dietLabels, :image, :source

  def initialize(uri, label, url, ingredientLines, dietLabels, options = {})
    # raise ArgumentError if uri.blank? || label.blank? || url.blank? || ingredientLines.blank? || dietLabels.blank?

    @uri = uri
    @label = label
    @url = url
    @ingredientLines = ingredientLines
    @dietLabels = dietLabels

    #Optional Variables
    @image = options[:image]
    @source = options[:source]

  end
end