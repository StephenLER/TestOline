<template>
  <div class="common-layout">
    <el-header style="height: 3.6rem;">
      <top-navbar></top-navbar>
    </el-header>
    <el-container direction="horizontal">
      <el-aside width="auto">
        <div @click="flag = !flag" style="margin-bottom: -1.5rem;">
          <img src="../assets/展开.svg" class="unfold">
        </div>
        <el-menu router class="el-menu-vertical-demo" background-color="#164a84" text-color="#fff"
          active-text-color="#000" default-active="home" :collapse="isCollapsed" :style="{ height: menuHeight }">
          <el-menu-item index="home" route="/home" class="nav-font">
            <el-icon><home-filled /></el-icon>
            <span slot="title" v-if="flag">系统首页</span>
          </el-menu-item>

          <el-menu-item index="major" route="/admin/major" class="nav-font" v-if="showAdmin">
            <el-icon>
              <grid />
            </el-icon>
            <span slot="title" v-if="flag">专业管理</span>
          </el-menu-item>
          <el-menu-item index="clazz" route="/admin/clazz" class="nav-font" v-if="showAdmin">
            <el-icon>
              <expand />
            </el-icon>
            <span slot="title" v-if="flag">班级管理</span>
          </el-menu-item>
          <el-menu-item index="user" route="/admin/user" class="nav-font" v-if="showAdmin">
            <el-icon><user-filled /></el-icon>
            <span slot="title" v-if="flag">用户管理</span>
          </el-menu-item>
          <el-menu-item index="subject" route="/admin/subject" class="nav-font" v-if="showAdmin">
            <el-icon><help-filled /></el-icon>
            <span slot="title" v-if="flag">科目管理</span>
          </el-menu-item>
          <el-menu-item index="questionType" route="/admin/questionType" class="nav-font" v-if="showAdmin">
            <el-icon>
              <list />
            </el-icon>
            <span slot="title" v-if="flag">题型管理</span>
          </el-menu-item>

          <!-- teacher -->
          <el-menu-item index="subjectInfo" route="/teacher/subjectInfo" class="nav-font" v-if="showTeacher">
            <el-icon><help-filled /></el-icon>
            <span slot="title" v-if="flag">科目管理</span>
          </el-menu-item>
          <el-menu-item index="question" route="/teacher/question" class="nav-font" v-if="showTeacher">
            <el-icon><trend-charts /></el-icon>
            <span slot="title" v-if="flag">题库管理</span>
          </el-menu-item>

          <el-menu-item index="test-build" route="/teacher/testBuild/0" class="nav-font" v-if="showTeacher">
            <el-icon>
              <checked />
            </el-icon>
            <span slot="title" v-if="flag">测验发布</span>
          </el-menu-item>
          <el-menu-item index="test-find" route="/teacher/testInfo" class="nav-font" v-if="showTeacher">
            <el-icon>
              <list />
            </el-icon>
            <span slot="title" v-if="flag">测验管理</span>
          </el-menu-item>

          <!-- student -->
          <el-menu-item index="stu-test" route="/student/test" class="nav-font" v-if="showStudent">
            <el-icon>
              <promotion />
            </el-icon>
            <span slot="title" v-if="flag">测验信息</span>
          </el-menu-item>
          <el-menu-item index="test-history" route="/student/testHistory" class="nav-font" v-if="showStudent">
            <el-icon>
              <list />
            </el-icon>
            <span slot="title" v-if="flag">测验记录</span>
          </el-menu-item>
        </el-menu>
      </el-aside>
      <el-main>
        <dashboard-content></dashboard-content>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import TopNavbar from "./TopNavbar.vue";
import DashboardContent from "./Content.vue";
export default {
  components: {
    TopNavbar,
    DashboardContent,
  },
  data() {
    return {
      showAdmin: false,
      showTeacher: false,
      showStudent: false,
      menuHeight: "100px",
      isCollapsed: false,
      flag: true
    };
  },
  created() {
    this.menuHeight =
      document.documentElement.clientHeight -
      this.$storage.getStorageSync("headerHeight") -
      40 +
      "px";

    let user = this.$storage.getStorageSync("user");
    if (user && user.roles) {
      this.showAdmin = user.roles.includes("ROLE_ADMIN");
      this.showTeacher = user.roles.includes("ROLE_TEACHER");
      this.showStudent = user.roles.includes("ROLE_STUDENT");
    }
  },
};
</script>

<style scoped>
.unfold {
  width: 1rem;
  margin-left: 3.3rem;
}

.el-menu-vertical-demo {
  border-radius: 15px !important;
  background-color: #164a84;
}

.el-header {
  padding-right: 0px !important;
}

.el-menu {
  margin: 20px;
  padding: 10px;
  border-radius: 24px;
}

.nav-font {
  font-weight: bold;
  font-size: 1rem;
  line-height: 3rem;
}

/* .el-icon {
  margin-right: 15px !important;
} */
.el-icon {
  font-size: 1.6rem;
}

.el-menu-item {
  margin-bottom: 2rem;
}

.el-menu-item:hover {
  background-color: #cce7ff !important;
  color: #003366 !important;
  border-radius: 20px;
}

.el-menu-item.is-active {
  background-color: #cce7ff !important;
  color: #003366 !important;
  border-radius: 20px;
}

.unfold {
  cursor: pointer;
}
</style>
