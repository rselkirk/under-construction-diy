var path = require('path');

module.exports = {
  devtool: 'cheap-module-source-map',
  entry: path.resolve(__dirname, './src/index.jsx'),
  output: {
    // path: path.join(__dirname, '../rails-server/public'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        loader: 'babel-loader',
        include: path.join(__dirname, 'src')
      },
      {
        test: /\.scss$/,
        use: [
          'style-loader',
          'css-loader',
          'sass-loader'
        ]
      }
    ]
  }
};
