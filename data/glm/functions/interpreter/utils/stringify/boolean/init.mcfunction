execute if data storage glm:interpreter utils.stringify.current{value:true} run data modify storage glm:interpreter temp.text set value [t,r,u,e]
execute if data storage glm:interpreter utils.stringify.current{value:false} run data modify storage glm:interpreter temp.text set value [f,a,l,s,e]
data modify storage glm:interpreter utils.stringify.result append from storage glm:interpreter temp.text[]