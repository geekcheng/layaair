package threeDimen.primaryStage {
	import laya.d3.component.Component3D;
	import laya.d3.component.animation.SkinAnimations;
	import laya.d3.core.MeshSprite3D;
	import laya.d3.core.Sprite3D;
	import laya.d3.core.camera.Camera;
	import laya.d3.core.light.DirectionLight;
	import laya.d3.core.render.RenderState;
	import laya.d3.core.scene.BaseScene;
	import laya.d3.core.scene.Scene;
	import laya.d3.math.Vector3;
	import laya.d3.math.Viewport;
	import laya.d3.resource.models.Mesh;
	import laya.display.Stage;
	import laya.events.Event;
	import laya.utils.Stat;
	
	/**
	 * ...
	 * @author ...
	 */
	public class D3Base_SkinAnimation_MultiMeshSample {
		public function D3Base_SkinAnimation_MultiMeshSample() {
			//是否抗锯齿
			//Config.isAntialias = true;
			Laya3D.init(0, 0);
			Laya.stage.scaleMode = Stage.SCALE_FULL;
			Laya.stage.screenMode = Stage.SCREEN_NONE;
			Stat.show();
			
			var scene:Scene = Laya.stage.addChild(new Scene()) as Scene;
			
			scene.currentCamera = (scene.addChild(new Camera(new Viewport(0, 0, RenderState.clientWidth, RenderState.clientHeight), Math.PI / 3, 0, 0.1, 100))) as Camera;
			scene.currentCamera.transform.translate(new Vector3(0, 1.8, 2.0));
			scene.currentCamera.transform.rotate(new Vector3(-30, 0, 0), true, false);
			scene.currentCamera.clearColor = null;
			Laya.stage.on(Event.RESIZE, null, function():void {
				(scene.currentCamera as Camera).viewport = new Viewport(0, 0, RenderState.clientWidth, RenderState.clientHeight);
			});
			
			var directionLight:DirectionLight = scene.addChild(new DirectionLight()) as DirectionLight;
			directionLight.direction = new Vector3(0, -0.8, -1);
			directionLight.ambientColor = new Vector3(0.7, 0.6, 0.6);
			directionLight.specularColor = new Vector3(2.0, 2.0, 1.6);
			directionLight.diffuseColor = new Vector3(1, 1, 1);
			scene.shadingMode = BaseScene.PIXEL_SHADING;
			
			var rootSkinMesh:Sprite3D = scene.addChild(new Sprite3D()) as Sprite3D;
			
			var skinMesh0:MeshSprite3D = rootSkinMesh.addChild(new MeshSprite3D(Mesh.load("../../../../res/threeDimen/skinModel/nvXia/A02P1V1F001AX01@yequangongjinv-DEFAULT0.lm"))) as MeshSprite3D;
			var skinMesh1:MeshSprite3D = rootSkinMesh.addChild(new MeshSprite3D(Mesh.load("../../../../res/threeDimen/skinModel/nvXia/A02P1V1F001AX01@yequangongjinv-DEFAULT1.lm"))) as MeshSprite3D;
			var skinMesh2:MeshSprite3D = rootSkinMesh.addChild(new MeshSprite3D(Mesh.load("../../../../res/threeDimen/skinModel/nvXia/A02P1V1F001AX01@yequangongjinv-DEFAULT2.lm"))) as MeshSprite3D
			var skinMesh3:MeshSprite3D = rootSkinMesh.addChild(new MeshSprite3D(Mesh.load("../../../../res/threeDimen/skinModel/nvXia/A02P1V1F001AX01@yequangongjinv-DEFAULT3.lm"))) as MeshSprite3D;
			
			var skinAni0:SkinAnimations = skinMesh0.addComponent(SkinAnimations) as SkinAnimations;
			skinAni0.url = "../../../../res/threeDimen/skinModel/nvXia/yequangongjinv.ani";
			skinAni0.play(0, 0.6);
			var skinAni1:SkinAnimations = skinMesh1.addComponent(SkinAnimations) as SkinAnimations;
			skinAni1.url = "../../../../res/threeDimen/skinModel/nvXia/yequangongjinv.ani";
			skinAni1.play(0, 0.6);
			var skinAni2:SkinAnimations = skinMesh2.addComponent(SkinAnimations) as SkinAnimations;
			skinAni2.url = "../../../../res/threeDimen/skinModel/nvXia/yequangongjinv.ani";
			skinAni2.play(0, 0.6);
			var skinAni3:SkinAnimations = skinMesh3.addComponent(SkinAnimations) as SkinAnimations;
			skinAni3.url = "../../../../res/threeDimen/skinModel/nvXia/yequangongjinv.ani";
			skinAni3.play(0, 0.6);
		}
	
	}

}