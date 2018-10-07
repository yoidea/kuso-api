# README

## Requirements
- Ruby 2.5
- something

## Run

```bash
bundle install
bin/rails db:migrate
bin/rails server -p $PORT
```

## Endpoint

### GET /posts

```bash
curl /posts | jq
[
  {
    "id": 1,
    "command": "ls-l",
    "message": "スペースうぅ",
    "created_at": "2018-10-06T05:08:44.394Z",
    "updated_at": "2018-10-06T05:08:44.394Z"
  },
  {
    "id": 2,
    "command": "sl",
    "message": "あああああああ",
    "created_at": "2018-10-06T05:08:44.410Z",
    "updated_at": "2018-10-06T05:08:44.410Z"
  },
  {
    "id": 3,
    "command": "sudo rm -rf /",
    "message": "マジクソ",
    "created_at": "2018-10-06T05:08:44.426Z",
    "updated_at": "2018-10-06T05:08:44.426Z"
  }
]
```

### POST /posts

```bash
curl -X POST localhost:3000/posts -d "command=cd&message=oh" | jq
{
  "id": 3,
  "command": "cd",
  "message": "oh",
  "created_at": "2018-10-06T05:08:44.426Z",
  "updated_at": "2018-10-06T05:08:44.426Z"
}
```