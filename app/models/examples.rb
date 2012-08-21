class Examples
  include Enumerable

  def initialize(id, &block)
    self.id = id
    @examples = []
    instance_eval &block
  end

  attr_reader :id
  def id=(value)
    @id = "examples-#{value.to_s.dasherize}"
  end

  attr_reader :examples

  def example(id, &block)
    examples << Example.new(id, &block)
  end

  def each(&block)
    examples.each &block
  end

  def scss
    map{|example| "##{example.id} { #{example.scss} }"}.join("\n")
  end

  def to_partial_path
    "examples"
  end

  def self.examples(id, &block)
    new id, &block
  end

  def self.load(name)
    class_eval File.read(File.expand_path("app/examples/#{name}.rb", Rails.root))
  end

  def self.all
    Dir[File.expand_path("app/examples/*.rb", Rails.root)].map {|file| load File.basename(file).chomp(File.extname(file))}
  end

  def self.scss
    all.map(&:scss).join("\n")
  end
end
