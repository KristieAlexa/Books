-- shows the longest books

Select Name, pagesnumber
From dbo.justbooks
order by 2 desc

--Shows how many books were published in 2004

Select COUNT(Name) 
FROM dbo.justbooks 
Where PublishYear = 2004


--Shows how many books were published by year


Select PublishYear, COUNT(PublishYear) AS TotalSold
FROM dbo.JustBooks 
GROUP BY PublishYear


--Join showing Names and Ratings

Select dbo.JustBooks.Id, dbo.JustBooks.Name, dbo.RankingforBooks.rating 
FROM dbo.justbooks
Join dbo.RankingforBooks
on dbo.justbooks.id = dbo.RankingforBooks.id



-- Question Do more reviews get higher ratings?
Select dbo.JustBooks.Id, dbo.JustBooks.Name, dbo.RankingforBooks.rating, dbo.RankingforBooks.CountsOfReview
FROM dbo.justbooks
Join dbo.RankingforBooks
on dbo.justbooks.id = dbo.RankingforBooks.id
Order by 4 Desc

Select dbo.JustBooks.Id, dbo.JustBooks.Name, dbo.RankingforBooks.rating, dbo.RankingforBooks.CountsOfReview
FROM dbo.justbooks
Join dbo.RankingforBooks
on dbo.justbooks.id = dbo.RankingforBooks.id
WHERE dbo.RankingforBooks.CountsOfReview <> 0
Order by 3 Desc


























