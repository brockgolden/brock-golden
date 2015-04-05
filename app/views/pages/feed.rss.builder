#encoding: UTF-8
xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Brock Golden Blog"
    xml.author "Brock Golden"
    xml.description "DJ, music writer for EARMILK, promoter, developer, and gear junkie. My name is Brock Golden and this is a stash of my recent likes and works related to the many hats I wear in music."
    xml.link "http://www.brockgolden.com/"
    xml.language "en"

    for post in @posts
      xml.item do
        if post.title
          xml.title post.title
        else
          xml.title ""
        end
        xml.author "Brock Golden"
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link "http://www.brockgolden.com/posts/" + post.slug
        xml.guid post.id
        xml.description post.content
      end
    end
  end
end
