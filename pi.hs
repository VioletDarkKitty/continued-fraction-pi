module Pi where

piFracMethod :: Int -> Double
piFracMethod count =
	piFracHelper count 4 1
	where
		piFracHelper 0 currentPI k = currentPI
		piFracHelper count currentPI k =
			piFracHelper (count - 1) nextPI (k + 4)
			where
				nextPI = (currentPI -	(4 / (k + 2)) + (4 / (k + 4)))
	

