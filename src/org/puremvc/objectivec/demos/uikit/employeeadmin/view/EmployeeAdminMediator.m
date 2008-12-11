//
//  EmployeeAdminMediator.m
//  PureMVC_ObjectiveC
//
//  PureMVC Port to ObjectiveC by Brian Knorr <brian.knorr@puremvc.org>
//  PureMVC - Copyright(c) 2006-2008 Futurescale, Inc., Some rights reserved.
//

#import "EmployeeAdminMediator.h"
#import "EmployeeAdmin.h"
#import "ApplicationFacade.h"

@implementation EmployeeAdminMediator

+(NSString *)NAME {
	return @"EmployeeAdminMediator";
}

-(EmployeeAdmin *)viewComponent {
	return viewComponent;
}

-(void)initializeMediator {
	self.mediatorName = [EmployeeAdminMediator NAME];
}

-(NSArray *)listNotificationInterests {
	return [NSArray arrayWithObjects:ShowUserForm, ShowUserList, ShowError, nil];
}

-(void)handleNotification:(id<INotification>)notification {
	
	if ([[notification name] isEqualToString:ShowUserForm]) {
		[self.viewComponent showUserForm];
	} else if ([[notification name] isEqualToString:ShowUserList]) {
		[self.viewComponent showUserList];
	} else if ([[notification name] isEqualToString:ShowError]) {
		[self.viewComponent showError:[notification body]];
	}
}


@end
