class BeastieBoys
  studio_albums = {
    '1986' => 'Licensed to Ill',
    '1989' => 'Paul\'s Boutique',
    '1992' => 'Check Your Head',
    '1994' => 'Ill Communication',
    '1998' => 'Hello Nasty',
    '2004' => 'To the 5 Boroughs',
    '2007' => 'The Mix-up',
    '2011' => 'Hot Sauce Committee Part Two'
  }

  $stdout.write("Type 'albums' please.  ")
  answer = $stdin.gets.chomp
  if answer =="albums"
    puts studio_albums.sort
  else puts "Pretty please, try again"

    $stdout.write("What year would you like\? ")
    answer = $stdin.gets.chomp
    if answer != studio.albums.year
      puts "Pretty please, try again"
    end
  end
end
