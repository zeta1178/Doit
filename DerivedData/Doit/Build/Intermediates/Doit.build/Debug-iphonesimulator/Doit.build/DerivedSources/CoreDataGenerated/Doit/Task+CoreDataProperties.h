//
//  Task+CoreDataProperties.h
//  
//
//  Created by Michael Cruz on 9/15/16.
//
//  This file was automatically generated and should not be edited.
//

#import "Task+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Task (CoreDataProperties)

+ (NSFetchRequest<Task *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSBoolean *important;
@property (nullable, nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
