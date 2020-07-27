# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  [
    {
      email: 'admin@admin.com',
      name: '山田太郎',
      password: '123456',
      age: '27',
      sex: '1',
      admin: 'true'
    },
    {
      email: 'test1@test.com',
      name: '佐藤花子',
      password: '123456',
      age: '20',
      sex: '2',
    },
    {
      email: 'test2@test.com',
      name: '伊藤一郎',
      password: '123456',
      age: '40',
      sex: '1',
    },
    {
      email: 'test3@test.com',
      name: '松井浩樹',
      password: '123456',
      age: '24',
      sex: '1',
    },
    {
      email: 'test4@test.com',
      name: '柏木結衣',
      password: '123456',
      age: '22',
      sex: '2',
    },
    {
      email: 'test5@test.com',
      name: '大谷哲人',
      password: '123456',
      age: '46',
      sex: '1',
    },
    {
      email: 'test6@test.com',
      name: '新垣美紀',
      password: '123456',
      age: '32',
      sex: '2',
    },
    {
      email: 'test7@test.com',
      name: '鈴木裕太',
      password: '123456',
      age: '17',
      sex: '1',
    },
    {
      email: 'test8@test.com',
      name: '吉田恭子',
      password: '123456',
      age: '37',
      sex: '2',
    },
    {
      email: 'test9@test.com',
      name: '遠藤千秋',
      password: '123456',
      age: '55',
      sex: '1',
    }
  ]
)
Category.create!(
  [
    {
      name: 'アニメ',
    },
    {
      name: '恋愛',
    },
    {
      name: '青春',
    },
    {
      name: 'SF',
    },
    {
      name: 'ドキュメンタリー',
    },
    {
      name: 'アドベンチャー',
    },
    {
      name: 'コメディ',
    },
    {
      name: 'ファンタジー',
    },
    {
      name: '戦争',
    },
    {
      name: '音楽・ミュージカル',
    },
    {
      name: 'アクション',
    },
    {
      name: 'ホラー',
    },
    {
      name: 'その他',
    },
 ]
)