<template>
<div class="forum-preview" :style='{"width":"80%","padding":"20px 0","margin":"0 auto","position":"relative","background":"#FCFAFF"}'>
    <div :style='{"width":"100%","background":"linear-gradient(180deg, #A293B6 0%, rgba(241,231,255,0) 100%)","clipPath":"polygon(30px 00%, 0% 100%, 100% 100%, calc(100% - 30px) 0%)"}'>
		<div :style='{"padding":"0 10px","color":"#000","textAlign":"center","width":"100%","lineHeight":"54px","fontSize":"20px","fontWeight":"bold","height":"54px"}'>学习论坛</div>
	</div>
    <el-form :style='{"padding":"10px","margin":"10px 0","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto"}' :inline="true" :model="formSearch" class="list-form-pv">
		<el-form-item :style='{"margin":"0 10px"}'>
			<el-input v-model="title" placeholder="标题"></el-input>
		</el-form-item>
		<div :style='{"display":"flex"}'>
			<el-button class="searchBtn" type="primary" @click="getForumList(1)">
				<span class="icon iconfont icon-shouye-zhihui" :style='{"color":"inherit","margin":"0 10px 0 0","fontSize":"14px"}'></span>
				查询
			</el-button>
			<el-button class="pubBtn" type="primary" @click="toForumAdd">
				<span class="icon iconfont icon-shouye-zhihui" :style='{"color":"inherit","margin":"0 10px 0 0","fontSize":"14px"}'></span>
				发布帖子
			</el-button>
		</div>
    </el-form>
	<div class="z-box" :style='{"width":"100%","padding":"20px"}'>
		<div class="section-content" v-for="item in forumList" :key="item.id" @click="toForumDetail(item)">
		  <div :style='{"width":"calc(100% - 150px)","fontSize":"14px","lineHeight":"68px","color":"#333","height":"68px"}' class="item-style">{{item.title}}</div>
		  <div :style='{"color":"#333","textAlign":"center","background":"#A293B6","width":"150px","fontSize":"14px","lineHeight":"30px","height":"30px"}' class="item-style">发布人：{{item.username}}</div>
		  <div :style='{"width":"150px","fontSize":"14px","lineHeight":"30px","color":"#909090","textAlign":"right","height":"30px"}' class="item-style">{{item.addtime}}</div>
		</div>
	</div>
	
    <el-pagination
      background
      id="pagination" class="pagination"
      :pager-count="7"
      :page-size="pageSize"
      :page-sizes="pageSizes"
	  prev-text="上一页"
      next-text="下一页"
      :hide-on-single-page="false"
      :layout='["prev","pager","next"].join()'
      :total="total"
      :style='{"padding":"0","margin":"20px auto","whiteSpace":"nowrap","color":"#333","textAlign":"center","width":"100%","fontWeight":"500"}'
      @current-change="curChange"
      @prev-click="prevClick"
      @next-click="nextClick"
    ></el-pagination>
	
</div>
</template>

<script>
  export default {
    //数据集合
    data() {
      return {
		formSearch: {},
        title: '',
        layouts: '',
        forumList: [],
        total: 1,
        pageSize: 10,pageSizes: [10,20,30,50],
        totalPage: 1
      }
    },
    created() {
      this.getForumList(1);
    },
    //方法集合
    methods: {
      getForumList(page) {
        let params = {page, limit: this.pageSize, isdone: '开放', sort: 'istop,toptime', order: 'desc,desc'};
        let searchWhere = {};
        if(this.title != '') searchWhere.title = '%' + this.title + '%';
        this.$http.get('forum/flist', {params: Object.assign(params, searchWhere)}).then(res => {
          if (res.data.code == 0) {
            this.forumList = res.data.data.list;
            this.total = res.data.data.total;
            this.pageSize = res.data.data.pageSize;this.pageSizes = [this.pageSize, this.pageSize*2, this.pageSize*3, this.pageSize*5];
            this.totalPage = res.data.data.totalPage;
          }
        });
      },
      curChange(page) {
        this.getForumList(page);
      },
      prevClick(page) {
        this.getForumList(page);
      },
      nextClick(page) {
        this.getForumList(page);
      },
      toForumAdd() {
        this.$router.push('/index/forumAdd');
      },
      toForumDetail(item) {
        this.$router.push({path: '/index/forumDetail', query: {id: item.id}});
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
  .section {
    width: 900px;
    margin: 0 auto;
  }

  .section-content {
    display: flex;
    justify-content: space-between;
    line-height: 60px;
    cursor: pointer;
    box-sizing: border-box;
    padding: 0 10px;
  }
  .section-content:hover {
    background-color: #E4E7ED;
    color: #fff;
  }
  .item-style {
    color: #909399;
    font-weight: 400;
  }
  .section-btn {
    text-align: right;
    margin-bottom: 15px;
    padding-right: 10px;
  }
  
	.forum-preview .el-form-item /deep/ .el-form-item__content {
				display: flex;
				align-items: center;
			}
	
	.forum-preview .el-form-item .el-input /deep/ .el-input__inner {
				border: 1px solid #E2E3E5;
				border-radius: 0;
				padding: 0 10px;
				margin: 0;
				outline: none;
				color: #000;
				width: 280px;
				font-size: 14px;
				line-height: 42px;
				height: 42px;
			}
	
	.forum-preview .searchBtn {
				cursor: pointer;
				border: 0;
				border-radius: 40px;
				padding: 0px 25px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: #A293B6;
				width: auto;
				font-size: 14px;
				line-height: 42px;
				height: 42px;
			}
	
	.forum-preview .searchBtn:hover {
				color: #000;
				background: #A293B690;
			}
	
	.forum-preview .pubBtn {
				cursor: pointer;
				border: 0;
				border-radius: 30px;
				padding: 0px 25px;
				margin: 0 10px 0 0;
				outline: none;
				color: #fff;
				background: #A293B6;
				width: auto;
				font-size: 14px;
				line-height: 42px;
				height: 42px;
			}
	
	.forum-preview .pubBtn:hover {
				color: #000;
				background: #A293B690;
			}
	
	.forum-preview .z-box .section-content {
				cursor: pointer;
				padding: 6px 20px;
				margin: 0 0 30px;
				color: #333;
				display: flex;
				border-color: #E0E0E0;
				line-height: 80px;
				flex-wrap: wrap;
				flex-direction: column;
				background: #fff;
				width: 100%;
				justify-content: space-between;
				border-width: 1px;
				border-style: solid;
				height: 80px;
			}
	
	.forum-preview .z-box .section-content:hover {
				color: #fff;
				background: #A293B640;
			}
  
  #pagination.el-pagination /deep/ .el-pagination__total {
  	  	margin: 0 10px 0 0;
  	  	color: #666;
  	  	font-weight: 400;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 28px;
  	  	height: 28px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-prev {
  	  	border: none;
  	  	border-radius: 2px;
  	  	padding: 0 10px;
  	  	margin: 0 5px;
  	  	color: #000;
  	  	background: none;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	min-width: 35px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-next {
  	  	border: none;
  	  	border-radius: 2px;
  	  	padding: 0 10px;
  	  	margin: 0 5px;
  	  	color: #000;
  	  	background: none;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	min-width: 35px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-prev:disabled {
  	  	border: none;
  	  	cursor: not-allowed;
  	  	border-radius: 2px;
  	  	padding: 0 0;
  	  	margin: 0 5px;
  	  	color: #666;
  	  	background: none;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .btn-next:disabled {
  	  	border: none;
  	  	cursor: not-allowed;
  	  	border-radius: 2px;
  	  	padding: 0 0;
  	  	margin: 0 5px;
  	  	color: #666;
  	  	background: none;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager {
  	  	padding: 0;
  	  	margin: 0;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager .number {
  	  	cursor: pointer;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #000;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	border-radius: 50%;
  	  	background: #9E9E9E;
  	  	text-align: center;
  	  	min-width: 30px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager .number:hover {
  	  	cursor: pointer;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #000;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	border-radius: 50%;
  	  	background: #A293B6;
  	  	text-align: center;
  	  	min-width: 30px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pager .number.active {
  	  	cursor: default;
  	  	padding: 0 4px;
  	  	margin: 0 5px;
  	  	color: #000;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 30px;
  	  	border-radius: 50%;
  	  	background: #A293B6;
  	  	text-align: center;
  	  	min-width: 30px;
  	  	height: 30px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes {
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 28px;
  	  	height: 28px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input {
  	  	margin: 0 5px;
  	  	width: 100px;
  	  	position: relative;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input .el-input__inner {
  	  	border: 1px solid #DCDFE6;
  	  	cursor: pointer;
  	  	padding: 0 25px 0 8px;
  	  	color: #606266;
  	  	display: inline-block;
  	  	font-size: 13px;
  	  	line-height: 28px;
  	  	border-radius: 3px;
  	  	outline: 0;
  	  	background: #FFF;
  	  	width: 100%;
  	  	text-align: center;
  	  	height: 28px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input span.el-input__suffix {
  	  	top: 0;
  	  	position: absolute;
  	  	right: 0;
  	  	height: 100%;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__sizes .el-input .el-input__suffix .el-select__caret {
  	  	cursor: pointer;
  	  	color: #C0C4CC;
  	  	width: 25px;
  	  	font-size: 14px;
  	  	line-height: 28px;
  	  	text-align: center;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__jump {
  	  	margin: 0 0 0 24px;
  	  	color: #606266;
  	  	display: inline-block;
  	  	vertical-align: top;
  	  	font-size: 13px;
  	  	line-height: 28px;
  	  	height: 28px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__jump .el-input {
  	  	border-radius: 3px;
  	  	padding: 0 2px;
  	  	margin: 0 2px;
  	  	display: inline-block;
  	  	width: 50px;
  	  	font-size: 14px;
  	  	line-height: 18px;
  	  	position: relative;
  	  	text-align: center;
  	  	height: 28px;
  	  }
  
  #pagination.el-pagination /deep/ .el-pagination__jump .el-input .el-input__inner {
  	  	border: 1px solid #DCDFE6;
  	  	cursor: pointer;
  	  	padding: 0 3px;
  	  	color: #606266;
  	  	display: inline-block;
  	  	font-size: 14px;
  	  	line-height: 28px;
  	  	border-radius: 3px;
  	  	outline: 0;
  	  	background: #FFF;
  	  	width: 100%;
  	  	text-align: center;
  	  	height: 28px;
  	  }
</style>
