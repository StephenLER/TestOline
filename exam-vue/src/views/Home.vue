<template>
  <div style="display: flex; margin-top: 20px; flex-direction: column;">
    <el-row v-if="roleName === 'ROLE_ADMIN'" :gutter="20">
      <el-col :span="24">
        <el-row>
          <el-col :span="12">
            <el-card class="equal-height welcome-card" style="border-radius: 30px;">
              <div class="welcome-container">
                <img src="../assets/欢迎喇叭.svg" alt="欢迎喇叭" class="welcome-icon">
                <h2 class="welcome-text">欢迎登录本系统</h2>
              </div>
            </el-card>
          </el-col>
          <el-col :span="12">
            <el-card class="equal-height" style="border-radius: 30px;">
              <div class="scroll-container">
                <ul class="scroll-list">
                  <li v-for="(log, index) in loginLogs" :key="index" class="log-item">
                    {{ log }}
                  </li>
                </ul>
              </div>
            </el-card>
          </el-col>
        </el-row>
      </el-col>
      <el-col :span="24" style="margin-top: 20px">
        <el-row>
          <el-col :span="12">
            <el-card style="border-radius: 30px;">
              <div ref="totalVisits" style="width: 100%; height: 250px"></div>
            </el-card>
          </el-col>
          <el-col :span="12">
            <el-card style="border-radius: 30px;">
              <div ref="loginTrends" style="width: 100%; height: 250px"></div>
            </el-card>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row v-else :gutter="20">
      <el-col :span="12" style="margin-top: 1rem">
        <el-card class="equal-height welcome-card">
          <div class="welcome-container">
            <img src="../assets/欢迎喇叭.svg" alt="欢迎喇叭" class="welcome-icon">
            <h2 class="welcome-text">欢迎登录本系统</h2>
          </div>
        </el-card>
      </el-col>
      <el-col :span="12" style="margin-top: 1rem">
        <el-card style="color:#164a84">
          <h3>服务热线: 123-456-7890</h3>
          <h3>电子邮箱: SUFE@mail.shufe.edu.cn</h3>
          <h3>办公地址: 上海市杨浦区国定路777号</h3>
          <div style="text-align: center;">
            <img src="../assets/联系我们.svg" alt="欢迎喇叭" class="welcome-icon">
          </div>
        </el-card>
      </el-col>
      <el-col :span="24" style="margin-top: 1rem">
        <el-row :gutter="20" style="margin-top: 20px">
          <el-col :span="8" v-for="data in cardData.slice(0, 3)" :key="data.title">
            <number-card :title="data.title" :subtitle="data.subtitle" :src="data.src" :number="data.number">
            </number-card>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import userToken from "@/services/auth-header";
import { dealSelect } from "@/services/response";
import User from "@/services/user";
import * as echarts from 'echarts';
import numberCard from "@/components/NumberCard.vue";
export default {
  components: {
    numberCard,
  },
  data() {
    return {
      user: new User("", "", "", "", ""),
      cardData: [
        {
          title: "",
          subtitle: "",
          src: "",
          number: 0,
        },
        {
          title: "",
          subtitle: "",
          src: "",
          number: 0,
        },
        {
          title: "",
          subtitle: "",
          src: "",
          number: 0,
        },
        {
          title: "",
          data: [],
        },
      ],
      roleName: "",
      loginLogs: [
        "陈双双同学 2024年06月03日 09 : 41 登录SUFE考试系统",
        "刘学昕同学 2024年06月03日 03 : 16 登录SUFE考试系统",
        "胡浩栋教师 2024年06月02日 22 : 00 登录SUFE考试系统",
        "胡若璇同学 2024年06月02日 21 : 06 登录SUFE考试系统",
        "徐政宇同学 2024年06月02日 13 : 28 登录SUFE考试系统",
        "林静如同学 2024年06月02日 11 : 35 登录SUFE考试系统",
        "姜国敏教师 2024年06月01日 17 : 27 登录SUFE考试系统",
        "郑延倩同学 2024年06月01日 16 : 58 登录SUFE考试系统",
        "陈天麒同学 2024年06月01日 14 : 49 登录SUFE考试系统",
        "康邦盛同学 2024年05月31日 20 : 36 登录SUFE考试系统",
        "崔吉易同学 2024年05月31日 17 : 07 登录SUFE考试系统",
        "史家毅同学 2024年05月31日 15 : 55 登录SUFE考试系统",
        "姜国敏教师 2024年05月31日 12 : 13 登录SUFE考试系统",
        "曹忠隆同学 2024年05月31日 11 : 47 登录SUFE考试系统",
        "呂芯怡同学 2024年05月31日 08 : 39 登录SUFE考试系统",
        "樊俐君同学 2024年05月31日 06 : 09 登录SUFE考试系统",
        "易彦妤同学 2024年05月29日 23 : 59 登录SUFE考试系统",
        "石紫琪同学 2024年05月29日 16 : 40 登录SUFE考试系统",
        "陈双双同学 2024年05月29日 15 : 41 登录SUFE考试系统",
        "班茗子同学 2024年05月29日 15 : 06 登录SUFE考试系统",
        "胡若璇同学 2024年05月29日 13 : 58 登录SUFE考试系统",
        "吳采欣同学 2024年05月29日 10 : 19 登录SUFE考试系统",
        "任淑萍同学 2024年05月29日 09 : 54 登录SUFE考试系统",
        "王欣仪同学 2024年05月29日 07 : 28 登录SUFE考试系统",
        "刘学昕同学 2024年05月28日 15 : 31 登录SUFE考试系统",
      ]
    };
  },
  created() {
    this.loadUserInfo().then((response) => {
      this.roleName = this.$storage.getStorageSync("user").roles[0];
      switch (this.roleName) {
        case "ROLE_ADMIN":
          this.drawAdminCharts();
          break;
        case "ROLE_TEACHER":
          this.loadTeacherData(this.user.username + "教师");
          break;
        case "ROLE_STUDENT":
          this.loadStudentData(this.user.username + "同学");
          break;
      }
    });
  },
  methods: {
    loadUserInfo() {
      return this.$axios
        .get("/user/findInfoById", {
          headers: { Authorization: userToken() },
          params: {
            userId: this.$storage.getStorageSync("user").id,
          },
        })
        .then((response) => {
          let res = dealSelect(response.data);
          if (res) {
            this.user = res;
          }
        });
    },
    loadTeacherData(suffix) {
      this.$axios
        .get("/user/loadHomeData", {
          headers: { Authorization: userToken() },
          params: { userId: this.user.userId, roleId: this.user.roleId },
        })
        .then((response) => {
          let res = dealSelect(response.data);
          if (res) {
            this.cardData = [
              {
                title: "所授科目总数",
                subtitle: suffix + "管理的所有科目总计",
                src: require("../assets/home/icon_subject.png"),
                number: res.subject,
              },
              {
                title: "创建题目总数",
                subtitle: suffix + "在所有科目下创建的题目数量总和",
                src: require("../assets/home/icon_question.png"),
                number: res.question,
              },
              {
                title: "发布测验总数",
                subtitle: suffix + "在所有科目下发布的测试数量总和",
                src: require("../assets/home/icon_test.png"),
                number: res.test,
              },
              {
                title: "近七天完成测验的人次",
                data: [2, 3, 7, 12, 3, 6, 9],
              },
            ];
          }
        });
    },

    loadStudentData(suffix) {
      this.cardData = [
        {
          title: "已完成测验",
          subtitle: suffix + "已完成的测验总计",
          src: require("../assets/home/icon_complete.png"),
          number: 0,
        },
        {
          title: "平均正确率",
          subtitle: suffix + "在所有测验中的平均正确率",
          src: require("../assets/home/icon_test.png"),
          number: 0,
        },
        {
          title: "最高正确率",
          subtitle: suffix + "在所有测验中的最高正确率",
          src: require("../assets/home/icon_success.png"),
          number: 0,
        },
        {
          title: "近七天完成测验的次数",
          data: [],
        },
      ]
      this.$axios
        .get("/user/loadHomeData", {
          headers: { Authorization: userToken() },
          params: { userId: this.user.userId, roleId: this.user.roleId },
        })
        .then((response) => {
          let res = dealSelect(response.data);
          if (res) {
            this.cardData = [
              {
                title: "未完成测验",
                subtitle: suffix + "尚未完成且未结束的测验总计",
                src: require("../assets/home/icon_complete.png"),
                number: res.complete,
              },
              {
                title: "平均正确率",
                subtitle: suffix + "在所有测验中的平均正确率",
                src: require("../assets/home/icon_test.png"),
                number: res.average.toFixed(2),
              },
              {
                title: "最高正确率",
                subtitle: suffix + "在所有测验中的最高正确率",
                src: require("../assets/home/icon_success.png"),
                number: res.max.toFixed(2),
              },
              {
                title: "近七天完成测验的次数",
                data: [2, 3, 1, 0, 0, 4, 1],
              },
            ];
          }
        });
    },
    getLast7Days() {
      let result = [];
      for (let i = 0; i < 7; i++) {
        let date = new Date();
        date.setDate(date.getDate() - i);
        result.unshift(`${date.getMonth() + 1}月${date.getDate()}日`);
      }
      return result;
    },
    getMonths() {
      let result = [];
      let date = new Date();
      for (let i = 0; i < 12; i++) {
        result.unshift(`${date.getMonth() + 1}月`);
        date.setMonth(date.getMonth() - 1);
      }
      return result;
    },
    drawAdminCharts() {
      setTimeout(() => {
        let totalVisitsChart = echarts.init(this.$refs.totalVisits);
        totalVisitsChart.setOption({
          title: {
            text: '总访问量',
            left: 'center'
          },
          tooltip: {},
          xAxis: {
            type: 'category',
            data: this.getMonths()
          },
          yAxis: {
            type: 'value'
          },
          series: [{
            data: [430, 388, 568, 412, 690, 754, 300, 562, 694, 560, 800, 80],
            type: 'bar'
          }]
        });
        let loginTrendsChart = echarts.init(this.$refs.loginTrends);
        loginTrendsChart.setOption({
          title: {
            text: '近七天登录人次',
            left: 'center'
          },
          tooltip: {
            trigger: 'axis'
          },
          xAxis: {
            type: 'category',
            data: this.getLast7Days()
          },
          yAxis: {
            type: 'value'
          },
          series: [{
            data: [5, 8, 12, 10, 14, 20, 12],
            type: 'line'
          }]
        });
      }, 0);
    }
  }
};
</script>

<style scoped>
.equal-height {
  display: flex;
  flex-direction: column;
  height: 250px;
}

.welcome-card {
  display: flex;
  justify-content: center;
  align-items: center;
}

.welcome-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
}

.welcome-icon {
  width: 60px;
  height: 60px;
}

.welcome-text {
  font-size: 30px;
  background: linear-gradient(90deg, #87b4c9, #4a9cc5, #154f6c);
  -webkit-background-clip: text;
  color: transparent;
  animation: gradient 3s infinite;
  background-size: 200% 200%;
}

@keyframes gradient {
  0% {
    background-position: 0% 50%;
  }

  50% {
    background-position: 100% 50%;
  }

  100% {
    background-position: 0% 50%;
  }
}

h2,
h3 {
  text-align: center;
}

.scroll-container {
  height: 1200px;
  overflow: hidden;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 1.2rem;
  width: 100%;
}

.scroll-list {
  list-style: none;
  padding: 0;
  margin: 0;
  position: absolute;
  animation: scroll 25s linear infinite;
}

@keyframes scroll {
  0% {
    top: 15%;
  }

  100% {
    top: -100%;
  }
}

li {
  padding: 10px;
  border-bottom: 1px solid #eee;
  white-space: nowrap;
}

.log-item {
  padding: 10px;
  border-bottom: 1px solid #eee;
  background-color: #f1f5f9;
  color: #1e467c;
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
  border-radius: 15px;
  margin-bottom: 2%;
}



@keyframes fadeInOut {
  0% {
    opacity: 0.5;
  }

  100% {
    opacity: 1;
  }
}
</style>
