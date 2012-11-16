package
{
    import noiseandheat.flexunit.visuallistener.VisualListener;

    import org.flexunit.internals.TraceListener;
    import org.flexunit.runner.FlexUnitCore;
    import org.fluint.uiImpersonation.VisualTestEnvironmentBuilder;

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;

    [SWF(backgroundColor="#000000", frameRate="120", width="800", height="600")]
    public class TestRunner extends Sprite
    {
        private var core:FlexUnitCore;
        private var listener:VisualListener;

        public function TestRunner()
        {
            core = new FlexUnitCore();
            VisualTestEnvironmentBuilder.getInstance(this);

            listener = new VisualListener();
            addChild(listener);
            core.addListener(listener);

            // Add a trace listener too if you want some trace output core.addListener(new
            TraceListener(800, 600));

            core.run(NoiseAndHeatSuite);

            addEventListener(Event.ADDED_TO_STAGE, addedToStage);
        }

        protected function addedToStage(event:Event):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, addedToStage);

            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;
        }
    }
}
