<template>
  <div>
    <h2>とりあえず機能単位のコンポーネントをここに。</h2>
    <get-info></get-info>
    <sign-up></sign-up>
    <sign-in></sign-in>
    <sign-out></sign-out>
    <user-list></user-list>
    <show-detail></show-detail>
  </div>
</template>

<script>
import GetInfo from './users/GetInfo.vue'
import SignUp from './users/SignUp.vue'
import SignIn from './users/SignIn.vue'
import SignOut from './users/SignOut.vue'
import UserList from './UserList.vue'
import ShowDetail from './users/ShowDetail.vue'
export default {
  components: {
    GetInfo,
    SignUp,
    SignIn,
    SignOut,
    UserList,
    ShowDetail
  }
}
</script>

<style scoped>
</style>
