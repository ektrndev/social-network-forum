const express = require('express')
const PORT = 8080
const app = express();
const userRouter = require('./routes/user.routes')
const postRouter = require('./routes/post.routes')
const commentRouter = require('./routes/comment.routes')



app.use(express.json())
app.use('/api', userRouter)
app.use('/api', postRouter)
app.use('/api', commentRouter)

app.listen(PORT, () => { console.log('Server is gone on 8080')});