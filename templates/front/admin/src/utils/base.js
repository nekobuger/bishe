const base = {
    get() {
        return {
            url : "http://localhost:8080/django85b10xfi/",
            name: "django",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "考研数学辅助学习系统"
        } 
    }
}
export default base
