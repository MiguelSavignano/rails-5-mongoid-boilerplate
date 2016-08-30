import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'

export default @observer class Search extends React.Component {
  @observable users = this.props.users
  render() {
    return(
      <div>{
        this.users.map((user)=>(
          <div key={user.id} >
            {user.name}
          </div>
        ))
      }</div>
    )
  }
}
        // <ul>
        //   <li>{this.user_selected.name}</li>
        //   <li>{this.user_selected.address}</li>
        //   <li>{this.user_selected.id}</li>
        // </ul>
