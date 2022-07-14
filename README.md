
# Night Writer
<video controls autoplay>
<source src='https://user-images.githubusercontent.com/99059063/179100020-cc9b639d-3710-4cf7-bdec-fb716dc6e94a.mp4' type="video/mp4">
</video>

![Screen Shot 2022-07-14 at 4 32 17 PM](https://user-images.githubusercontent.com/99059063/179099956-b2539ab9-8dcc-41a8-8cfb-d30a309775f8.png)

Night Writer and its sister program Night Reader are interactive programs designed to allow users to enter their own text and convert it to Braille, as well as translate Braille into english. 
Written in Ruby and interacted with via a text file, both are easy to use and highlight the importance of accessibility in the software design field

## Learning Goals 
<strong>This Solo Project should accomplish these objectives: </strong>
<ul>
  <li>Practice breaking a program into logical components</li>
  <li>Testing components in isolation and in combination</li>
  <li>Applying Enumerable techniques in a real context</li>
  <li>Reading text from and writing text to files</li>
</ul>

## Usage 

<ul>
<strong>For English to Braille:</strong>
  <li>In your text editor, open message.txt</li>
  <li>Enter the text you would like translated into Braille in lowercase with no punctuation or special characters</li>
  <li>From the command line, run 'ruby ./lib/night_writer.rb message.txt braille.txt' </li>
  <p>This will write your english text from the message.txt file to the braille.txt file<p>
  <strong>For Braille to English</strong>
  <li>From the command line, run 'ruby ./lib/night_reader.rb braille.txt english.txt'</li>
  <p>This will translate the Braille in the braille.txt file and print it in the english.txt file<p>
</ul>

## Built with 

   ![Ruby](https://img.shields.io/badge/Ruby-CC0000?style=for-the-badge&logo=ruby&logoColor=white)
   ![Rspec](https://img.shields.io/badge/Rspec-316192?style=for-the-badge&logo=rspec&logoColor=white)
