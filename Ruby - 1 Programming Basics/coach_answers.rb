def coach_answer(your_message)
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.end_with?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  if your_message.upcase == your_message && your_message != "I AM GOING TO WORK RIGHT NOW!"
    return "I can feel your motivation! #{answer}"
  elsif your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  else
    return answer
  end
end
