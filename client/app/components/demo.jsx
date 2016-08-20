import React, { PropTypes } from 'react';

export default class Demo extends React.Component {
  constructor(props) {
    super(props)
    _.bindAll(this, ['onCountUp', "onCountDown"])
    this.state = {
      count: 0
    }
  }
  onCountUp(event) {
    this.setState({
      count: this.state.count + 1
    });
  }
  onCountDown(event) {
    this.setState({
      count: this.state.count - 1
    });
  }
  render() {
    const {count} = this.state
    return(
      <div>
        <button onClick={this.onCountUp}>+</button>
        <h2> {count} </h2>
        <button onClick={this.onCountUp}>-</button>
      </div>
    )
  }
}
