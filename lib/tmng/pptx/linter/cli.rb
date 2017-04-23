# frozen_string_literal: true

require 'thor'

class Tmng::Pptx::Linter::CLI < Thor
  desc 'check [FILEPATH]', 'checking pptx.'
  def check(filepath = '')
    check_args filepath
    check_filetype filepath
    puts filepath
  end

  private

    def check_args(args)
      if args.empty?
        puts 'ERROR: Unexpected args'
        exit 1
      end
    end

    def check_filetype(args)
      unless File.extname(args) == '.pptx'
        puts 'ERROR: Unexpected filetype'
        exit 1
      end
    end
end
