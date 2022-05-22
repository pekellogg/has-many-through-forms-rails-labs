pk = User.create(username: "pkallday" , email: "nunya@bzwx.net")
pk.posts.build(title: "2 Times I Was Pleasantly Surprised by Traffic", content: "A1, rare and juicy content...")
pk.save
Category.create(name: "Commuting")
Category.create(name: "Traffic")
PostCategory.create(post_id: 1, category_id: 1)
PostCategory.create(post_id: 1, category_id: 2)

sm = User.create(username:"itsnotshawshank" , email: "professional_email@bz.biz")
sm.posts.build(title: "10 Companies Laying Off Employees Right Now", content: "Premium content at a premium price.")
sm.save
Category.create(name: "U.S. Labor")
Category.create(name: "Layoffs")
Category.create(name: "Tech")
PostCategory.create(post_id: 2, category_id: 3)
PostCategory.create(post_id: 2, category_id: 4)
PostCategory.create(post_id: 2, category_id: 5)

sm.comments.build(content: "This post really hit home for me.", user_id: 2, post_id: 1)
sm.comments.build(content: "I try to read this post at least once a day.", user_id: 2, post_id: 1)
sm.save
pk.comments.build(content: "Fingers crossed this will not apply to me!", user_id: 1, post_id: 2)
pk.comments.build(content: "TikTok's average company growth for the past 2 years is is ~300% compared to Google's ~30%...", user_id: 1, post_id: 2)
pk.save
