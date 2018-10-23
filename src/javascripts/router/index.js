import Vue from 'vue/dist/vue.esm'
import Router from 'vue-router'
import HomeTop from '../components/HomeTop.vue'
import UserList from '../components/UserList.vue'
import ReceivedLikesList from '../components/users/ReceivedLikesList.vue'
import MatchingInfo from '../components/users/MatchingInfo.vue'
import UserShowDetail from '../components/users/ShowDetail.vue'
import UserChatRoomList from '../components/users/ChatRoomList.vue'
import UserChatRoom from '../components/users/ChatRoom.vue'

Vue.use(Router)

export default new Router({
  hashbang: false,
  mode: 'history',
  routes: [
    {
      path: '/examples',
      name: 'HomeTop',
      component: HomeTop
    },
    {
      path: '/',
      name: 'UserList',
      component: UserList
    },
    {
      path: '/likes',
      name: 'ReceivedLikesList',
      component: ReceivedLikesList
    },
    {
      path: '/matchings',
      name: 'MatchingInfo',
      component: MatchingInfo
    },
    {
      path: '/users/chats/:room_id',
      name: 'UserChatRoom',
      component: UserChatRoom
    },
    {
      path: '/users/chats',
      name: 'UserChatRoomList',
      component: UserChatRoomList
    },
    {
      path: '/users/:user_id',
      name: 'UserShowDetail',
      component: UserShowDetail
    }
  ]
})
