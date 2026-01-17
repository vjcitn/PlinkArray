#' produce GRanges from variant notation for plink example from geuvadis
#' @import GenomicRanges
#' @import IRanges
#' @param x character vector of variant names
#' @return GRanges instance
#' @export
plid2gr = function (x) 
{
    ss = strsplit(x, "_")
    pos = as.integer(sapply(ss, "[", 2))
    ch = sapply(ss, "[", 1)
    ans = GRanges(ch, IRanges(pos, width = 1))
    names(ans) = x
    ans
}

