# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.destroy_all
Course.destroy_all

title = "这是一个测试!"
ds = "这也太傻气了！我一定要让你们这些无知的人类用上Markdown！！！！"
teacher = "伟大的陈紫晟"
gpa = 4.50
intro = "无知的人类，破坏了本大爷这么伟大的前端！"
gpt = "必须全部给满啊你们这些无知的人类！"
dt = "本大爷教的是心情！"
ft = "你丫服不服本大爷！！！"
st = "NTR"
if Rails.env == "development"
  30.times do |i|
    course = Course.create!(teacher: teacher, title: title + "#{i}", gpa: gpa,
                   ranking: i, intro_text: intro, gp_text: gpt,
                   difficulty_text: dt, features_text: ft, subject: st)
    # User.create!(email: "test#{i+1}@stu.pkuschool.edu.cn",
    #              encrypted_password: "whatthefuckareyoudoing?usingtheofficalcode?doyouthinkitisajoke?")
    r = rand(Time.now.to_i) % 30
    cm = course.comments
    r.times do |j|
      cm.create!(author_id: "Test User", content: "This is a Test No.#{j}")
    end
  end
end
