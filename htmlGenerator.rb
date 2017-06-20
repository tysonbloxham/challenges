require 'rspec'

# <!doctype html>

# <html lang="en">
# <head>
#   <meta charset="utf-8">
# 
#   <title>Title Goes Here</title>
# </head>
# 
# <body>
# </body>
# </html>

def html_generator title
<<HEREDOC
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>#{ title }</title>
</head>

<body>
</body>
</html>
HEREDOC
end

describe 'HTML generator' do
  it 'allows for a dynamic title' do
    expect(html_generator 'My Site').to match(/My Site/)
  end
end