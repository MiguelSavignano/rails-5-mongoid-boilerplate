import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'
import {Store}              from '../../app'

export default @observer class Demo extends React.Component {
  render() {
    return(
      <div>
        <button onClick={Store.onCountUp}>+</button>
        <h1>{Store.count}</h1>
        <button onClick={Store.onCountDown}>-</button>
      </div>
    )
  }
}
