import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'

export default @observer class Demo1 extends React.Component {
  @observable users = this.props.users
  @observable user_selected = this.users[0]
  onSelectUser(event){
    const user_id = event.target.value
    this.user_selected = this.users.find( (user) => user.id == user_id )
  }
  render() {
    return(
      <div>
        <ul>
          <li>{this.user_selected.name}</li>
          <li>{this.user_selected.address}</li>
          <li>{this.user_selected.id}</li>
        </ul>
        <select className="form-control" onChange={this.onSelectUser.bind(this)}>{
          this.users.map((user)=>(
            <option key={user.id} value={user.id}>
              {user.name}
            </option>
          ))
        }</select>
      </div>
    )
  }
}
