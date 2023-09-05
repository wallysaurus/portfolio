<script>
  import { T } from '@threlte/core'
  import { ContactShadows, Float, Grid, OrbitControls, useGltf, TransformControls } from '@threlte/extras'
	import { Mesh, OrthographicCamera } from 'three';
	import Shark from './Shark.svelte';
</script>

<T.OrthographicCamera
  makeDefault
  position={[-20, 10, 0]}
  zoom={100}
  near={0}
>
  <OrbitControls
    autoRotate
    enableZoom={true}
    enableDamping
    autoRotateSpeed={0.5}
    target.y={1.5}
  />
</T.OrthographicCamera>
<T.AmbientLight intensity={0.2} />

<T.PointLight
    intensity={0.7}
    position.x={0}
    position.y={0}
    let:ref>
  <TransformControls translationSnap={2} object={ref} />
</T.PointLight>
<T.PointLight
    intensity={0.7}
    position.x={5}
    position.y={0}
    let:ref>
  <TransformControls translationSnap={2} object={ref} />
</T.PointLight>
<T.PointLight
    intensity={0.7}
    position.x={10}
    position.y={0}
    let:ref>
  <TransformControls translationSnap={2} object={ref} />
</T.PointLight>

<Grid
  position.y={-0.001}
  cellColor="#ffffff"
  sectionColor="#ffffff"
  sectionThickness={0}
  fadeDistance={25}
  cellSize={2}
  infiniteGrid={true}
/>

<Shark
  position={[0, 1, 0]}
>
  <T.Mesh
    material="hotpink"
  />
</Shark>

<ContactShadows
  scale={10}
  blur={2}
  far={2.5}
  opacity={0.5}
/>