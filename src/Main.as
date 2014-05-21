/**
 * Created by evgenyyurko on 5/12/14.
 */
package
{
import flash.display.Sprite;

import structureData.List;

[SWF(backgroundColor="#2A2A2A", width="1000", height="750", frameRate="29")]
public class Main extends Sprite
{
    /*
     * Static fields
     */


    /*
     * Static properties
     */

    /*
     * Fields
     */

    public function Main()
    {
        var root:List;
        var current:List;

        root = new List();
        current = root;
        current.value = 0;

        for (var i:int = 1; i < 3; i++)
        {
            var list:List = new List();

            list.value = i;

            list.setBack(current);
            current.setNext(list);

            current = list;
        }

        var element:List = getElementToIndex(0, root);

        setElementToIndex(0, root, new List());
        trace(element.value.toString());
    }

    private static function getElementToIndex(index:int, root:List):List
    {
        var result:List = root;

        while (result.value != index)
        {
            result = result.getNextElement();
        }

        return result;
    }

    private static function setElementToIndex(index:int, root:List, newElement:List):void
    {
        var nextElement:List = root;

        newElement.value = index;

        while (nextElement.value != index)
        {
            nextElement = nextElement.getNextElement();
        }

        var backElement:List = nextElement.getBackElement();
        var processingElement:List = nextElement;

        do
        {
            processingElement.value += 1;
            processingElement = processingElement.getNextElement();
        }
        while (processingElement != null);

        newElement.setNext(nextElement);
        newElement.setBack(backElement);

        if(backElement != null)
        {
            backElement.setNext(newElement);
        }

        if(nextElement != null)
        {
            nextElement.setBack(newElement);
        }

    }

    private function init():void
    {

    }
}
}
