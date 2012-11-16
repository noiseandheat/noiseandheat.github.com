 #import "NSMutableArray+Shuffle.h"

- (NSMutableArray*)myAwesomeFunction
{
	NSMutableArray* array = [NSMutableArray arrayWithObjects: @"Fred", @"Bob", @"Alice"];
	[array shuffle];

	return array;
}
