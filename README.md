# Call Me Definitely

## Introduction
Chooses a random student from the class to answer a question or perform another pleasant and educative task. Keeps track of how many times students have been called in order to ensure that all students are eventually called an equal number of times.

## Setup
Create the file `students.csv` in the same directory as `call-me-definitely.rb`. Enter into this file a list of student names and number of times called (zero is probably the most suitable initial value) in the following format:

```
Bob Smith,0
Sally Peters,0
Susan Jones,0
```

### Use
Run `ruby call-me-definitely.rb` in the directory of that script. Optionally, create a shell alias to more conveniently run the script. If the files are in your home directory and you are using Bash, you could run: `echo "alias cmd='ruby ~/call-me-definitely.rb'" >> ~/.bashrc` and then `source ~/.bashrc`. Subsequently, `cmd` would run the script.
