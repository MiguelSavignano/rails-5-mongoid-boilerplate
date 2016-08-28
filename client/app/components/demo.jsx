import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'

var store = observable({
  count: 0
})
store.onCountUp = function(event) {
  store.count++
}
store.onCountDown = function(event) {
  store.count--
}

@observer class Demo extends React.Component {
  render() {
    return(
      <div>
        <button onClick={store.onCountUp}>+</button>
        <h1>{store.count}</h1>
        <button onClick={store.onCountDown}>-</button>
      </div>
    )
  }
}
export default Demo
