# -*- encoding : utf-8 -*-
module LogWatcher
  module LogReader

    def read(limit = 20, offset_lines = 0)
      records = []

      current_line = line_count = offset_lines

      File.open "#{Rails.root}/log/#{Rails.env}.log", "r" do |log|
        log.reverse_each.with_index(offset_lines).inject({:record => "", :flag => 0, :count => 0}) do |state, line|
          current_line += 1

          if line[0] == "\n"
            state[:flag] += 1
            if state[:flag] == 2
              state[:count] +=  1
              records<<state[:record] unless state[:record] == ""
              break if state[:count] == limit
              state[:flag], state[:record] = 0, ""
            end
          else
            state[:record] = line[0] + state[:record]
            state[:flag] = 0
          end
          state
        end
      end

      {:records => records, :prev_offset => line_count, :next_offset => current_line}
    end
  end
end