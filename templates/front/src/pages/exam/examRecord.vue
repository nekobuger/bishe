<template>
<div :style='{"width":"80%","padding":"20px 0","margin":"0 auto","position":"relative","background":"#FCFAFF"}'>
    <el-button :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"0 auto 10px","color":"#fff","outline":"none","borderRadius":"5px","background":"#C61C14","width":"32%","lineHeight":"40px","fontSize":"16px","height":"40px","order":"3"}' type="warning" size="mini" @click="backClick" class="el-icon-back">返回</el-button>
    <div class="section-title" :style='{"margin":"10px 0","color":"#000","textAlign":"center","background":"linear-gradient(180deg, #A293B6 0%, rgba(241,231,255,0) 100%)","clipPath":"polygon(30px 00%, 0% 100%, 100% 100%, calc(100% - 30px) 0%)","width":"100%","fontSize":"20px","lineHeight":"54px","fontWeight":"bold"}'>{{title}}</div>
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        label="数学试卷名称"
        prop="papername">
      </el-table-column>
      <el-table-column
        label="题目"
        prop="questionname">
      </el-table-column>
	  <el-table-column
		prop="type"
		label="题目类型"
	  >
		<template slot-scope="scope">
		  <el-tag type="success" v-if="scope.row.type==0">单选题</el-tag>
		  <el-tag type="warning" v-if="scope.row.type==1">多选题</el-tag>
		  <el-tag type="info" v-if="scope.row.type==2">判断题</el-tag>
		  <el-tag type="primary" v-if="scope.row.type==3">填空题</el-tag>
		  <el-tag type="danger" v-if="scope.row.type==4">主观题</el-tag>
		</template>
	  </el-table-column>
      <el-table-column
        label="分值">
        <template slot-scope="scope">
            {{ scope.row.score }}分
        </template>
      </el-table-column>
      <el-table-column
        label="正确答案"
        prop="right">
      </el-table-column>
      <el-table-column
        label="考生答案"
        prop="myanswer">
      </el-table-column>
      <el-table-column
        label="测试得分">
        <template slot-scope="scope">
            {{ scope.row.myscore }}分
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
        title: '测试记录',
        tableData: [],
        total: 1,
        pageSize: 10,pageSizes: [10,20,30,50],
        totalPage: 1
      }
    },
    created() {
      this.getExamRecord(1);
    },
    methods: {
      backClick() {
          this.$router.push('/index/center')
      },
      getExamRecord(page) {
        let otherParams = {};
        if (this.$route.params.type == 0) {
          this.title = '错题本';
          otherParams.myscore = 0;
		  otherParams.ismark = 1
        }
        this.$http.get('examrecord/list', {params: Object.assign({page, limit: this.pageSize, paperid: this.$route.query.paperid, userid: localStorage.getItem('frontUserid')}, otherParams)}).then(res => {
          if (res.data.code == 0) {
			  let arr = []
			  for(let x in res.data.data.list){
			  	if(res.data.data.list[x].type==0||res.data.data.list[x].type==2){
			  		arr = JSON.parse(res.data.data.list[x].options)
			  		for(let i in arr){
			  			if(res.data.data.list[x].answer == arr[i].code){
			  				res.data.data.list[x].right = arr[i].text
			  			}
			  		}
			  	}else if(res.data.data.list[x].type==1){
			  		arr = JSON.parse(res.data.data.list[x].options)
			  		res.data.data.list[x].answer.split(',').forEach(item=>{
			  			for(let i in arr){
			  				if (item == arr[i].code) {
			  					if (res.data.data.list[x].right) {
			  						res.data.data.list[x].right += ','
			  						res.data.data.list[x].right = res.data.data.list[x].right + arr[i].text
			  					}else{
			  						res.data.data.list[x].right = arr[i].text
			  					}
			  				}
			  			}
			  		})
			  	}else if(res.data.data.list[x].type==3){
			  		res.data.data.list[x].right = res.data.data.list[x].answer
			  	}else if(res.data.data.list[x].type==4){
			  		res.data.data.list[x].right = '略'
			  	}
			  }
            this.tableData = res.data.data.list;
            this.total = res.data.data.total;
            this.pageSize = res.data.data.pageSize;
            this.totalPage = res.data.data.totalPage;
			this.pageSizes = [this.pageSize, this.pageSize*2, this.pageSize*3, this.pageSize*5];
          }
        });
      },
      curChange(page) {
        this.getExamRecord(page);
      },
      prevClick(page) {
        this.getExamRecord(page);
      },
      nextClick(page) {
        this.getExamRecord(page);
      },
      handleView(index, row) {
        this.$router.push({path: '/index/examRecord', query: {id: row.id}})
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
