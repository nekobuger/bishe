<template>
<div :style='{"width":"80%","padding":"20px 0","margin":"0 auto","position":"relative","background":"#FCFAFF"}'>
    <div class="section-title" :style='{"margin":"10px 0","color":"#000","textAlign":"center","background":"linear-gradient(180deg, #A293B6 0%, rgba(241,231,255,0) 100%)","clipPath":"polygon(30px 00%, 0% 100%, 100% 100%, calc(100% - 30px) 0%)","width":"100%","fontSize":"20px","lineHeight":"54px","fontWeight":"bold"}'>数学试卷</div>
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        label="数学试卷名称"
        prop="name">
      </el-table-column>
      <el-table-column
        label="测试时长">
        <template slot-scope="scope">
          {{ scope.row.time }}分钟
        </template>
      </el-table-column>
      <el-table-column
        label="创建时间"
        prop="addtime">
      </el-table-column>
      <el-table-column label="操作" width="150">
        <template slot-scope="scope">
          <el-button
            type="success"
            size="mini"
            @click="handleExam(scope.$index, scope.row)">测试</el-button>
        </template>
      </el-table-column>
    </el-table>
	
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
    data() {
      return {
		  layouts: '',
        tableData: [],
        total: 1,
        pageSize: 5,
		pageSizes: [10,20,30,50],
        totalPage: 1
      }
    },
    created() {
      this.getExamList(1);
    },
    methods: {
      getExamList(page) {
        this.$http.get('exampaper/list', {params: {page, limit: this.pageSize, status: 1}}).then(res => {
          if (res.data.code == 0) {
            this.tableData = res.data.data.list;
            this.total = res.data.data.total;
            this.pageSize = res.data.data.pageSize;
            this.totalPage = res.data.data.totalPage;
			this.pageSizes = [this.pageSize, this.pageSize*2, this.pageSize*3, this.pageSize*5];
          }
        });
      },
      curChange(page) {
        this.getExamList(page);
      },
      prevClick(page) {
        this.getExamList(page);
      },
      nextClick(page) {
        this.getExamList(page);
      },
      handleExam(index, row) {
        this.$router.push({path: '/exam', query: {id: row.id, time: row.time}})
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
  .section {
    width: 900px;
    margin: 0 auto;
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
