
# 9. Build a Ruby class called "Book". Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The `add_chapter` methods adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:

class Book
  attr_accessor :title
  def initialize (title, chapters)
    @title=title
    @chapters=chapters
  end

  def add_chapter(chaptitle)
    @chapters << chaptitle
  end

  def chapters
    puts "#{@title} has #{@chapters.size} chapters"
    for i in 1..@chapters.size
      puts "#{i}. "+@chapters[i-1]
      # puts @chapters[i]
    end
  end
end

bkoo = Book.new("Game of Thrones", [])
puts"---------------------book with title & no chapters-------------------------"

bkoo.chapters
bkoo.title = "New book name"
bkoo.chapters
puts"---------------------add chapters-------------------------------------------"
bkoo.add_chapter("Bran I")
bkoo.add_chapter("Catelyn I")
bkoo.add_chapter("Daenerys I")
bkoo.add_chapter("Eddard I")
bkoo.add_chapter("Jon I")
bkoo.add_chapter("Catelyn II")
puts"---------------------------show chapters-----------------------------------"
bkoo.chapters
