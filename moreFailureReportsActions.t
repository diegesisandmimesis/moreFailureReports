#charset "us-ascii"
//
// moreFailureReportsActions.t
//
#include <adv3.h>
#include <en_us.h>

#include "moreFailureReports.h"

modify JumpOffIAction
	execAction() { reportFailure(&cannotJumpOffHereMsg); }
;

modify TravelAction
	execAction() {
		local conn;
		if((conn = getConnector()) != nil) {
			replaceAction(TravelVia, conn);
		} else {
			reportFailure(&cannotGoThatWayMsg);
		}
	}
;
