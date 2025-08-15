module Domain.Validation where

newtype NonEmpty = NonEmpty String

sanitize :: String -> Maybe NonEmpty
sanitize s =
  let trim = reverse . dropWhile (== ' ') . reverse . dropWhile (== ' ')
  in case trim s of
       "" -> Nothing
       t  -> Just (NonEmpty t)

render :: Maybe NonEmpty -> String
render (Just (NonEmpty s)) = "ok: " ++ s
render Nothing             = "error: empty"
