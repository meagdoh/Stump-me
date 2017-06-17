# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.destroy_all
Post.destroy_all

# create your "parent" objects as usual

energy = Topic.create(subject_name:"Energy & the Environment", img_url:"https://moulton.house.gov/wp-content/uploads/2014/08/iStock_000022100234Small_0-e1439312264426-150x150.jpg")
fishing = Topic.create(subject_name:"Fishing", img_url:"https://moulton.house.gov/wp-content/uploads/2015/08/iStock_000046942574Small-150x150.jpg")
healthcare = Topic.create(subject_name:"Healthcare", img_url:"https://moulton.house.gov/wp-content/uploads/2014/08/iStock_000022593710Small-150x150.jpg")


# now that the parent exists in the DB
# we can call '.create' on the relation
energy.posts.create([
    {title: "LEAD Team Announce $300,000 in Brownfields Grants",
      text: "'This grant is yet another testament to the strength of the LEAD team,” said Congressman Seth Moulton. “These sites, saddled by years of oil and chemical contamination, are an albatross around the neck of Lynn, and pose a serious threat to the city’s environmental and economic health. Brownfields funds help transform dirty, dormant properties into new businesses and homes, stimulating much needed jobs and tax revenue for Lynn. I look forward to continued partnership with the LEAD team as we continue to invest in our community and our future.'",
      source: "https://cfpub.epa.gov/bf_factsheets/gfs/index.cfm?xpg_id=9554&display_type=HTML"
    }
    ])

fishing.posts.create([
    {title: "Young Fishermen's Development Act of 2017",
      text: "The tenets of the legislation, which is modeled after a similar and successful program run by the Department of Agriculture, include training, education and outreach to attract younger fishermen to the waterfront to help reverse the trend of an aging industry.",
      source: "http://www.gloucestertimes.com/news/national_world_news/moulton-bill-looks-to-inject-youth-into-fishing-industry/article_3e4b7469-9b15-563a-91df-028175804577.html"
    }
    ])

healthcare.posts.create([
  {title: "Young Fishermen's Development Act of 2017",
    text: "The tenets of the legislation, which is modeled after a similar and successful program run by the Department of Agriculture, include training, education and outreach to attract younger fishermen to the waterfront to help reverse the trend of an aging industry.",
    source: "http://www.sethmoulton.com/health_care"
  }
  ])
