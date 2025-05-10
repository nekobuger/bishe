#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class jiaoshi(BaseModel):
    __doc__ = u'''jiaoshi'''
    __tablename__ = 'jiaoshi'

    __loginUser__='jiaoshigonghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='jiaoshigonghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='是'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    jiaoshigonghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='教师工号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    jiaoshixingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教师姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    '''
    jiaoshigonghao=VARCHAR
    mima=VARCHAR
    jiaoshixingming=VARCHAR
    touxiang=Text
    xingbie=VARCHAR
    lianxidianhua=VARCHAR
    '''
    class Meta:
        db_table = 'jiaoshi'
        verbose_name = verbose_name_plural = '教师'
class xuesheng(BaseModel):
    __doc__ = u'''xuesheng'''
    __tablename__ = 'xuesheng'

    __loginUser__='xuehao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='xuehao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='学号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xueshengxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='学生姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    banji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='班级' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    '''
    xuehao=VARCHAR
    mima=VARCHAR
    xueshengxingming=VARCHAR
    touxiang=Text
    xingbie=VARCHAR
    banji=VARCHAR
    lianxidianhua=VARCHAR
    '''
    class Meta:
        db_table = 'xuesheng'
        verbose_name = verbose_name_plural = '学生'
class kechengxinxi(BaseModel):
    __doc__ = u'''kechengxinxi'''
    __tablename__ = 'kechengxinxi'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    kechengmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='课程名称' )
    dagang=models.TextField   (  null=True, unique=False, verbose_name='大纲' )
    kechengleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='课程类型' )
    kechengfengmian=models.TextField   (  null=True, unique=False, verbose_name='课程封面' )
    jiaoxueshipin=models.TextField   ( null=False, unique=False, verbose_name='教学视频' )
    kechengxiangqing=models.TextField   (  null=True, unique=False, verbose_name='课程详情' )
    shangkedidian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='上课地点' )
    fabushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='发布时间' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    jiaoshixingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师姓名' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    discussnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='评论数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    kechengmingcheng=VARCHAR
    dagang=Text
    kechengleixing=VARCHAR
    kechengfengmian=Text
    jiaoxueshipin=Text
    kechengxiangqing=Text
    shangkedidian=VARCHAR
    fabushijian=DateTime
    jiaoshigonghao=VARCHAR
    jiaoshixingming=VARCHAR
    clicktime=DateTime
    clicknum=Integer
    discussnum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'kechengxinxi'
        verbose_name = verbose_name_plural = '课程信息'
class kechengleixing(BaseModel):
    __doc__ = u'''kechengleixing'''
    __tablename__ = 'kechengleixing'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    kechengleixing=models.CharField ( max_length=255,null=False,unique=True, verbose_name='课程类型' )
    image=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    '''
    kechengleixing=VARCHAR
    image=Text
    '''
    class Meta:
        db_table = 'kechengleixing'
        verbose_name = verbose_name_plural = '课程类型'
class ziliaoxinxi(BaseModel):
    __doc__ = u'''ziliaoxinxi'''
    __tablename__ = 'ziliaoxinxi'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    ziliaomingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='资料名称' )
    ziliaojianjie=models.TextField   (  null=True, unique=False, verbose_name='资料简介' )
    ziliaoleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='资料类型' )
    ziliaofujian=models.TextField   (  null=True, unique=False, verbose_name='资料附件' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    ziliaoxiangqing=models.TextField   (  null=True, unique=False, verbose_name='资料详情' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    jiaoshixingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师姓名' )
    fabushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='发布时间' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    discussnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='评论数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    ziliaomingcheng=VARCHAR
    ziliaojianjie=Text
    ziliaoleixing=VARCHAR
    ziliaofujian=Text
    fengmian=Text
    ziliaoxiangqing=Text
    jiaoshigonghao=VARCHAR
    jiaoshixingming=VARCHAR
    fabushijian=DateTime
    clicktime=DateTime
    clicknum=Integer
    discussnum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'ziliaoxinxi'
        verbose_name = verbose_name_plural = '资料信息'
class ziliaoleixing(BaseModel):
    __doc__ = u'''ziliaoleixing'''
    __tablename__ = 'ziliaoleixing'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    ziliaoleixing=models.CharField ( max_length=255,null=False,unique=True, verbose_name='资料类型' )
    '''
    ziliaoleixing=VARCHAR
    '''
    class Meta:
        db_table = 'ziliaoleixing'
        verbose_name = verbose_name_plural = '资料类型'
class xuexijihua(BaseModel):
    __doc__ = u'''xuexijihua'''
    __tablename__ = 'xuexijihua'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    jihuabiaoti=models.CharField ( max_length=255, null=True, unique=False, verbose_name='计划标题' )
    tupian=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    jihuaneirong=models.TextField   ( null=False, unique=False, verbose_name='计划内容' )
    jihuamubiao=models.TextField   ( null=False, unique=False, verbose_name='计划目标' )
    jihuashijian=models.CharField ( max_length=255,null=False, unique=False, verbose_name='计划时间' )
    tijiaoshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='提交时间' )
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xueshengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学生姓名' )
    banji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='班级' )
    '''
    jihuabiaoti=VARCHAR
    tupian=Text
    jihuaneirong=Text
    jihuamubiao=Text
    jihuashijian=VARCHAR
    tijiaoshijian=DateTime
    xuehao=VARCHAR
    xueshengxingming=VARCHAR
    banji=VARCHAR
    '''
    class Meta:
        db_table = 'xuexijihua'
        verbose_name = verbose_name_plural = '学习计划'
class meiridaka(BaseModel):
    __doc__ = u'''meiridaka'''
    __tablename__ = 'meiridaka'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255, null=True, unique=False, verbose_name='标题' )
    dakaleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='打卡类型' )
    dakashijian=models.DateTimeField  (  null=True, unique=False, verbose_name='打卡时间' )
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xueshengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学生姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    biaoti=VARCHAR
    dakaleixing=VARCHAR
    dakashijian=DateTime
    xuehao=VARCHAR
    xueshengxingming=VARCHAR
    touxiang=Text
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'meiridaka'
        verbose_name = verbose_name_plural = '每日打卡'
class forum(BaseModel):
    __doc__ = u'''forum'''
    __tablename__ = 'forum'



    __authTables__={}
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255, null=True, unique=False, verbose_name='帖子标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='帖子内容' )
    parentid=models.BigIntegerField  (  null=True, unique=False, verbose_name='父节点id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    isdone=models.CharField ( max_length=255, null=True, unique=False, verbose_name='状态' )
    istop=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='是否置顶' )
    toptime=models.DateTimeField  (  null=True, unique=False, verbose_name='置顶时间' )
    '''
    title=VARCHAR
    content=Text
    parentid=BigInteger
    userid=BigInteger
    username=VARCHAR
    avatarurl=Text
    isdone=VARCHAR
    istop=Integer
    toptime=DateTime
    '''
    class Meta:
        db_table = 'forum'
        verbose_name = verbose_name_plural = '学习论坛'
class exampaper(BaseModel):
    __doc__ = u'''exampaper'''
    __tablename__ = 'exampaper'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='数学试卷名称' )
    time=models.IntegerField  ( null=False, unique=False, verbose_name='测试时长(分钟)' )
    status=models.IntegerField  ( null=False, unique=False,default='0', verbose_name='数学试卷状态' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    '''
    name=VARCHAR
    time=Integer
    status=Integer
    jiaoshigonghao=VARCHAR
    '''
    class Meta:
        db_table = 'exampaper'
        verbose_name = verbose_name_plural = '数学试卷表'
class examquestion(BaseModel):
    __doc__ = u'''examquestion'''
    __tablename__ = 'examquestion'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    paperid=models.BigIntegerField  ( null=False, unique=False, verbose_name='所属数学试卷id（外键）' )
    papername=models.CharField ( max_length=255,null=False, unique=False, verbose_name='数学试卷名称' )
    questionname=models.CharField ( max_length=255,null=False, unique=False, verbose_name='题目名称' )
    options=models.TextField   (  null=True, unique=False, verbose_name='选项，json字符串' )
    score=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='分值' )
    answer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='正确答案' )
    analysis=models.TextField   (  null=True, unique=False, verbose_name='答案解析' )
    type=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='题目类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）4:主观题' )
    sequence=models.BigIntegerField  (  null=True, unique=False,default='100', verbose_name='题目排序，值越大排越前面' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    '''
    paperid=BigInteger
    papername=VARCHAR
    questionname=VARCHAR
    options=Text
    score=BigInteger
    answer=VARCHAR
    analysis=Text
    type=BigInteger
    sequence=BigInteger
    jiaoshigonghao=VARCHAR
    '''
    class Meta:
        db_table = 'examquestion'
        verbose_name = verbose_name_plural = '题目'
class examquestionbank(BaseModel):
    __doc__ = u'''examquestionbank'''
    __tablename__ = 'examquestionbank'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    questionname=models.CharField ( max_length=255,null=False, unique=False, verbose_name='题目名称' )
    options=models.TextField   (  null=True, unique=False, verbose_name='选项，json字符串' )
    score=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='分值' )
    answer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='正确答案' )
    analysis=models.TextField   (  null=True, unique=False, verbose_name='答案解析' )
    type=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='题目类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空） 4:主观题' )
    sequence=models.BigIntegerField  (  null=True, unique=False,default='100', verbose_name='题目排序，值越大排越前面' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    '''
    questionname=VARCHAR
    options=Text
    score=BigInteger
    answer=VARCHAR
    analysis=Text
    type=BigInteger
    sequence=BigInteger
    jiaoshigonghao=VARCHAR
    '''
    class Meta:
        db_table = 'examquestionbank'
        verbose_name = verbose_name_plural = '题目'
class examrecord(BaseModel):
    __doc__ = u'''examrecord'''
    __tablename__ = 'examrecord'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    __authSeparate__='是'#后台列表权限
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __examinationPaper__='是'#[examinationPaper:是/否]后台生成普通试卷功能
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    paperid=models.BigIntegerField  ( null=False, unique=False, verbose_name='数学试卷id（外键）' )
    papername=models.CharField ( max_length=255,null=False, unique=False, verbose_name='数学试卷名称' )
    questionid=models.BigIntegerField  ( null=False, unique=False, verbose_name='题目id（外键）' )
    questionname=models.CharField ( max_length=255,null=False, unique=False, verbose_name='题目名称' )
    options=models.TextField   (  null=True, unique=False, verbose_name='选项，json字符串' )
    score=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='分值' )
    answer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='正确答案' )
    analysis=models.TextField   (  null=True, unique=False, verbose_name='答案解析' )
    ismark=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='是否批卷' )
    type=models.BigIntegerField  (  null=True, unique=False,default='0', verbose_name='题目类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空） 4:主观题' )
    myscore=models.BigIntegerField  ( null=False, unique=False,default='0', verbose_name='题目得分' )
    myanswer=models.CharField ( max_length=255, null=True, unique=False, verbose_name='考生答案' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    '''
    userid=BigInteger
    username=VARCHAR
    paperid=BigInteger
    papername=VARCHAR
    questionid=BigInteger
    questionname=VARCHAR
    options=Text
    score=BigInteger
    answer=VARCHAR
    analysis=Text
    ismark=BigInteger
    type=BigInteger
    myscore=BigInteger
    myanswer=VARCHAR
    jiaoshigonghao=VARCHAR
    '''
    class Meta:
        db_table = 'examrecord'
        verbose_name = verbose_name_plural = '测试记录表'
class newstype(BaseModel):
    __doc__ = u'''newstype'''
    __tablename__ = 'newstype'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    typename=models.CharField ( max_length=255,null=False, unique=False, verbose_name='分类名称' )
    '''
    typename=VARCHAR
    '''
    class Meta:
        db_table = 'newstype'
        verbose_name = verbose_name_plural = '公告信息分类'
class news(BaseModel):
    __doc__ = u'''news'''
    __tablename__ = 'news'



    __authTables__={}
    __thumbsUp__='是'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    introduction=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    typename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='分类名称' )
    name=models.CharField ( max_length=255, null=True, unique=False, verbose_name='发布人' )
    headportrait=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    thumbsupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='赞' )
    crazilynum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='踩' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    picture=models.TextField   ( null=False, unique=False, verbose_name='图片' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    '''
    title=VARCHAR
    introduction=Text
    typename=VARCHAR
    name=VARCHAR
    headportrait=Text
    clicknum=Integer
    clicktime=DateTime
    thumbsupnum=Integer
    crazilynum=Integer
    storeupnum=Integer
    picture=Text
    content=Text
    '''
    class Meta:
        db_table = 'news'
        verbose_name = verbose_name_plural = '公告信息'
class storeup(BaseModel):
    __doc__ = u'''storeup'''
    __tablename__ = 'storeup'



    __authTables__={}
    __authSeparate__='是'#后台列表权限
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    refid=models.BigIntegerField  (  null=True, unique=False, verbose_name='商品id' )
    tablename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='表名' )
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='名称' )
    picture=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    type=models.CharField ( max_length=255, null=True, unique=False,default='1', verbose_name='类型' )
    inteltype=models.CharField ( max_length=255, null=True, unique=False, verbose_name='推荐类型' )
    remark=models.CharField ( max_length=255, null=True, unique=False, verbose_name='备注' )
    '''
    userid=BigInteger
    refid=BigInteger
    tablename=VARCHAR
    name=VARCHAR
    picture=Text
    type=VARCHAR
    inteltype=VARCHAR
    remark=VARCHAR
    '''
    class Meta:
        db_table = 'storeup'
        verbose_name = verbose_name_plural = '收藏表'
class aboutus(BaseModel):
    __doc__ = u'''aboutus'''
    __tablename__ = 'aboutus'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    subtitle=models.CharField ( max_length=255, null=True, unique=False, verbose_name='副标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    picture1=models.TextField   (  null=True, unique=False, verbose_name='图片1' )
    picture2=models.TextField   (  null=True, unique=False, verbose_name='图片2' )
    picture3=models.TextField   (  null=True, unique=False, verbose_name='图片3' )
    '''
    title=VARCHAR
    subtitle=VARCHAR
    content=Text
    picture1=Text
    picture2=Text
    picture3=Text
    '''
    class Meta:
        db_table = 'aboutus'
        verbose_name = verbose_name_plural = '关于我们'
class systemintro(BaseModel):
    __doc__ = u'''systemintro'''
    __tablename__ = 'systemintro'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    subtitle=models.CharField ( max_length=255, null=True, unique=False, verbose_name='副标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    picture1=models.TextField   (  null=True, unique=False, verbose_name='图片1' )
    picture2=models.TextField   (  null=True, unique=False, verbose_name='图片2' )
    picture3=models.TextField   (  null=True, unique=False, verbose_name='图片3' )
    '''
    title=VARCHAR
    subtitle=VARCHAR
    content=Text
    picture1=Text
    picture2=Text
    picture3=Text
    '''
    class Meta:
        db_table = 'systemintro'
        verbose_name = verbose_name_plural = '系统简介'
class discusskechengxinxi(BaseModel):
    __doc__ = u'''discusskechengxinxi'''
    __tablename__ = 'discusskechengxinxi'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    refid=models.BigIntegerField  ( null=False, unique=False, verbose_name='关联表id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    nickname=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    content=models.TextField   ( null=False, unique=False, verbose_name='评论内容' )
    reply=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    '''
    refid=BigInteger
    userid=BigInteger
    avatarurl=Text
    nickname=VARCHAR
    content=Text
    reply=Text
    '''
    class Meta:
        db_table = 'discusskechengxinxi'
        verbose_name = verbose_name_plural = '课程信息评论表'
class discussziliaoxinxi(BaseModel):
    __doc__ = u'''discussziliaoxinxi'''
    __tablename__ = 'discussziliaoxinxi'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    refid=models.BigIntegerField  ( null=False, unique=False, verbose_name='关联表id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    nickname=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    content=models.TextField   ( null=False, unique=False, verbose_name='评论内容' )
    reply=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    '''
    refid=BigInteger
    userid=BigInteger
    avatarurl=Text
    nickname=VARCHAR
    content=Text
    reply=Text
    '''
    class Meta:
        db_table = 'discussziliaoxinxi'
        verbose_name = verbose_name_plural = '资料信息评论表'
