# Set the host name for URL creation

SitemapGenerator::Sitemap.create do
  (I18n.available_locales + [nil]).each do |locale|
    SitemapGenerator::Sitemap.default_host = "https://wondering.tech"
    SitemapGenerator::Sitemap.create do
      add "/"
      add "/?lang=#{locale}"
      add "#our-services?lang=#{locale}"
      add "#our-story?lang=#{locale}"
      add "#how-it-works?lang=#{locale}"
      add "#contact?lang=#{locale}"
    end
  end
end
