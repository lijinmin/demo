class TcpDump

	def lala
		processor = PcapTools::TcpProcessor.new
		PcapTools::Loader::load_file('/home/min/out.pcap', {}) do |index, packet|
	  		processor.inject index, packet
		end		
	end

end