
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
        SESprite monsters;
        
        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);
                var w =get_scene_width();
                var h =get_scene_height();        
                rsc.prepare_image("jf","jf",w*0.10,h*0.15);
                monsters = add_sprite_for_image(SEImage.for_resource("jf"));
        
                monsters.move (Math.random(0,w),Math.random(0,h));
        }
        
                public void tick(TimeVal now, double delta) {
                        var mx = monsters.get_x();
                        var my = monsters.get_y();
                        var px = MainScene.px;
                        var py = MainScene.py;
                        monsters.move(mx + (px-mx)/Math.random(100, 1000),my + (py-my)/20);
                }
        public void cleanup() {
                base.cleanup();
        }
}
