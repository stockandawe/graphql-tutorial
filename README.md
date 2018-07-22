# README

### Sample Requests to make in GraphQL playground

#### Get all links, votes and total votes
```
{
  allLinks {
    id
    description
    votes {
      id
    }
    votes_count
  }  
}
```

#### Sign in and vote for a link
```
mutation{
  signinUser (
    email: {
      email: "test@example.com",
      password: "123456"
    }
  )
  {
    token
    user {
      id
    }
  }

  createVote(linkId: "4") {
    link {
      id
      description
    }
    user {
      name
    }
  }
}
```

#### Get all users and their votes
```
{
  allUsers {
    id
    name
    votes {
      link {
        description
      }
    }
  }
}
```
