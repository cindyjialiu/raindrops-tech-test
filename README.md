# Raindrops Tech Test
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
- Followed TDD
- I started with listing all the possible situations of the factors, 3, 5, 7, 15, 21, 35, 105. and decided the first step is to check is if the number is divisible by any of these factors. I defined a method divisible_by? to check if the number is divisible_by any of the factors.
- Created a method raindrops_convert converts the number into the correct string.
- If the number meets any of the statement as above, I need someway to tell the number which is the string needs to be returned, listing all the if statements don't look nice and also not efficient, so I used hash to store the rules and can look up from it.
- Then used method map to iterate the hash and get the array with all the strings after checking if the number is divisible by each factor, and join the array into a string in the end.
- The last step is checking if the array is empty or not, if so, it means the number is not divisible by any of the factors, so it needs to return the original number.
- Refactor
- The whole approach is trying to avoid using side effect to change original value and make sure everything is tested properly.

![screen shot 2018-05-17 at 16 48 22](https://user-images.githubusercontent.com/33848023/40188682-66bf8c3a-59f2-11e8-8ea0-804a4ee6e19a.png)
![screen shot 2018-05-17 at 16 47 46](https://user-images.githubusercontent.com/33848023/40188686-68e6e47c-59f2-11e8-9121-76414b7e52e5.png)

## Setup
```bash
git clone git@github.com:cindyjialiu/raindrops-tech-test.git
$run bundle install to install all the dependencies in Gemfile
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
## How to run the tests
```bash
$run rspec
```
<img width="496" alt="screen shot 2018-05-17 at 16 44 25" src="https://user-images.githubusercontent.com/33848023/40188324-9586e00a-59f1-11e8-91fd-5b078e9691a2.png">
