#charset "us-ascii"
//
// moreFailureReportsActor.t
//
#include <adv3.h>
#include <en_us.h>

#include "moreFailureReports.h"

modify Actor
	goToSleep() { reportFailure(&cannotSleepMsg); }

	checkTakeFromInventory(actor, obj) {
		reportFailure(&willNotLetGoMsg, self, obj);
		exit;
	}
	dobjFor(Kiss) { action() { reportFailure(&cannotKissActorMsg); } }
	defaultShowResponse(byActor, topic)
		{ reportFailure(&notInterestedMsg, self); }
	defaultGiveResponse(byActor, topic)
		{ reportFailure(&notInterestedMsg, self); }
	defaultAskForResponse(byActor, topic)
		{ reportFailure(&noResponseFromMsg, self); }
	defaultCommandResponse(fromActor, topic)
		{ reportFailure(&refuseCommand, self, fromActor); }
;

modify UntakeableActor
	dobjFor(Taste) { action() { reportFailure(&cannotTasteActorMsg); } }
;
