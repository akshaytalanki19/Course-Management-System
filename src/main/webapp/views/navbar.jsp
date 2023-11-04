#nav-bar
  input#nav-toggle(type='checkbox')
  #nav-header
    a#nav-title(href='https://codepen.io' target='_blank').
      C#[i.fab.fa-codepen]DEPEN
    label(for='nav-toggle')
      span#nav-toggle-burger
    hr
  #nav-content
    .nav-button #[i.fas.fa-palette]#[span Your Work]
    .nav-button #[i.fas.fa-images]#[span Assets]
    .nav-button #[i.fas.fa-thumbtack]#[span Pinned Items]
    hr
    .nav-button #[i.fas.fa-heart]#[span Following]
    .nav-button #[i.fas.fa-chart-line]#[span Trending]
    .nav-button #[i.fas.fa-fire]#[span Challenges]
    .nav-button #[i.fas.fa-magic]#[span Spark]
    hr
    .nav-button #[i.fas.fa-gem]#[span Codepen Pro]
    #nav-content-highlight
  input#nav-footer-toggle(type='checkbox')
  #nav-footer
    #nav-footer-heading
      #nav-footer-avatar
        img(src='https://gravatar.com/avatar/4474ca42d303761c2901fa819c4f2547')
      #nav-footer-titlebox
        a#nav-footer-title(href='https://codepen.io/uahnbu/pens/public' target='_blank') uahnbu
        span#nav-footer-subtitle Admin
      label(for='nav-footer-toggle')
        i.fas.fa-caret-up
    #nav-footer-content
     
     
    <style>
    :root
  --background: #9c88ff
  --navbar-width: 256px
  --navbar-width-min: 80px
  --navbar-dark-primary: #18283b
  --navbar-dark-secondary: #2c3e50
  --navbar-light-primary: #f5f6fa
  --navbar-light-secondary: #8392a5

html, body
  margin: 0
  background: var(--background)

#nav-toggle:checked
  & ~ #nav-header
    width: calc(var(--navbar-width-min) - 16px)

  & ~#nav-content, & ~ #nav-footer
    width: var(--navbar-width-min)
  
  & ~ #nav-header
    #nav-title
      opacity: 0
      pointer-events: none
      transition: opacity .1s

    label[for="nav-toggle"]
      left: calc(50% - 8px)
      transform: translate(-50%)
    
    #nav-toggle-burger
      background: var(--navbar-light-primary)

      &:before, &::after
        width: 16px
        background: var(--navbar-light-secondary)
        transform: translate(0, 0) rotate(0deg)

  & ~ #nav-content
    .nav-button
      span
        opacity: 0
        transition: opacity .1s
      
      .fas
        min-width: calc(100% - 16px)
  
  & ~ #nav-footer    
    #nav-footer-avatar
      margin-left: 0
      left: 50%
      transform: translate(-50%)

    #nav-footer-titlebox, label[for="nav-footer-toggle"]
      opacity: 0
      transition: opacity .1s
      pointer-events: none

#nav-bar
  position: absolute
  left: 1vw
  top: 1vw
  height: calc(100% - 2vw)
  background: var(--navbar-dark-primary)
  border-radius: 16px
  display: flex
  flex-direction: column
  color: var(--navbar-light-primary)
  font-family: Verdana, Geneva, Tahoma, sans-serif
  overflow: hidden
  user-select: none

  hr
    margin: 0
    position: relative
    left: 16px
    width: calc(100% - 32px)
    border: none
    border-top: solid 1px var(--navbar-dark-secondary)

  a
    color: inherit
    text-decoration: inherit
  
  input[type="checkbox"]
    display: none

#nav-header
  position: relative
  width: var(--navbar-width)
  left: 16px
  width: calc(var(--navbar-width) - 16px)
  min-height: 80px
  background: var(--navbar-dark-primary)
  border-radius: 16px
  z-index: 2
  display: flex
  align-items: center
  transition: width .2s

  hr
    position: absolute
    bottom: 0

#nav-title
  font-size: 1.5rem
  transition: opacity 1s

label[for="nav-toggle"]
  position: absolute
  right: 0
  width: 3rem
  height: 100%
  display: flex
  align-items: center
  justify-content: center
  cursor: pointer

#nav-toggle-burger
  position: relative
  width: 16px
  height: 2px
  background: var(--navbar-dark-primary)
  border-radius: 99px
  transition: background .2s

  &:before, &:after
    content: ''
    position: absolute
    top: -6px
    width: 10px
    height: 2px
    background: var(--navbar-light-primary)
    border-radius: 99px
    transform: translate(2px, 8px) rotate(30deg)
    transition: .2s
  
  &:after
    top: 6px
    transform: translate(2px, -8px) rotate(-30deg)

#nav-content
  margin: -16px 0
  padding: 16px 0
  position: relative
  flex: 1
  width: var(--navbar-width)
  background: var(--navbar-dark-primary)
  box-shadow: 0 0 0 16px var(--navbar-dark-primary)
  direction: rtl
  overflow-x: hidden
  transition: width .2s

  &::-webkit-scrollbar
    width: 8px
    height: 8px

  &::-webkit-scrollbar-thumb
    border-radius: 99px
    background-color: #D62929
  
  &::-webkit-scrollbar-button
    height: 16px

#nav-content-highlight
  position: absolute
  left: 16px
  top: -54 - 16px
  width: calc(100% - 16px)
  height: 54px
  background: var(--background)
  background-attachment: fixed
  border-radius: 16px 0 0 16px
  transition: top .2s

  &:before, &:after
    content: ''
    position: absolute
    right: 0
    bottom: 100%
    width: 32px
    height: 32px
    border-radius: 50%
    box-shadow: 16px 16px var(--background)

  &:after
    top: 100%
    box-shadow: 16px -16px var(--background)

.nav-button
  position: relative
  margin-left: 16px
  height: 54px
  display: flex
  align-items: center
  color: var(--navbar-light-secondary)
  direction: ltr
  cursor: pointer
  z-index: 1
  transition: color .2s

  span
    transition: opacity 1s
  
  .fas
    transition: min-width .2s

  @for $i from 1 through 8
    &:nth-of-type(#{$i}):hover
      color: var(--navbar-dark-primary)

      & ~ #nav-content-highlight
        top: ($i - 1) * 54 + 16px

#nav-bar .fas
  min-width: 3rem
  text-align: center

#nav-footer
  position: relative
  width: var(--navbar-width)
  height: 54px
  background: var(--navbar-dark-secondary)
  border-radius: 16px
  display: flex
  flex-direction: column
  z-index: 2
  transition: width .2s, height .2s

#nav-footer-heading
  position: relative
  width: 100%
  height: 54px
  display: flex
  align-items: center

#nav-footer-avatar
  position: relative
  margin: 11px 0 11px 16px
  left: 0
  width: 32px
  height: 32px
  border-radius: 50%
  overflow: hidden
  transform: translate(0)
  transition: .2s

  img
    height: 100%

#nav-footer-titlebox
  position: relative
  margin-left: 16px
  width: 10px
  display: flex
  flex-direction: column
  transition: opacity 1s

#nav-footer-subtitle
  color: var(--navbar-light-secondary)
  font-size: .6rem

#nav-footer-toggle:checked + #nav-footer
  height: 30%
  min-height: 54px

  label[for="nav-footer-toggle"]
    transform: rotate(180deg)

label[for="nav-footer-toggle"]
  position: absolute
  right: 0
  width: 3rem
  height: 100%
  display: flex
  align-items: center
  cursor: pointer
  transition: transform .2s, opacity .2s

#nav-footer-content
  margin: 0 16px 16px 16px
  border-top: solid 1px var(--navbar-light-secondary)
  padding: 16px 0
  color: var(--navbar-light-secondary)
  font-size: .8rem
  overflow: auto

  &::-webkit-scrollbar
    width: 8px
    height: 8px

  &::-webkit-scrollbar-thumb
    border-radius: 99px
    background-color: #D62929
    </style>