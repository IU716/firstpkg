#' super cute scatterplot
#'
#' @param data
#' @param var12
#' @param var2
#' @param lmline TRUE is you want to add linear line but default is FALSE
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_point
#' @importFrom ggplot2 theme_bw
#' @importFrom ggplot2 labs
#' @importFrom ggplot2 geom_smooth
#' @importFrom ggplot2 aes
#' @importFrom ggpubr stat_cor
#'
#' @export
#'
#' @examples cute_scatterplot(data=iris, var1=Sepal.Width, var2=Sepal.Length, lmline=FALSE)
cute_scatterplot<- function(data, var12, var2, lmline=FALSE)
{
  out=ggplot(data=data, aes(x=get(var1),y=get(var2)))+geom_point+theme_bw()
             +labs(x=var1, y=var2)
             if(lmline){
               our=out+geom_smooth(method='lm', formula= y~x, se=FALSE)+
                 stat_cor(method="pearson", size=6)
             }
             return(out)
}



