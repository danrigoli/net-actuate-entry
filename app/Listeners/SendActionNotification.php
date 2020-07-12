<?php

namespace App\Listeners;

use App\Events\DetectAction;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class SendActionNotification
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  DetectAction  $event
     * @return void
     */
    public function handle(DetectAction $event)
    {
        //
    }
}
