# -*- coding: utf-8 -*-
from flask import Flask, request, jsonify
from http import HTTPStatus
import dashscope
from dashscope import Generation
from dashscope.api_entities.dashscope_response import Role

dashscope.api_key = "sk-6c4212a7a25243a4af9ac2f553081e7a"
app = Flask(__name__)

@app.route("/answer", methods=["POST"])
def generate_answer():
    data = request.form
    question = data.get("ques", None)
    prompt = "你是一个考试简答题答案生成器，请根据以下问题生成一个详细的答案。"

    messages = [
        {"role": Role.SYSTEM, "content": prompt},
        {"role": Role.USER, "content": question},
    ]

    response = Generation.call(
        "qwen1.5-110b-chat",
        messages=messages,
        result_format="message",
    )
    if response.status_code == HTTPStatus.OK:
        raw_string = response.output.choices[0]["message"]["content"]
    else:
        print(
            "Request id: %s, Status code: %s, error code: %s, error message: %s"
            % (
                response.request_id,
                response.status_code,
                response.code,
                response.message,
            )
        )
        raw_string = "抱歉，我无法处理您的请求。"

    return jsonify({"result": raw_string}), 200


@app.route("/question", methods=["POST"])
def generate_question():
    data = request.form
    subject_name = data.get("subjectName", None)
    type_name = data.get("typeName", None)
    knowledge_content = data.get("knowledgeContent", None)
    prompt = (
        f"你是一个考试题目生成器，请根据以下信息生成一个详细的题目。同时还要给出答案和解析"
        f"科目：{subject_name}，题目类型：{type_name}，关联知识点：{knowledge_content}。"
    )

    messages = [
        {"role": Role.SYSTEM, "content": prompt},
        {"role": Role.USER, "content": "请生成题目"},
    ]

    response = Generation.call(
        "qwen1.5-110b-chat",
        messages=messages,
        result_format="message",
    )
    if response.status_code == HTTPStatus.OK:
        raw_string = response.output.choices[0]["message"]["content"]
    else:
        print(
            "Request id: %s, Status code: %s, error code: %s, error message: %s"
            % (
                response.request_id,
                response.status_code,
                response.code,
                response.message,
            )
        )
        raw_string = "抱歉，我无法处理您的请求。"

    return jsonify({"result": raw_string}), 200


if __name__ == "__main__":
    app.run(debug=True)