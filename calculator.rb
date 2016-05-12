#create / edit a file 
# stage the file - git add 
# make a commit
# push to a github repo

puts "welcome to the ruby calculator"

@result = 0
@cal_history = [ ]

# figure out how to do the math on the two numbers
# output result to the user
def calculate(first_num, op, second_num)

	op_array = ["+", "/", "*", "-", "{", "}"]

	if op_array.include?(op) == true

		if op == "+"
			@result = (first_num + second_num).to_f
			puts "The Result of #{first_num} + #{second_num} is #{@result}"
		elsif op == "*"
			@result = (first_num * second_num).to_f
			puts "The Result of #{first_num} * #{second_num} is #{@result}"
		elsif op == "-"
			@result = (first_num - second_num).to_f
			puts "The Result of #{first_num} - #{second_num} is #{@result}"
		elsif op == "/"
			if first_num != 0
				@result = (first_num / second_num).to_f
				puts "The Result of #{first_num} / #{second_num} is #{@result}"
			else
				puts "Undefined: indivisible by 0"
			end
		end

	else
		puts "Operator #{op} is not supported. I only support: + - / * @operator, Please try again."

	end
end

def menu_to_continue

	puts "Continue..."
	puts"1. Continue with current result"
	puts "2. Clear result"	
	puts "3. Get History"
	puts "4. Exit"

	input = gets.chomp.to_i 

	if input == 1

		# puts "enter an operator"
		puts "enter operator and number: "
		usr_input = gets.chomp
		@cal_history << usr_input
		cont_arry = usr_input.split(' ')
		op = cont_arry[0]
		num = cont_arry[1].to_f
		# num  = gets.chop.to_f
		calculate(@result, op, num)
		menu_to_continue

	elsif input == 2

		lets_calculate
		@cal_history = [ ]

	elsif input == 3

		# @cal_history.each {|x| puts x}
		puts @cal_history
		menu_to_continue

	elsif input == 4

		exit
	else
		puts "try again"
		menu_to_continue
	end

end


def lets_calculate
	# get first number
	# puts "Enter your first number: "
	# first_number = gets.chomp.to_f
	# # get operator
	# puts "Enter Operator"
	# opt = gets.chomp
	# # Enter second number
	# puts "Enter second number"
	# second_number = gets.chomp.to_f

	reg_exp = /\d+|\+|\-|\/|\/|\*|\(|\)/
	puts reg_exp

	puts "enter expression: "
	usr_input = gets.strip
    @cal_history << usr_input
	arr_input = usr_input.split(' ')
	puts "arry of splits"

	first_number = arr_input[0].to_f
	opt = arr_input[1]
	second_number = arr_input[2].to_f

	puts "Calculating.."
    
 #    calculate(first_number, opt, second_number)
	# menu_to_continue

end

# Run Main

puts lets_calculate





















