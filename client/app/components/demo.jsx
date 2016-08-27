import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'


export default @observer class Demo extends React.Component {
  constructor(props) {
    super(props)
    _.bindAll(this, ['onCountUp', "onCountDown"])
  }
  @observable count = 0;
  onCountUp(event) {
    this.count++
  }
  onCountDown(event) {
    this.count--
  }
  render() {
    return(
      <div>
        <button onClick={this.onCountUp}>+</button>
        <h1>{this.count}</h1>
        <button onClick={this.onCountDown}>-</button>
      </div>
    )
  }
}
