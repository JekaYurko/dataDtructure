/**
 * Created by evgenyyurko on 5/13/14.
 */
package structureData
{
import flash.display.Sprite;

public class List extends Sprite
{
    /*
     * Fields
     */
    private var _value:int;
    private var _next:List;
    private var _back:List;

    /*
     * Property
     */
    public function get value():int
    {
        return _value;
    }

    public function set value(value:int):void
    {
        _value = value;
    }

    /*
     * Methods
     */
    public function List()
    {


        init();
    }

    public function getNextElement():List
    {
        return _next;
    }

    public function getBackElement():List
    {
        return _back;
    }

    public function setNext(value:List = null):void
    {
        _next = value;
    }

    public function setBack(value:List = null):void
    {
        _back = value;
    }

    private function init():void
    {

    }
}
}
