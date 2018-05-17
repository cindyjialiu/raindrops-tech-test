# Rain drops
## Specification
Write a function that takes as its input a number (n) and converts it to a string, the contents of which depend on the numbers factors

- if the number has a factor of 3, output 'Pling'
- if the number has a factor of 5, output 'Plang'
- if the number has a factor of 7, output 'Plong'
- if the number does not have any of the above as a factor simply return the numbers digits

Examples:
- 28's factors are 1, 2, 4, 7, 14 and 28: this would be a simple 'Plong'
- 30's factors are 1, 2, 3, 5, 6, 10, 15, 30: this would be a 'PlingPlang'
- 34 has four factors: 1, 2, 17, and 34: this would be '34'
## Technology Used
Language: Ruby
Testing: RSpec
## My Approach
- I started with listing all the possible situations of the factors, 3, 5, 7, 15, 21, 35, 105. and realised the first thing I need to check is if the number is divisible by any of these factors.
- If the number meets any of the statement as above, I need someway to tell the number which is the string needs to be returned, so I used hash to store the rules.
- Used map to iterate the hash and get an array with all the strings after checking if the number is divisible by each factor, and join the array in the end.
- The last step is checking if the array is empty or now, if so, it means the number is not divisible by any of the factors, so it needs to return the original number.
![approach1](https://user-images.githubusercontent.com/33848023/40188245-6aae0c1e-59f1-11e8-9141-2163486ea905.jpg)
![approach2](https://user-images.githubusercontent.com/33848023/40188253-7079d556-59f1-11e8-9f56-dd538a7be99a.jpg)
## Setup
```bash
git clone to you location machine
run bundle install to install all the dependencies in Gemfile
cd raindrops-tech-test
```
## How to run it
```Ruby
[3] pry(main)> require './lib/raindrops_convert.rb'
=> true
[4] pry(main)> raindrops_convert(3)
=> "Pling"
[5] pry(main)> raindrops_convert(5)
=> "Plang"
[6] pry(main)> raindrops_convert(7)
=> "Plong"
[7] pry(main)> raindrops_convert(15)
=> "PlingPlang"
[8] pry(main)> raindrops_convert(105)
=> "PlingPlangPlong"
[9] pry(main)> raindrops_convert(0)
=> "PlingPlangPlong"
[10] pry(main)> raindrops_convert(111)
=> "Pling"
[11] pry(main)> raindrops_convert(11)
=> 11
```
## How to test it
```
rspec
```
<img width="496" alt="screen shot 2018-05-17 at 16 44 25" src="https://user-images.githubusercontent.com/33848023/40188324-9586e00a-59f1-11e8-91fd-5b078e9691a2.png">
