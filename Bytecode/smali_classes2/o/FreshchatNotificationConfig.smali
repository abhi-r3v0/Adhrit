.class public final Lo/FreshchatNotificationConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/setNotificationSoundEnabled;

.field private static volatile onNavigationEvent:Lo/setNotificationSoundEnabled;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/launchActivityOnFinish;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/launchActivityOnFinish;-><init>(Lo/setLargeIcon;)V

    .line 3
    sput-object v0, Lo/FreshchatNotificationConfig;->ICustomTabsCallback:Lo/setNotificationSoundEnabled;

    sput-object v0, Lo/FreshchatNotificationConfig;->onNavigationEvent:Lo/setNotificationSoundEnabled;

    return-void
.end method

.method public static onNavigationEvent()Lo/setNotificationSoundEnabled;
    .locals 1

    .line 1
    sget-object v0, Lo/FreshchatNotificationConfig;->onNavigationEvent:Lo/setNotificationSoundEnabled;

    return-object v0
.end method
