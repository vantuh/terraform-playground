import build from '@hono/vite-build/node';
import devServer from '@hono/vite-dev-server';
import { defineConfig, loadEnv } from 'vite';

export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd());
  const PORT = parseInt(env.VITE_PORT) ?? 3000;

  return {
    server: {
      port: PORT,
    },
    plugins: [
      devServer({
        entry: 'src/app.ts',
      }),
      build({
        entry: 'src/app.ts',
        port: PORT,
      }),
    ],
  };
});
