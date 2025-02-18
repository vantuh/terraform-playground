import devServer from '@hono/vite-dev-server';
import { defineConfig, loadEnv } from 'vite';

export default defineConfig(({ mode }) => {
	const env = loadEnv(mode, process.cwd());

	return {
		server: {
			port: parseInt(env.VITE_PORT) ?? 3000
		},
		plugins: [
			devServer({
				entry: 'src/app.ts',
			}),
		],
	}
})