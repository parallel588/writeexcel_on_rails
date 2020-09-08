require 'writeexcel_on_rails/version'

module WriteexcelOnRails
  module Handlers
    class WriteExcelTemplateHandler
      def self.call(template, source = nil)
        template_source = source || template.source

        %{
          Tempfile.open('writeexcel').tap do |tmp|
            WriteExcel.new(tmp.path).tap do |workbook|
              #{template_source}
            end.close
          end.tap(&:rewind).read
        }
      end
    end
  end
end
require 'action_view/template'
require 'action_controller'
require 'writeexcel'

Mime::Type.register 'application/vnd.ms-excel', :xls
ActionView::Template.register_template_handler(:writeexcel, WriteexcelOnRails::Handlers::WriteExcelTemplateHandler)
