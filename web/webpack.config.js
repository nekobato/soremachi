var WebpackNotifierPlugin = require('webpack-notifier');

module.exports = {
  context: __dirname,
  entry: "./index.coffee",
  output: {
    path: __dirname + "/build",
    filename: "app.js"
  },
  resolve: {
    extensions: ["", ".webpack.js", ".web.js", ".js", ".coffee"]
  },
  module: {
    loaders: [
      {
        test: /\.coffee$/,
        loader: "coffee"
      },
      {
        test: /\.jade$/,
        loader: "jade"
      },
      {
        test: /\.less$/,
        loader: "style!css!pleeease"
      },
      {
        test: /.*\.(gif|png|jpe?g|svg)$/i,
        loaders: 'file?name=./build/img/[hash].[ext]!img'
      }
    ]
  },
  pleeease: {
    less: true,
    autoprefixer: { browsers: ["last 2 versions"]},
    minifier: true,
    mqpacker: true
  },
  plugins: [
    new WebpackNotifierPlugin({title: 'Webpack'}),
  ],
  devtool: "#source-map"
}
