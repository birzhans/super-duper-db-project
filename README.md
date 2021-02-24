# QuizPlease?
## QuizPlease? is a web application that provides various functionality to our users.
## **Problems**
### We plan to use our app for various problems and here are some of them:
 - **Lack of mental exercises**. Nowadays we have lots of distracktors and tons of information that flies around. And it's also easy to find anything you want, which makes learning less effective. We think that small quizzes and tests on currently studied topic provide required stress situation for our brains, which will definitely help with learning.
 - **Fear of losing and competitions**. That is actually a pretty common problem of people, since we don't like to lose. But in some ways losing is winning if you keep track of your mistakes and push your boundaries.
 - **Community**. The functionality that we want to provide includes ability of creating a cimmunity of like-minded individuals, which will help with learning certain or new things.
****
## **Our possible solutions**
 - **Functionality**. We want to provide various functionality, like
    - Quiz/Questions constructor
    - Quiz results
    - Personal statistics
    - Overall ranking system
    - Comments, posts writing
    
## **Our stack**
 - **Backend.** Our team has 2 backenders and we have pretty wide option. But the trick is that we don't know same backend technologies, which makes it difficult for us to decide. We probably will write some services on different languages and then make frontend ask any of them when certain service is required. We are still thinking of which technology shall we use, but our priorities fall to:
    - Ruby
    - Golang
 - **Frontend.** We have 2 people, experienced with same framework, which gave us an easy choice:
    - Vue.js
 - **Database.** Since we have to choose SQL database only, we decided to select the easiest to use, but still high-scalable db:
    - Sqlite3

'''
Our approximate models
	1) QuizGame
		id
		[]Question
		[]User
		[]Comment
	2) Question
		id
		category		
		date
		question		
		value		
		answer
		round
		show_number
	3) User
		id
		name
		surname
	4) Admin
		id

	5) Comments
		id
		text
		postId
		userId

	6) Posts
		id
		[]Comment

	7) Groups
		id
		[]User

'''
'''
Our functional:
	Users can:
		1) Play quiz game
		2) Create questions
		3) Craete or Join groups
		4) Write posts
		5) Leave comments on posts
		6) Sign in
		7) See his quiz game result
		8) See his global and current ranking
		9) Create a quiz game
		10) Sign up
		11) Leave comments on questions
		12) Leave comments on quiz games
		13) Upvote comment
		14) Downvote comment
		15) Comment other people's comments
'''

'''
We decided to use this dataset: https://www.reddit.com/r/datasets/comments/1uyd0t/200000_jeopardy_questions_in_a_json_file/
All the data is in JSON and CSV format and its format is:
{
	"category": "HISTORY", 
	"air_date": "2004-12-31",
	 "question": "'For the last 8 years of his life, Galileo was under house arrest for espousing this man's theory'", 
	"value": "$200", 
	"answer": "Copernicus", 
	"round": "Jeopardy!", 
	"show_number": "4680"
} 
We decided to choose this dataset because:
	1) It is huge. It is actually enourmous ~200.000 questions from quiz game
	2) It describes questions using different fields. So it's not only question and answer, but it also contains question price, date, category and round. We think this dataset is rich enough for our project
'''
