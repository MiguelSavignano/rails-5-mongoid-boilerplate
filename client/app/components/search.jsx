import React, { PropTypes } from 'react'
import {observable}         from 'mobx'
import {observer}           from "mobx-react"
import _                    from 'lodash'


const SearchInput = (props) =>(
  <input placeholder="Search"
    onKeyUp={props.onSearch} />
)

@observer class Search extends React.Component {
  @observable users_filterd = this.props.users
  @observable users = this.props.users
  onSearch(event){
    let searchValue = event.target.value
    this.users_filterd = this.users.filter( (user) => (
      (new RegExp(searchValue, "i") ).test(user.name)
    ))
  }
  render() {
    return(
      <div>
        <SearchInput onSearch={this.onSearch.bind(this)}/>
        <ul>{
          this.users_filterd.map((user)=>(
            <li key={user.id} >
              {user.name}
            </li>
          ))
        }</ul>
      </div>
    )
  }
}
export {Search as default, SearchInput }
