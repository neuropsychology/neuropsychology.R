dprime <- function(n_hit, n_miss, n_fa, n_cr){
  # Ratios
  hit_rate <- n_hit/(n_hit + n_miss)
  fa_rate <- n_fa/(n_fa + n_cr)
  
  
  # Adjusted ratios
  hit_rate_adjusted <- (n_hit+0.5)/((n_hit+0.5) + n_miss + 1)
  fa_rate_adjusted <- (n_fa+0.5)/((n_fa+0.5) + n_cr + 1)

  
  # dprime
  dprime <- qnorm(hit_rate_adjusted) - qnorm(fa_rate_adjusted)

  # beta
  zhr <- qnorm(hit_rate_adjusted)
  zfar <- qnorm(fa_rate_adjusted)
  beta <- exp(-zhr*zhr/2+zfar*zfar/2)

  # aprime
  a<-1/2+((hit_rate-fa_rate)*(1+hit_rate-fa_rate) / (4*hit_rate*(1-fa_rate)))
  b<-1/2-((fa_rate-hit_rate)*(1+fa_rate-hit_rate) / (4*fa_rate*(1-hit_rate)))

  a[fa_rate>hit_rate]<-b[fa_rate>hit_rate]
  a[fa_rate==hit_rate]<-.5
  aprime <- a

  # bppd
  bppd <- ((1-hit_rate)*(1-fa_rate)-hit_rate*fa_rate) / ((1-hit_rate)*(1-fa_rate)+hit_rate*fa_rate)

  return(list(dprime=dprime, beta=beta, aprime=aprime, bppd=bppd))
}
