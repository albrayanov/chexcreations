const { environment } = require('@rails/webpacker')
const coffee =  require('./loaders/coffee')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
$: 'jquery',
  jQuery: 'jquery'
}))

module.exports = environment
