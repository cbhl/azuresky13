# frozen_string_literal: true

# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Tagging
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::LinkTo

module PostHelper
  def get_pretty_date(post)
    attribute_to_time(post[:created_at]).strftime('%B %-d, %Y')
  end

  def get_short_date(post)
    attribute_to_time(post[:created_at]).strftime('%Y.%m.%d')
  end

  def get_commit()
    return `git rev-parse --short HEAD`.strip
  end
end

include PostHelper
