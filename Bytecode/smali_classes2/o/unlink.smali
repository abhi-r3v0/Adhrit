.class public final Lo/unlink;
.super Ljava/lang/Object;

# interfaces
.implements Lo/reauthenticate;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final extraCallback:Lo/getAuthTimestamp;

.field private final onNavigationEvent:Lo/startActivityForLinkWithProvider;


# direct methods
.method constructor <init>(Lo/getAuthTimestamp;Lo/startActivityForLinkWithProvider;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/unlink;->extraCallback:Lo/getAuthTimestamp;

    iput-object p2, p0, Lo/unlink;->onNavigationEvent:Lo/startActivityForLinkWithProvider;

    iput-object p3, p0, Lo/unlink;->ICustomTabsCallback:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getMinidumpFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMinidumpFile<",
            "Lo/getIdToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/unlink;->extraCallback:Lo/getAuthTimestamp;

    iget-object v1, p0, Lo/unlink;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1000
    iget-object v2, v0, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    if-nez v2, :cond_0

    invoke-static {}, Lo/getAuthTimestamp;->extraCallback()Lo/getMinidumpFile;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "requestUpdateInfo(%s)"

    invoke-virtual {v2, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lo/doOnboarding;

    invoke-direct {v2}, Lo/doOnboarding;-><init>()V

    iget-object v3, v0, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    new-instance v4, Lo/updatePassword;

    invoke-direct {v4, v0, v2, v1, v2}, Lo/updatePassword;-><init>(Lo/getAuthTimestamp;Lo/doOnboarding;Ljava/lang/String;Lo/doOnboarding;)V

    .line 2000
    new-instance v0, Lo/optionalProvider;

    .line 3000
    iget-object v1, v4, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 2000
    invoke-direct {v0, v3, v1, v4}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v3, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 4000
    iget-object v0, v2, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/getIdToken;Landroid/app/Activity;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 6000
    new-instance v0, Lo/enroll;

    invoke-direct {v0}, Lo/enroll;-><init>()V

    const/4 v1, 0x0

    .line 7000
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lo/enroll;->extraCallback:Ljava/lang/Integer;

    .line 6000
    invoke-virtual {v0}, Lo/reload$onNavigationEvent;->onNavigationEvent()Lo/reload$onNavigationEvent;

    .line 5000
    invoke-virtual {v0}, Lo/reload$onNavigationEvent;->onPostMessage()Lo/reload;

    move-result-object v0

    new-instance v2, Lo/updateProfile;

    invoke-direct {v2, p2}, Lo/updateProfile;-><init>(Landroid/app/Activity;)V

    .line 9000
    invoke-virtual {p1, v0}, Lo/getIdToken;->extraCallback(Lo/reload;)Landroid/app/PendingIntent;

    move-result-object p2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    return v1

    .line 8000
    :cond_1
    invoke-virtual {p1, v0}, Lo/getIdToken;->extraCallback(Lo/reload;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    const/16 p2, 0x4ee0

    invoke-interface {v2, p1, p2}, Lo/addDependency;->ICustomTabsCallback(Landroid/content/IntentSender;I)V

    return v3
.end method

.method public final extraCallback()Lo/getMinidumpFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMinidumpFile<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/unlink;->extraCallback:Lo/getAuthTimestamp;

    iget-object v1, p0, Lo/unlink;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10000
    iget-object v2, v0, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    if-nez v2, :cond_0

    invoke-static {}, Lo/getAuthTimestamp;->extraCallback()Lo/getMinidumpFile;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "completeUpdate(%s)"

    invoke-virtual {v2, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lo/doOnboarding;

    invoke-direct {v2}, Lo/doOnboarding;-><init>()V

    iget-object v3, v0, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    new-instance v4, Lo/updatePhoneNumber;

    invoke-direct {v4, v0, v2, v2, v1}, Lo/updatePhoneNumber;-><init>(Lo/getAuthTimestamp;Lo/doOnboarding;Lo/doOnboarding;Ljava/lang/String;)V

    .line 11000
    new-instance v0, Lo/optionalProvider;

    .line 12000
    iget-object v1, v4, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 11000
    invoke-direct {v0, v3, v1, v4}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v3, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 13000
    iget-object v0, v2, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object v0
.end method

.method public final declared-synchronized extraCallback(Lo/detect;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/unlink;->onNavigationEvent:Lo/startActivityForLinkWithProvider;

    invoke-virtual {v0, p1}, Lo/CrashlyticsNativeComponent;->onNavigationEvent(Lo/hasCrashDataForSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/detect;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/unlink;->onNavigationEvent:Lo/startActivityForLinkWithProvider;

    invoke-virtual {v0, p1}, Lo/CrashlyticsNativeComponent;->onMessageChannelReady(Lo/hasCrashDataForSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
