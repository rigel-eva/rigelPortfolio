class WordpressPreviewController < ApplicationController
    #Add fancy code here to fetch down wordpress stuff from rigelmoe.wordpress.com
    #Also should probably migrate the site to a new subdomain ... thinking wordpress.rigel.moe
    def index
        #Ok let's go ahead and just do some forgeries for right now ...
        @wordpressPosts=[];
        date=Forgery('date').date
        (0..20).each{|i|
            post={
                id: Random.rand(100),
                site_ID: 132674762,
                date: date,
                modified: date,
                title: Forgery('lorem_ipsum').title,
                URL: "http://#{Forgery('internet').domain_name}",
                content: Forgery('lorem_ipsum').paragraphs(Random.rand(10))
            }
            @wordpressPosts.push post
        }
    end
end
