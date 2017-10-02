<template>
  <div>
    <h1> hello {{ name }} </h1>
    <p> {{ text }} </p>
  </div>
</template>

<script>
export default {
  asyncData(context) {
    if (context.payload)
      return { name: 'payload ' + context.payload.id, text: context.payload.text }
    else
      return { name: 'context ' + context.params.id, text: "unknown" }
  }
}
</script>

<style>

</style>
