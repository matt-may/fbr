## Quiz

This is a simple quiz application designed to:

* Support adding new questions and answers
* Give 5 random questions in a test
* Present one question per page request
* Require at least 3 answers per question
* Display answer of previous question
* Display results at the end

### Installation

To install the application, untar and unzip it and and ```cd``` into the application root directory.

```
$ cd fbr
```
From there, ensure you have all the required gems and your database is ready:
```
$ bundle install; rake db:migrate
```
To ensure all the examples pass, run:
```
$ rspec
```
Then, start your server:
```
$ rails s
```
and navigate to ```http://localhost:3000``` in a Web browser.

### Usage

Add 5 questions (with at least 3 answers each) to unlock the ability to create a quiz. Then,
create a quiz by adding questions. Once at least 5 questions are added to a quiz, you can take
a quiz. After each question, you'll be presented with the results of the previous question. You'll
also see your results at the end.