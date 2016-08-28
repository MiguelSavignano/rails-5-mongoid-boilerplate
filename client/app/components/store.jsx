import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'

@observer class Store extends React.Component {
  constructor(props) {
    super(props)
    _.bindAll(this, ['onCountUp', "onCountDown"])
  }
  onCountUp(event) {
    this.count++
  }
  onCountDown(event) {
    this.count--
  }
  render(){
    return <div></div>
  }
}
