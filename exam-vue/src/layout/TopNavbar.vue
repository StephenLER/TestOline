<template>
  <div class="containers">
    <el-row class="topnav" style="margin-top: 0.5rem;">
      <el-col :span="4" class="logo-container">
        <img src="../assets/智慧考试.svg" class="logo-image">
        <span class="sufe-text">SUFE考试系统</span>
      </el-col>
      <el-col :span="20" class="user-info">
        <div class="user-container">
          <span class="username">{{ form.username }}</span>
          <el-dropdown class="user-dropdown">
            <img src="../assets/用户.svg" class="user-icon">
            <arrow-down />
            <template #dropdown>
              <el-dropdown-menu>
                <el-dropdown-item @click="dialogFormVisible = true">个人中心</el-dropdown-item>
                <el-dropdown-item @click="logOut()">退出登录</el-dropdown-item>
              </el-dropdown-menu>
            </template>
          </el-dropdown>
        </div>
      </el-col>
      <el-dialog title="修改个人信息" v-model="dialogFormVisible" width="600px">
        <el-form :model="form" :rules="formRules" ref="form" label-width="200px" label-position="right">
          <el-form-item label="账号" prop="account">
            <el-input v-model="form.account" readonly="readonly"></el-input>
          </el-form-item>
          <el-form-item label="名字" prop="username">
            <el-input v-model="form.username"></el-input>
          </el-form-item>
          <el-form-item label="密码" prop="password">
            <el-input type="password" v-model="form.password"></el-input>
          </el-form-item>
        </el-form>
        <template #footer>
          <span class="dialog-footer">
            <el-button @click="dialogFormVisible = false">取消</el-button>
            <el-button type="primary" @click="updateUser()">确定</el-button>
          </span>
        </template>
      </el-dialog>
    </el-row>
  </div>
</template>

<script>
import userToken from "@/services/auth-header";
import { dealSelect } from "@/services/response";
import User from "@/services/user";
import { ArrowDown } from '@element-plus/icons-vue';

export default {
  components: {
    ArrowDown,
  },
  data() {
    return {
      dialogFormVisible: false,
      oldPassword: "",
      username: "",
      form: new User("", "", "", "", ""),
      formRules: {
        username: [{ required: true, message: "请填写名字", trigger: "blur" }],
        password: [{ required: true, message: "请填写密码", trigger: "blur" }],
      },
      color: "",
    };
  },
  computed: {
    routeName() {
      const { name } = this.$route;
      return name;
    },
  },
  created() {
    if (this.$storage.getStorageSync("user")) {
      this.color = this.getColor();
      this.loadInfo(this.$storage.getStorageSync("user").id);
      this.$storage.setStorageSync("headerHeight", 60);
    }
  },
  methods: {
    getColor() {
      let result = "#";
      let arr = [
        "0",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
      ];
      for (let i = 0; i < 6; i++) {
        let num = parseInt(Math.random() * 16);
        result += arr[num];
      }
      return result;
    },

    loadInfo(id) {
      this.$axios
        .get("/user/findInfoById", {
          headers: { Authorization: userToken() },
          params: { userId: id },
        })
        .then((response) => {
          let res = dealSelect(response.data);
          if (res) {
            this.form = res;
            this.oldPassword = res.password;
            this.username = res.username;
          }
        });
    },
    updateUser() {
      this.$refs.form.validate((valid) => {
        if (valid) {
          let data = {
            userId: this.form.userId,
            username: this.form.username,
            roleId: this.form.roleId,
            status: "修改",
          };
          if (this.form.password != this.oldPassword) {
            data["password"] = this.form.password;
          }
          this.$axios
            .post("/user/save", this.$qs.stringify(data), {
              headers: { Authorization: userToken() },
            })
            .then(
              (response) => {
                this.dialogFormVisible = false;
                if (response.data) {
                  this.$message.success("修改成功");
                  this.username = this.form.username;
                } else {
                  this.$message.error("修改失败");
                }
                this.loadInfo(this.form.userId);
              },
              (error) => {
                this.$message.info("数据出错");
                console.log(error);
              }
            );
        }
      });
    },

    logOut() {
      this.$axios.post("/user/logout", {
        headers: { Authorization: userToken() },
      });
      this.$storage.removeStorageSync("user");
      this.$router.replace("/");
    },
  },
};
</script>

<style scoped>
.containers {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 0.2rem;
}

.topnav {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 1rem;
}

.logo-container {
  display: flex;
  align-items: center;
  z-index: 1;
}

.logo-image {
  width: 3rem;
  height: 3rem;
  margin-right: 0.5rem;
}

.sufe-text {
  font-family: 'Helvetica Neue', Arial, sans-serif;
  font-size: 1.7rem;
  font-weight: bold;
  color: #007bbb;
  text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
  letter-spacing: 0.05rem;
  line-height: 1.5;
  z-index: 1;
}

.user-info {
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

.user-container {
  display: flex;
  align-items: center;
}

.username {
  margin-right: 0.5rem;
  margin-top: 0.2rem;
  color: #165e83;
}

.user-dropdown {
  display: flex;
  align-items: center;
}

.user-icon {
  width: 2rem;
  border: none;
  outline: none;
  box-shadow: none;
  cursor: pointer;
}

.user-icon:hover {
  border: none;
  outline: none;
  box-shadow: none;
}

.arrow-icon {
  margin-left: 0.5rem;
}

.el-input {
  width: 250px;
}
</style>
