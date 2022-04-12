const mongoose = require('mongoose')

const subscriptionSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true
    },
    start: {
      type: String,
      required: true
    },
    end: {
      type: String,
      required: true
    },
    price: {
      type: String,
      required: true
    },
    notes: {
      type: String,
      required: false
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User'
    }
  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Subscription', subscriptionSchema)
