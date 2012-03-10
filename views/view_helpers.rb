#
# Methods placed in this module can be used inside of any view.
# View helpers allow you to encapsalate complex logic and keep your
# views pristine.
#
module ViewHelpers

  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      "\#{start_year}"
    else
      "\#{start_year}&#8211;\#{end_year}"
    end
  end

  # Handy for hiding a block of unfinished code
  def hidden(&block)
    #no-op
  end

  # Add your own helpers below...
  def twitter_follow_button(user, options = {})
    default_options = {
      'class'           => 'twitter-follow-button',
      'data-align'      => 'right',
      'data-lang'       => 'en',
      'data-show-count' => true
    }
    # Remove @ if present.
    user.gsub!(/^@/,'')
    content = link_to("Follow @#{user}", "https://twitter.com/#{user}", default_options.merge(options))
    content << '<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>'

    content

  end

end
