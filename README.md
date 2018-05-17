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
