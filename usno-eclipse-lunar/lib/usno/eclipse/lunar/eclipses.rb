module USNO
  module Eclipse
    module Lunar
      module Eclipses
        def self.by_key_or_value(kv)
          hash.has_value? kv and return kv

          hash.fetch(formatted_date(kv)) {
            raise "No known lunar eclipse at the provided time #{kv} - hint, try USNO::Eclipse::Lunar::Eclipses.all"
          }.to_s
        end

        def self.fetch(kv)
          by_key_or_value(kv)
        end

        def self.hash
          {
            "200929"   => 12009, "200977"   => 22009, "200985"   => 32009,
            "200986"   => 32009, "20091231" => 42009, "2010626"  => 12010,
            "20101221" => 22010, "2011615"  => 12011, "20111210" => 22011,
            "201264"   => 12012, "20121128" => 22012, "2013425"  => 12013,
            "2013525"  => 22013, "20131018" => 32013, "20131019" => 32013,
            "2014415"  => 12014, "2014108"  => 22014
          }
        end

        def self.formatted_date(date)
          date.kind_of?(String) ? date : date.strftime("%Y%-m%-d")
        end

        # As reminders
        def self.all
          %w{
            2009 February 9 (Penumbral)
            2009 July 7 (Penumbral)
            2009 August 5-6 (Penumbral)
            2009 December 31 (Partial)
            2010 June 26 (Partial)
            2010 December 21 (Total)
            2011 June 15 (Total)
            2011 December 10 (Total)
            2012 June 4 (Partial)
            2012 November 28 (Penumbral)
            2013 April 25 (Partial)
            2013 May 25 (Penumbral)
            2013 October 18-19 (Penumbral)
            2014 April 15 (Total)
            2014 October 8 (Total)
          }
        end
      end
    end
  end
end
