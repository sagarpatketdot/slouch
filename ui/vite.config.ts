import { defineConfig } from 'vite'
import tsConfigPaths from 'vite-tsconfig-paths'
import { tanstackStart } from '@tanstack/react-start/plugin/vite'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  tsr: {
    appDirectory: "src"
  },
  server: {
    port: 3000,
  },
  plugins: [tsConfigPaths(), tailwindcss(), tanstackStart()],
})
