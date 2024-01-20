#charset "us-ascii"
//
// moreFailureReports.t
//
//	Patches for places in adv3 where actions fail without the failure
//	being flagged in the transcript.
//
//	For example, by default >TAKE PEBBLE will fail if the pebble is
//	currently in another actor's inventory, but gTranscript.isFailure
//	will be nil.
//
//	Mostly what this module does is change uses of mainReport() to
//	reportFailure() with no other modification.
//
//
#include <adv3.h>
#include <en_us.h>

#include "moreFailureReports.h"

// Module ID for the library
moreFailureReportsModuleID: ModuleID {
        name = 'More Failure Reports Library'
        byline = 'Diegesis & Mimesis'
        version = '1.0'
        listingOrder = 99
}
