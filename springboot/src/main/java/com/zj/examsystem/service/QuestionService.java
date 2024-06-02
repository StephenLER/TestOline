package com.zj.examsystem.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zj.examsystem.entity.Question;

import java.util.List;

/**
 * 问题服务
 */
public interface QuestionService extends IService<Question> {
    /**
     * 根据老师ID查找所有问题
     * @param pageno 当前页码
     * @param size 每页大小
     * @param userId 老师ID
     * @return 分页问题列表
     */
    IPage<Question> findAllByTeacherId(Integer pageno, Integer size, Integer userId);

    /**
     * 根据问题ID查找问题
     * @param questionId 问题ID
     * @return 问题实体
     */
    Question findById(Integer questionId);

    /**
     * 根据科目ID查找所有问题
     * @param subjectId 科目ID
     * @return 问题列表
     */
    List<Question> findQuestionBySubjectId(Integer subjectId);

    /**
     * 根据考试ID查找所有问题
     * @param testId 考试ID
     * @return 问题列表
     */
    List<Question> findQuestionListByTestId(Integer testId);

    /**
     * 根据问题ID数组查找问题列表
     * @param questionIds 问题ID数组
     * @return 问题列表
     */
    List<Question> findQuestionListByQuestionIds(List<Integer> questionIds);

    /**
     * 计算实际难度
     * @param questionIds 问题ID数组
     * @return 实际难度
     */
    Double calculateActualDifficulty(Integer[] questionIds);

    /**
     * 智能生成问题
     * @param parent 父问题
     * @param knowledgeWeight 知识权重
     * @param examDifficulty 考试难度
     * @param difficultyWeight 难度权重
     * @param iteration 迭代次数
     * @return 问题列表
     */
    List<Question> intelligentGenerate(List<List<Question>> parent,
                                       Float knowledgeWeight, Float examDifficulty, Float difficultyWeight, Integer iteration);

    /**
     * 保存问题
     * @param question 问题实体
     * @return 是否保存成功
     */
    Boolean saveQuestion(Question question);

    /**
     * 更新问题
     * @param question 问题实体
     * @return 是否更新成功
     */
    Boolean updateQuestion(Question question);

    /**
     * 删除问题
     * @param id 问题ID数组
     * @return 是否删除成功
     */
    Integer deleteQuestion(Integer[] id);
}