<template>
  <div class="login-container">
    <img src="../assets/login/user_login_bg.png" alt="" class="wave" style="height: 100%;width: 100%;" />
    <div class="container">
      <div class="img"></div>
      <div class="login-box">
        <form action="#" style="width: 360px">
          <img src="../assets/login/智慧考试.svg" @click="toAdmin" alt="" class="avatar"
            style="cursor: pointer;height: 5rem;" />
          <h2 style="letter-spacing: 2px;font-size: 2.3rem;color: #ffffff;">SUFE考试系统</h2>
          <div class="radio-group">
            <div>
              <el-button icon="Avatar" round size="large" :type="isTch" @click="changeIdentity(2)">教师</el-button>
            </div>
            <div>
              <el-button icon="UserFilled" round size="large" :type="isStu" @click="changeIdentity(3)">学生</el-button>
            </div>
          </div>
          <div class="input-group">
            <div class="icon">
              <i class="fa fa-user" style="color:#39b1f0"></i>
            </div>
            <div>
              <input type="text" class="input" v-model="user.account" style="color: black;" />
            </div>
          </div>
          <div class="input-group">
            <div class="icon">
              <i class="fa fa-lock" style="color:#39b1f0"></i>
            </div>
            <div>
              <input class="input" type="password" v-model="user.password" style="color: black;" />
            </div>
          </div>
          <input type="button" class="btn" style="width:25%" value="登  录" @click="login()" />
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import User from "@/services/user";

export default {
  data() {
    return {
      user: new User("", "", "", "", ""),
      isTch: "",
      isStu: "",
    };
  },
  created() {
    if (this.$storage.getStorageSync("user")) {
      this.$router.push("/home");
    }
  },
  methods: {
    toAdmin() {
      this.$router.push("/admin/login").then(() => {
        window.location.reload();
      });
    },
    changeIdentity(id) {
      this.user.roleId = id;
      this.isTch = id == 2 ? "primary" : "";
      this.isStu = id == 3 ? "primary" : "";
    },

    isEmptyFields() {
      if (this.user.roleId == "") {
        this.$message.warning("请选择身份");
      } else if (this.user.account == "") {
        this.$message.warning("用户名不能为空");
      } else if (this.user.password == "") {
        this.$message.warning("密码不能为空");
      } else {
        return true;
      }
      return false;
    },
    login() {
      if (this.isEmptyFields()) {
        this.$axios
          .post("/user/login", {
            roleId: this.user.roleId,
            account: this.user.account,
            password: this.user.password,
          })
          .then((response) => {
            if (response.data.token) {
              // 将该登录用户的令牌移入store
              this.$storage.setStorageSync("user", response.data, 10800000);
              this.$router.push("/home");
            }
          })
          .catch((response) => {
            console.log(response);
            this.$message.error("存在错误，请检查！");
          });
      }
    },
  },
};
</script>

<style scoped>
@import url("../assets/login/user_login_style.css");
@import url("https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

.login-container {
  position: relative;
  width: 100%;
  height: 100%;
}

.login-box {
  background-color: rgba(230, 227, 227, 0.6);
  border: 1px solid rgba(230, 227, 227, 0.6);
  border-radius: 20px;
  box-shadow: 0px 0px 10px rgba(241, 240, 240, 0.5);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: 20px;
}
</style>
