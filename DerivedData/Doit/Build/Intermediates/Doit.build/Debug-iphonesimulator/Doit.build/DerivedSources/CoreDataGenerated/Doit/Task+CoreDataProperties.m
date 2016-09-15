//
//  Task+CoreDataProperties.m
//  
//
//  Created by Michael Cruz on 9/15/16.
//
//  This file was automatically generated and should not be edited.
//

#import "Task+CoreDataProperties.h"

@implementation Task (CoreDataProperties)

+ (NSFetchRequest<Task *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Task"];
}

@dynamic important;
@dynamic name;

@end
