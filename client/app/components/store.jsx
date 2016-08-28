import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'

var Store = observable({
  count: 0
})
Store.onCountUp = function(event) {
  Store.count++
}
Store.onCountDown = function(event) {
  Store.count--
}
export default Store
