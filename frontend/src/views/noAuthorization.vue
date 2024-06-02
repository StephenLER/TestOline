<template>
  <div class="not-found">
    <div class="content">
      <div class="center" style="margin-top: 10rem;">
        <img src="../assets/404/icon.svg" alt="401" class="error-image">
        <h1>401 - 页面不存在</h1>
        <p>抱歉，您无权限访问。</p>
        <router-link to="/" class="toindex">返回首页</router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NotFound'
}
</script>

<style scoped>
.not-found {
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.content {
  text-align: center;
  color: #132c29;
}

.center {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.error-image {
  width: 200px;
}

h1 {
  font-size: 2.4em;
  margin-top: 20px;
}

p {
  font-size: 1.2em;
  margin-top: 20px;
}

.toindex {
  margin-top: 1rem;
  font-size: 1.2rem;
  color: #bb5535;
  text-decoration: underline;
}

.toindex:hover {
  color: red
}
</style>