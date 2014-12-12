import Graphics.Element (..)
import List
import Text (..)

main : Element
main =
    flow down
      [ helloWorld
      , welcomeGraphics
      ]

helloWorld : Element
helloWorld =
    asText "Hello, World!"

welcomeGraphics : Element
welcomeGraphics =
    let dimensions = 90
        imgSize = 30
        elmLogo =
          image imgSize imgSize "http://elm-lang.org/logo.png"

        elmsPerSide = dimensions // imgSize

        row =
          flow right (List.repeat elmsPerSide elmLogo)
    in
        flow down (List.repeat elmsPerSide row)
