
print "Amount Borrowed: "
amount_borrowed = gets.chomp.to_i

puts amount_borrowed

print "Interest Rate: "
interest = gets.to_f
interest_rate = amount_borrowed / 100 * interest

puts "#{interest} %"

print "Length of Loan: "
loan_length = gets.to_i

puts "#{loan_length} years."

yearly_interest = interest_rate / loan_length

monthly_interest = yearly_interest / 12

yearly_loan_repayments = amount_borrowed / loan_length

monthly_loan_repayments = yearly_loan_repayments / 12

total_monthly_repayments = monthly_loan_repayments + monthly_interest

puts "Based on the amount borrowed of #{amount_borrowed}, your monthly repayments will be #{total_monthly_repayments.to_i} for #{loan_length} years. "
