lesson_set "A Tour of Hackety Hack" do
  lesson "Welcome!"
  page "Why hello there!" do 
    para "Welcome to the Hackety Hack tour!"
    flow do
      para "This whole side of the screen is the ", em("Hackety Hack Tutor"),
            ". You can move forward through the lessons by clicking the ", 
            em("Next"), " button:"
            
      icon_button :arrow_right, nil do
        alert "You should click on the actual button, below! =)"
      end
    end
    
    para "Give it a shot!"
  end

  page "Good Job!" do

    para "See? Super easy. Let's explore the rest of Hackety Hack."
    para "You can access the different functions of Hackety through the buttons ",
         "on the left side of the screen. For example, you got here by clicking ",
         "on 'Lessons.' There are 8 of those buttons, ",
         "but since you're already on Lessons, let's talk about them first."
    para "Before we move on, just take a minute to look at the controls in the bar below."
    flow do
      icon_button :arrow_left, nil
      para strong("back"), ": goes back one page"
    end
    flow do
      icon_button :arrow_right, nil
      para strong("continue"), ": goes to the next page"
    end
    flow do
      icon_button :menu, nil
      para strong("menu"), ": makes it easy to jump around to any lesson"
    end
    flow do
      icon_button :x, nil
      para strong("close"), ": closes the tutor"
    end
    para "Don't forget! Press this to move to the next part:"
    icon_button :arrow_right, nil
    para "Have at it!"
  end

  lesson "Lessons"

  page "A Lesson lesson." do
    para "When you click on the Lesson button, it'll bring you to a list of all of ",
         "the lessons that come with Hackety. For now, there's just a few. More ",
         "Lessons will be added, and eventually, you'll be able to write and share ",
         "your own Lessons with other Hackety Hackers."
    para "Lessons are just simple ", 
         link("Markdown", :click=>'http://daringfireball.net/projects/markdown/syntax'), 
         " files. ",
         "Markdown looks just like writing normal text, but with some extra ",
         "characters for text that's ", strong("bold"), " or ", em("italicized"),
         ", adding images, and stuff like that."
  end

  lesson "Home"
  page "Welcome Home" do
    para "This is the home screen, which shows you two very important things: your ",
         "own programs, and the sample programs. Everyone starts off with one simple ",
         "program: Hello, world! Check it out:\n"
    embed_code 'alert "Hello, world!"', :run_button => true
    para "This is an actual Ruby program! You'll ",
         "learn more about Ruby itself in the Beginning Ruby Lesson."
  end

  page "Samples" do flow do
    para "If you click on the 'Samples' tab, you can see a bunch of sample programs ",
         "that we've included for some inspiration. There's a few interesting ",
         "animations, some games, and a few other things."
    para "That's all there really is to say about the homepage. Try opening the ",
         "Editor. Here's its icon:"
    image "#{HH::STATIC}/tab-new.png", :margin => 6 do
      alert("Not this one, silly! the one on the left!")
    end
  end end

  lesson "Editor"
  page "Using the Editor" do
    para "This is where the magic happens: all of your programs will be created in ",
         "the editor. Give it a shot: try typing this program in.\n"
    embed_code 'name = ask "What is your name?"
alert "Hello, " + name + "."'
    para "\nAfter doing so, you can try running the program by pressing the ",
         "'Run' button in the lower right corner."
  end

  page "Saving and Uploading Programs" do
    para "To save your program, simply click the 'Save' button. It'll prompt you for ",
         "a title, and then the program will appear on your Home screen."
    para "Once you've saved your program, two new buttons appear: 'Copy' and 'Upload.",
         "' Copy will duplicate your program, and then ask you for a new name. This ",
         " is really useful if you'd like to modify one of the example programs. ",
         "Upload will send a copy of your program to the Hackety Hack website, ",
         "where you can show it off to other Hackety Hackers. :) More about this ",
         "when we talk about Preferences."
  end

  lesson "Help"
  page "Getting Help" do flow do
    para "The next tab is the Help tab. It looks like this: "
    image "#{HH::STATIC}/tab-help.png", :margin => 6 do
      alert("Not this one, silly! the one on the left!")
    end
    para " Click it, and it'll open up a new window. Browse around and come back, ",
         "I'll be here."
  end end

  page "Okay, well... Shoes." do
    para "That's a lot of help! Hackety Hack is built with Shoes, which is a ",
         "toolkit for creating GUI programs in Ruby. All of the programs that ",
         "you make in Hackety Hack are built with Shoes. That manual contains ",
         "the entire Shoes reference, and there's a lot! Luckily, there's also ",
         "a much shorter cheat sheet too..."
  end

  lesson "Cheat"
  page "Short and sweet." do 
    para "Peek at the Cheat Sheet by clicking the icon like this:"
    image "#{HH::STATIC}/tab-cheat.png", :margin => 6 do
      alert("Not this one, silly! the one on the left!")
    end
    para "The Cheat Sheet is much simpler. It just contains some helpful bits ",
         "that you should find useful. A quick reference of often used bits. ",
         "And a short sheet deserves a short explanation."
  end

  lesson "About"
  page "About Hackety" do
    para "The classic About box. These have been around basically since the ",
         "beginning of time. It's just a fun little image that tells you what ",
         "version of Hackety Hack you're using. It'll change with every release."
   
    image "#{HH::STATIC}/tab-hand.png", :margin => 6 do
      alert("Not this one, silly! the one on the left!")
    end
   
    para "Time for the last one..."
  end

  lesson "Preferences"
  page "I do prefer..." do
    para "The Preferences icon is towards the ",
         "bottom, and looks like this:"
    image "#{HH::STATIC}/tab-properties.png" do
      alert("Not this one, silly! the one on the left!")
    end
    para "This lets you adjust your preferences for Hackety Hack. Right now, there's ",
         "only one preference: linking Hackety with your account on ",
         link("hackety-hack.com", :click => "http://hackety-hack.com"), ". You ",
         strong("do"), " have one of those, right?"
    para "If you link your account, you can upload your programs to the website ",
         "and easily share them with others! More interesting features will be ",
         "developed along these lines, so sign up, stick your info in, and prepare ",
         "for all kinds of awesome."
  end

  lesson "Quit"
  page "Self-explanatory" do
    para "If you did click the quit icon, well, you wouldn't be here anymore. ",
         "And that'd be unfortunate. So, don't click it until you're good and ready. ",
         "When it's your time to go, it'll be there waiting for you."
    image "#{HH::STATIC}/tab-quit.png" do
      alert("Not this one, silly! the one on the left!")
    end
    para "Come back soon!"
  end

  lesson "... and beyond!"
  page "What now?" do
    para "This concludes the Hackety Hack tour. Good job! Now you know everything ",
         "that Hackety Hack can do. It's pretty simple!"
    para "This isn't the only lesson that we have for you, though. Give the ",
         "'Basic Programming' lesson a shot to actually start learning how to ",
         "make programs of your own."
    para "What are you waiting for? Get going!"
  end

end
