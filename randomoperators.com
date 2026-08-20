import random

while True:
    user_action = input("Enter a choice - (rock, paper, scissors): ")
    possible_actions = ["rock","paper","scissors"]

    computer_action = random.choice(possible_actions)

    print(f"\nYou chose {user_action}, Computer chose {computer_action}.\n")

    if user_action == computer_action:
        print(f"You both chose {user_action}. It's a tie.")
    elif user_action == "rock":
        if computer_action == "scissors":
            print("Rock smashes scissors, you win!")
        else:
            print("Paper covers rock, you lose.")
    elif user_action == "paper":
        if computer_action == "rock":
            print("Paper covers rock, you win!")
        else:
            print("Scissor cuts paper, you lose.")
    elif user_action == "scissors":
        if computer_action == "paper":
            print("Scissor cuts paper, you win!")
        else:
            print("Rock breaks scissors, you lose.")
    
    play_again = input("Play again? (yes/no): ")

    if play_again != "yes":
        print("Thank you for trying out 'Rock, Paper, Scissors'. Hope you enjoyed it!")
        break
