import com.haxepunk.Scene;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class MainScene extends Scene
{

  // set the movement speed
  private static inline var my_shape_speed:Float = 10;

  // strict static input labels, (optional, you could just use literal strings)
  private static var INPUTS:{ LEFT:String, RIGHT:String, UP:String, DOWN:String} = {
    LEFT : "LEFT",
    RIGHT : "RIGHT",
    UP : "UP",
    DOWN : "DOWN"
  };

  /*
    The shape that we will be moving
   */
  private var my_shape:Entity;

  /*
    Store my_shape movement speed
   */
  private var my_shape_x_velocity:Float;
  private var my_shape_y_velocity:Float;

  public override function begin()
  {
    /*
      Create a new Entity
      http://haxepunk.com/documentation/api/com/haxepunk/Entity.html
     */
    my_shape = new Entity();

    /*
      Initialize my_shape movement speed
     */
    my_shape_x_velocity = 0;
    my_shape_y_velocity = 0;

    /*
      Create a new Image graphic
      http://haxepunk.com/documentation/api/com/haxepunk/graphics/Image.html#createRect
     */
    var shape_image = Image.createRect( 100, 100, 0x3366FF );

    /*
      Set the Entity.graphic to the new image
      http://haxepunk.com/documentation/api/com/haxepunk/Entity.html#graphic
     */
    my_shape.graphic = shape_image;


    /*
      Add the new entity to this scene
      http://haxepunk.com/documentation/api/com/haxepunk/Scene.html#add
     */
    add( my_shape );

    // position the box
    my_shape.x = 250;
    my_shape.y = 250;

    /*
      Rotate the shape
      http://haxepunk.com/documentation/api/com/haxepunk/graphics/Image.html#angle
     */
    shape_image.angle = 125;

    /*
      define arrow keys and WASD control labels
     */ 
    Input.define( INPUTS.LEFT,  [Key.LEFT, Key.A] );
    Input.define( INPUTS.RIGHT, [Key.RIGHT, Key.D]);
    Input.define( INPUTS.UP,    [Key.UP, Key.W] );
    Input.define( INPUTS.DOWN,  [Key.DOWN, Key.S]);

  }

  /*
    Performed by the game loop, updates all contained Entities.
    If you override this to give your Scene update code, remember to call super.update() or your Entities will not be updated.
    http://haxepunk.com/documentation/api/com/haxepunk/Scene.html#update
   */
  public override function update()
  {
    handleInput();

    handleAnimation();
    
    super.update();
  }

  /**
   * moves shape
   */
  public inline function handleAnimation()
  {
    my_shape.x += my_shape_x_velocity;
    my_shape.y += my_shape_y_velocity;
  }

  /**
   * Checks if keyboard input is triggered
   */
  private inline function handleInput()
  {

    if ( Input.check( INPUTS.LEFT ) ){

      // move shape towards negative x axis
      my_shape_x_velocity = -my_shape_speed;

    }else if ( Input.check( INPUTS.RIGHT ) ){

      // move shape towards positive x axis
      my_shape_x_velocity = my_shape_speed;

    }else{

      // stop moving horizontally
      my_shape_x_velocity *= .9; // set to = 0; to stop hard

    }


    if ( Input.check( INPUTS.UP ) ){

      // move shape towards negative y axis
      my_shape_y_velocity = -my_shape_speed;

    }else if ( Input.check( INPUTS.DOWN ) ){

      // move shape towards positive y axis
      my_shape_y_velocity = my_shape_speed;

    }else{

      // stop moving vertically
      my_shape_y_velocity *= .9; // set to = 0; to stop hard

    }


  }

}