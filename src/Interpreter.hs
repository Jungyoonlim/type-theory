module Interpreter where

import Domain.Intent

plan :: Intent -> [String]
plan (WriteEmail { to = addr, subject = subj }) =
  [ "Check address: " ++ addr
  , "Compose subject: " ++ subj
  , "Send via SMTP"
  ]
plan (Schedule ps t) =
  [ "Check calendars: " ++ show ps
  , "Propose time: " ++ t
  , "Send invites"
  ]
