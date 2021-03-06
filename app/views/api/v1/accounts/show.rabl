object @account

attributes :id, :username, :acct, :display_name, :note

node(:url)             { |account| TagManager.instance.url_for(account) }
node(:avatar)          { |account| full_asset_url(account.avatar.url(:large, false)) }
node(:header)          { |account| full_asset_url(account.header.url(:medium, false)) }
node(:followers_count) { |account| account.followers.count }
node(:following_count) { |account| account.following.count }
node(:statuses_count)  { |account| account.statuses.count  }
