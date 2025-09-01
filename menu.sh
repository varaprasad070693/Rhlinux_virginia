#!/bin/bash

echo "Welcome to the Hotel Food Menu"
echo "--------------------------------"
echo "1. Idli - Rs. 50"
echo "2. Dosa - Rs. 80"
echo "3. Poori - Rs. 40"
echo "0. Exit"
echo "--------------------------------"
echo "Enter the number corresponding to your food choice"

total_bill=0

select_item() {
  case $1 in
    1)
      total_bill=`expr $total_bill + 50`
      echo "Idli added to your order. Price: Rs. 50"
      ;;
    2)
      total_bill=$((total_bill + 80))
      echo "Dosa added to your order. Price: Rs. 80"
      ;;
    3)
      total_bill=$((total_bill + 40))
      echo "Poori added to your order. Price: Rs. 40"
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
}

while true; do
  read -p "Enter your option: " opt
  if [ "$opt" -eq 0 ]; then
	  break # break is to come out of loop/switch statment(if to while),where exit is used to terminate the script with values(0 means pass,non-zero fail)
  fi
  select_item $opt
  echo "--------------------------------"
  echo "Do you want to add more items? Enter a number (1-3) or 0 to exit"
  echo "1. Idli - Rs. 50"
  echo "2. Dosa - Rs. 80"
  echo "3. Poori - Rs. 40"
  echo "0. Exit"
done

# Display total bill
echo "--------------------------------"
echo "Your total bill is: Rs. $total_bill"
echo "Thank you for dining with us!"

