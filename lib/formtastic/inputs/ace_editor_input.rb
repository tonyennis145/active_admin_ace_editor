# frozen_string_literal: true

module Formtastic
  module Inputs
    class AceEditorInput < Formtastic::Inputs::TextInput
      def to_html
        input_wrapping do
          label_html <<
          template.content_tag(:div, input_html_options.merge(editor_options)) do
            object.send(method)
          end <<
          builder.hidden_field(input_name)
        end
      end

      def wrapper_html_options
        super.merge(:class => "flexible-text-area")
      end

      def editor_options
        return {id: input_html_options[:id] + "_editor",
                class: "ace-editor-container",
                style: "height: 350px; width: 75%"}
      end
    end
  end
end
