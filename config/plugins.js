module.exports = ({ env }) => ({
  calendar: {
    enabled: true,
    config: {
      enabled: true
    }
  },

  email: {
    config: {
      provider: 'sendgrid',
      providerOptions: {
        apiKey: env('SENDGRID_API_KEY'),
      },
      settings: {
        defaultFrom: 'iisakki.kivimaki@gmail.com',
        defaultReplyTo: 'iisakki.kivimaki@gmail.com',
      },
    },
  },
});