#!/bin/sh

search()
{
	read SEARCH_STRING

	grep "$SEARCH_STRING" addressbook.txt
}

add_entry()
{
	read ENTRY
	echo $ENTRY >> addressbook.txt

}

while :
do
	echo "Choose something to do in the address book:
	1. Search the address book.
	2. Add an entry.
	3. Remove or edit an entry."

	read INPUT_STRING

	case $INPUT_STRING in
		1) search ;;
		2) add_entry ;;
		*) echo "Not a valid input." ;;
	esac


	echo "You have selected: $INPUT_STRING"
done
