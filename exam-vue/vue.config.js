module.exports = {
  lintOnSave: false,

  devServer: {
    host: 'localhost',
    port: 8080,
    proxy: {
      '/api': {
        target: 'http://localhost:9090',
        changOrigin: true,
        pathRewrite: {
          '^/api': '',
        },
      },
      "ccc": {
        target: "http://127.0.0.1:5000",
        pathRewrite: {
          '^/ccc': ''
        },
        ChannelMergerNode: true
      },
    },
  },
}
