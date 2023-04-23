const { environment } = require('@rails/webpacker')
const tailwindcss = require('tailwindcss')

environment.loaders.append('tailwindcss', {
  test: /\.scss$/,
  use: [
    {
      loader: 'postcss-loader',
      options: {
        postcssOptions: {
          plugins: [
            tailwindcss('./tailwind.config.js'),
            require('autoprefixer')
          ],
        },
      },
    },
  ],
})

module.exports = environment
