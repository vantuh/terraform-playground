import { Hono } from 'hono';

const app = new Hono();

app.use(async (c, next) => {
  console.log(`${c.req.method} ${c.req.path}`);
  await next();
});

app.get('/api/test', (c) => {
  return c.text('Hello Hono!');
});

app.get('/api/test2', (c) => {
  return c.text('Hello Hono 2!');
});

app.onError((err, c) => {
  console.error('Error:', err);
  return c.text('Sorry. Internal Server Error', 500);
});

app.notFound((c) => {
  console.log('Not found:', c.req.path);
  return c.text('Sorry. Not Found', 404);
});

export default app;
