<template>
	<div class="navbar">
		<div class="title" :style='{"margin":"0px","overflow":"hidden","textAlign":"left","background":"none","flex":"1","display":"block","width":"auto","order":"0"}'>
			<el-image v-if="false" class="title-img" :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","float":"left","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" fit="cover" />
			<span class="title-name" :style='{"padding":"0px","lineHeight":"1.5","fontSize":"18px","color":"#fff","fontWeight":"500"}'>{{this.$project.projectName}}</span>
		</div>
		<!--
		<div class="right" :style='{"position":"absolute","right":"20px","top":"8px","display":"flex"}'>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#333"}' class="nickname">{{this.$storage.get('role')}} {{this.$storage.get('adminName')}}</div>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#666"}' v-if="this.$storage.get('role')!='管理员'" class="logout" @click="onIndexTap">退出到前台</div>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#666"}' v-if="this.$storage.get('role')=='管理员'" class="backUp" @click="backUp">数据备份</div>
			<div :style='{"cursor":"pointer","margin":"0 5px","lineHeight":"44px","color":"#666"}' class="logout" @click="onLogout">退出登录</div>
		</div>
		-->
		
		<el-dropdown @command="handleCommand" trigger="click" :style='{"padding":"0 0px 0 0","color":"inherit","background":"url() no-repeat right center / 26px","display":"inline-block","fontSize":"inherit","position":"static","zIndex":"9999","order":"10"}'>
		  <div class="el-dropdown-link" :style='{"alignItems":"center","display":"flex"}'>
		    <el-image v-if="user" :style='{"width":"32px","margin":"0 10px","objectFit":"cover","borderRadius":"100%","display":"inline-block","height":"32px"}' :src="avatar?this.$base.url + avatar : require('@/assets/img/avator.png')" fit="cover"></el-image>
		    <span :style='{"color":"inherit","lineHeight":"32px","fontSize":"14px"}'>{{this.$storage.get('adminName')}}</span>
		    <span class="icon iconfont icon-xiala" :style='{"margin":"0 0 0 5px","fontSize":"14px","color":"inherit","display":"none"}'></span>
		  </div>
		  <el-dropdown-menu class="top-el-dropdown-menu" slot="dropdown">
		    <el-dropdown-item class="item1" :command="''">主页</el-dropdown-item>
		    <el-dropdown-item class="item2" :command="'center'">用户信息</el-dropdown-item>
		    <el-dropdown-item v-if="this.$storage.get('role')!='管理员'" class="item3" :command="'front'">访问前台</el-dropdown-item>
		    <el-dropdown-item v-if="this.$storage.get('role')=='管理员'" class="item3" :command="'backUp'">数据备份</el-dropdown-item>
		    <el-dropdown-item class="item4" :command="'logout'">退出系统</el-dropdown-item>
		  </el-dropdown-menu>
		</el-dropdown>
	</div>
</template>

<script>
	import axios from 'axios'
	export default {
		data() {
			return {
				dialogVisible: false,
				ruleForm: {},
				user: null,
			};
		},
		created() {
		},
		computed: {
			avatar(){
				return this.$storage.get('headportrait')?this.$storage.get('headportrait'):''
			},
		},
		mounted() {
			let sessionTable = this.$storage.get("sessionTable")
			this.$http({
				url: sessionTable + '/session',
				method: "get"
			}).then(({
				data
			}) => {
				if (data && data.code === 0) {
					if(sessionTable == 'jiaoshi') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'xuesheng') {
						this.$storage.set('headportrait',data.data.touxiang)
					}
					if(sessionTable == 'users') {
						this.$storage.set('headportrait',data.data.image)
					}
					this.$storage.set('userForm',JSON.stringify(data.data))
					this.user = data.data;
					this.$storage.set('userid',data.data.id);
				} else {
					let message = this.$message
					message.error(data.msg);
				}
			});
		},
		methods: {
			handleCommand(name) {
				if (name == 'front') {
					this.onIndexTap()
				} else if (name == 'logout') {
					this.onLogout()
				} else if (name == 'board'){
					this.toBoard()
				} else if (name == 'backUp'){
					this.backUp()
				} 
				else {
					let router = this.$router
					name = '/'+name
					router.push(name)
				}
			},
			onLogout() {
				let storage = this.$storage
				let router = this.$router
				storage.clear()
				this.$store.dispatch('tagsView/delAllViews')
				router.replace({
					name: "login"
				});
			},
			onIndexTap(){
				window.location.href = `${this.$base.indexUrl}`
			},
            backUp() {
                this.$confirm('是否备份数据库?', '数据备份提示', {
                    confirmButtonText: '是',
                    cancelButtonText: '否',
                    type: 'warning'
                }).then(() => {
                    this.$http({
                        url: '/mysqldump',
                        method: "get"
                    }).then(({
                        data
                    }) => {
                        if (data) {
                            const binaryData = [];
                            binaryData.push(data);
                            const objectUrl = window.URL.createObjectURL(new Blob(binaryData, {
                                type: 'application/pdf;chartset=UTF-8'
                            }))
                            const a = document.createElement('a')
                            a.href = objectUrl
                            a.download = 'mysql.dmp'
                            // a.click()
                            // 下面这个写法兼容火狐
                            a.dispatchEvent(new MouseEvent('click', {
                                bubbles: true,
                                cancelable: true,
                                view: window
                            }))
                            window.URL.revokeObjectURL(data)
                            message.message("数据备份成功")
                        } else {
                            let message = this.$message
                            message.error(data.msg);
                        }
                    });
                });
            },
		}
	};
</script>


<style lang="scss" scoped>
	.top-el-dropdown-menu {
				border: 1px solid #EBEEF5;
				border-radius: 4px;
				padding: 10px 0;
				box-shadow: 0 0px 0px 0 rgba(0,0,0,.1);
				margin: 18px 0;
				background: #FFF;
				min-width: 150px;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item1 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item1:hover {
				background: #ecf5ff;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item2 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item2:hover {
				background: #ecf5ff;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item3 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item3:hover {
				background: #ecf5ff;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item4 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item4:hover {
				background: #ecf5ff;
			}
	.top-el-dropdown-menu li.el-dropdown-menu__item.item5 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item5:hover {
				background: #ecf5ff;
			}
	.top-el-dropdown-menu li.el-dropdown-menu__item.item6 {
				cursor: pointer;
				padding: 0 20px;
				margin: 0;
				outline: 0;
				color: #606266;
				background: #fff;
				font-size: 14px;
				line-height: 36px;
				list-style: none;
			}
	
	.top-el-dropdown-menu li.el-dropdown-menu__item.item6:hover {
				background: #ecf5ff;
			}
</style>
