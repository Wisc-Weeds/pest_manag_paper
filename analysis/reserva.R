

```{r eval= FALSE}
model10 <- brm(`dv10` ~ 1,
               family = hurdle_gamma(link = "log", 
                                     link_shape = "log", 
                                     link_hu = "logit"),
               data = droplet, save_pars = save_pars(all = TRUE))

model11 <- brm(`dv10` ~ solution,
               family = hurdle_gamma(link = "log", 
                                     link_shape = "log", 
                                     link_hu = "logit"),
               data = droplet, save_pars = save_pars(all = TRUE))

model12 <- brm(`dv10` ~ solution + nozzle,
               family = hurdle_gamma(link = "log", 
                                     link_shape = "log", 
                                     link_hu = "logit"),
               data = droplet, save_pars = save_pars(all = TRUE))

model13 <- brm(`dv10` ~ solution * nozzle,
               family = hurdle_gamma(link = "log", 
                                     link_shape = "log", 
                                     link_hu = "logit"),
               data = droplet, save_pars = save_pars(all = TRUE))
```




model21 <- brm(`dv50` ~ solution,
               family = hurdle_gamma(link = "log", 
                                     link_shape = "log", 
                                     link_hu = "logit"),
               warmup = 1000, iter = 2000, chains = 4,
               prior = set_prior("student_t(0.5, 1, 2)", class = "b"),
               data = droplet, save_pars = save_pars(all = TRUE))

model22 <- brm(`dv50` ~ solution + nozzle,
               family = hurdle_gamma(link = "log", 
                                     link_shape = "log", 
                                     link_hu = "logit"),
               warmup = 1000, iter = 2000, chains = 4,
               prior = set_prior("student_t(0.5, 1, 2)", class = "b"),
               data = droplet, save_pars = save_pars(all = TRUE))
