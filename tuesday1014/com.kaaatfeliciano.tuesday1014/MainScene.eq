
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
    SESprite court;
    public static int px;
    public static int py;
    int i;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
		AudioClipManager.prepare("living");
        px = 0; py=0;
        var w = get_scene_width(), h=get_scene_height();
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("cloud", "cloud", w, h);
        court = add_sprite_for_image(SEImage.for_resource("cloud"));
        court.move(0,0);
        add_entity(new PlayerEntity());
                for( i = 0; i<Math.random(1,0); i++){
                add_entity(new MonsterEntity());
				AudioClipManager.play("living");
                }
    }
    
    public void on_pointer_move(SEPointerInfo pi) {
        px = pi.get_x();
        py = pi.get_y();
    }
    public void cleanup() {
        base.cleanup();
    }
}