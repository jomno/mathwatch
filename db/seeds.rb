Quest.create!([
  {info: {"1"=>"1","3"=>"1"}, title: "q_1.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1","3"=>"2"}, title: "q_2.PNG", content: "", image: "", answer: 1},
  {info: {"5"=>"1","13"=>"2"}, title: "q_3.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"2"}, title: "q_4.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"2","5"=>"3","9"=>"2"}, title: "q_5.PNG", content: "", image: "", answer: 1},
  {info: {"5"=>"1","13"=>"2"}, title: "q_6.PNG", content: "", image: "", answer: 1},
  {info: {"5"=>"1","13"=>"1"}, title: "q_7.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1"}, title: "q_8.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"2","5"=>"2","9"=>"2"}, title: "q_9.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1","3"=>"1"}, title: "q_10.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1","3"=>"2"}, title: "q_11.PNG", content: "", image: "", answer: 1},
  {info: {"5"=>"1","13"=>"2"}, title: "q_12.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1"}, title: "q_13.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"2","5"=>"3","9"=>"2"}, title: "q_14.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1","5"=>"3","9"=>"1"}, title: "q_15.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"2","5"=>"3","9"=>"2"}, title: "q_16.PNG", content: "", image: "", answer: 1},
  {info: {"1"=>"1"}, title: "q_17.PNG", content: "", image: "", answer: 1},
  {info: {"5"=>"1","13"=>"1"}, title: "q_18.PNG", content: "", image: "", answer: 1}
])
Subject.create!([
  {name: "집합과 명제", big: "수학 Ⅱ"},
  {name: "함수", big: "수학 Ⅱ"},
  {name: "수열", big: "수학 Ⅱ"},
  {name: "지수와 로그", big: "수학 Ⅱ"},
  {name: "수열의 극한", big: "미적분 Ⅰ"},
  {name: "함수의 극한", big: "미적분 Ⅰ"},
  {name: "다항함수의 미분법", big: "미적분 Ⅰ"},
  {name: "다항함수의 적분법", big: "미적분 Ⅰ"}
])
Unit.create!([
  {name: "등차수열의 일반항", subject_id: 3},
  {name: "연립방정식", subject_id: 3},
  {name: "N차방정식", subject_id: 3},
  {name: "합과 일반항사이의 관계", subject_id: 3},
  {name: "등차중항", subject_id: 3},
  {name: "조화수열", subject_id: 3},
  {name: "첫째항과 공차를 이용한 등차수열의 합", subject_id: 3},
  {name: "유리화", subject_id: 3},
  {name: "인수분해", subject_id: 3},
  {name: "약수", subject_id: 3},
  {name: "부등식", subject_id: 3},
  {name: "n개가 등차수열을 이룰때", subject_id: 3},
  {name: "경우의 수", subject_id: 3},
  {name: "두 함수의 교점", subject_id: 3},
  {name: "수직인 직선의 기울기", subject_id: 3},
  {name: "n개의 수를 넣어 만든 등차수열", subject_id: 3},
  {name: "첫째항과 마지막항을 이용한 등차수열의 합", subject_id: 3},
  {name: "등차수열의 합의 최대최소", subject_id: 3},
  {name: "등비중항", subject_id: 3},
  {name: "등비수열의 합", subject_id: 3},
  {name: "등비수열의 일반항", subject_id: 3}
])
User.create!([
  {email: "jake895@gmail.com", name: "공정한", password_digest: "$2a$10$0vNINN0ieCMfTRl9cw8Wu.JyZiy6oUjhIp/nYy9P/ijosX0KkEek.", cnt: 0}
])

for i in 1..21
Ulevel.create!(user_id: 1, unit_id: i, level: 2)
end
