<template>
  <div class="particles">
    <vue-particles class="particles"
                   color="fff"
                   :particleOpacity="0.7"
                   :particlesNumber="60"
                   shapeType="star"
                   :particleSize="4"
                   linesColor="#fff"
                   :linesWidth="1"
                   :lineLinked="true"
                   :lineOpacity="0.4"
                   :linesDistance="150"
                   :moveSpeed="2"
                   :hoverEffect="true"
                   hoverMode="grab"
                   :clickEffect="true"
                   clickMode="push"
    >
    </vue-particles>
  </div>
</template>

<script>
    export default {
        name: "Particles"
    }
</script>

<style scoped>
  .particles{
    height: 251px;
    width: 100%;
    margin-top: -191px;
    z-index: 12;
    position: relative;
  }
</style>
