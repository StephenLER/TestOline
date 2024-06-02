<template>
  <div>
    <p class="topic">
      <span class="number">{{ number }}</span>
      {{ title }}
      <el-button @click="generateAnswer" style="margin-left: 1rem;color:#164a84;border-radius: 15px;">
        AI生成参考答案
      </el-button>
    </p>
    <p>
      <el-input v-model="text" @blur="sendAnswer(text)" type="textarea" :autosize="{ minRows: 5 }" maxlength="1000"
        style="width: 1000px" show-word-limit :readonly="isable" />
    </p>
    <span v-html="parseMarkdown(generatedAnswer)" class="markdown-container" v-if="generatedAnswer"></span>
  </div>
</template>

<script>
import axios from "axios";
import MarkdownIt from 'markdown-it';
export default {
  props: {
    number: Number,
    title: String,
    content: String,
    questionId: Number,
    isable: {
      type: Boolean,
      default: false,
    },
  },
  data() {
    return {
      text: "",
      generatedAnswer: "",
      mdParser: new MarkdownIt(),

    };
  },
  created() {
    if (this.content != undefined) {
      this.text = this.content.split(" ")[1];
    } else {
      this.text = "";
    }
  },
  methods: {
    parseMarkdown(text) {
      return this.mdParser.render(text);
    },
    async generateAnswer() {
      this.generatedAnswer = "AI正在生成参考答案中..."
      const formData = new FormData();
      formData.append('ques', this.title);
      await axios.post("/ccc/answer", formData)
        .then(response => {
          console.log("Response data:", response.data);
          this.generatedAnswer = response.data.result;
        })
        .catch(error => {
          console.error("AI生成参考答案请求出错:", error);
          this.$message.error("AI生成参考答案请求出错");
          this.generatedAnswer = ""
        });
    },
    sendAnswer(val) {
      this.$emit("returnAnswer", this.questionId + " " + val);
    },
  },
};
</script>
<style scoped>
.number {
  display: inline-flex;
  justify-content: center;
  align-items: center;
  width: 36px;
  height: 27px;
  background-color: #39b1f0;
  color: #fff;
  border-radius: 4px;
  margin-right: 4px;
  font-weight: bold;
}

.topic {
  padding: 20px 0px;
  font-size: 17px;
}

.el-button {
  padding: 10px;
  margin: 0 10px 0 30px;
}

.answer-content:hover {
  color: #409eff;
  cursor: pointer;
}

.markdown-container {
  display: inline-block;
  width: 980px;
  border: 1px solid #ccc;
  padding: 10px;
  border-radius: 10px;
  margin-bottom: 1rem;
}
</style>