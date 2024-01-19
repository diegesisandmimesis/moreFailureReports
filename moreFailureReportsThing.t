#charset "us-ascii"
//
// moreFailureReportsThing.t
//
#include <adv3.h>
#include <en_us.h>

#include "moreFailureReports.h"

modify Thing
	dobjFor(Kiss) { action() { reportFailure(&cannotKissMsg); } }
	dobjFor(Attack) { action() { reportFailure(&uselessToAttackMsg); } }
	dobjFor(AttackWith) { action() { reportFailure(&uselessToAttackMsg); } }
;
