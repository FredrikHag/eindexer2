require_relative "requires"


class Controller 

	attr_accessor :documentQueue, :indexDocumentBuffer


	def initialize()
		@documentQueue = Array.new
		@indexDocumentBuffer = Array.new
	end


	

	def parseDir5(path)
	
	indexer = Indexer.new(path)
	@documentQueue = indexer.checkDir(path)

	while !@documentQueue.empty?
    
	5.times do
			break if @documentQueue.empty? 
			filepath = @documentQueue.shift
			@indexDocumentBuffer.push(IndexDocument.new(filepath))
			puts "Created document for " + filepath
		 end


		 request = AddDocumentRequest.new(INDEX)

		 puts request.postBulk(@indexDocumentBuffer)

		 @indexDocumentBuffer.clear
	
	end




	end




end



