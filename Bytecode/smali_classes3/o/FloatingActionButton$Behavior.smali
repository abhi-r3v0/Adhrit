.class public final Lo/FloatingActionButton$Behavior;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lo/setPressable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    return-void
.end method

.method private final ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;
    .locals 2

    .line 59
    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method private final ICustomTabsCallback(Ljava/lang/Runnable;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Landroid/content/Context;)Lo/setHint;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lo/setForeground;

    invoke-direct {v2, p0, v0, p1}, Lo/setForeground;-><init>(Lo/FloatingActionButton$Behavior;Lo/setHint;Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 10
    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Local AppMeasurementJobService called. action"

    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lo/setTranslationY;

    invoke-direct {v1, p0, v0, p1}, Lo/setTranslationY;-><init>(Lo/FloatingActionButton$Behavior;Lo/HideBottomViewOnScrollBehavior;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v1}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 40
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 5
    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(ILo/HideBottomViewOnScrollBehavior;Landroid/content/Intent;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    check-cast v0, Lo/setPressable;

    invoke-interface {v0, p1}, Lo/setPressable;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p2

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Local AppMeasurementService processed last upload request. StartId"

    .line 70
    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Completed wakeful intent."

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    check-cast p1, Lo/setPressable;

    invoke-interface {p1, p3}, Lo/setPressable;->onPostMessage(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 54
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Lo/HideBottomViewOnScrollBehavior;Landroid/app/job/JobParameters;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "AppMeasurementJobService processed last upload request."

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    check-cast p1, Lo/setPressable;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lo/setPressable;->onNavigationEvent(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 32
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "onBind called with null intent"

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.START"

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    new-instance p1, Lo/setCheckedIconResource;

    iget-object v0, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Lo/setHint;->onMessageChannelReady(Landroid/content/Context;)Lo/setHint;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/setCheckedIconResource;-><init>(Lo/setHint;)V

    return-object p1

    .line 37
    :cond_1
    invoke-direct {p0}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "onBind received unknown action"

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onPostMessage(Landroid/content/Intent;II)I
    .locals 5

    .line 15
    iget-object p2, p0, Lo/FloatingActionButton$Behavior;->onMessageChannelReady:Landroid/content/Context;

    const/4 v0, 0x0

    .line 16
    invoke-static {p2, v0, v0}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-virtual {v2, v4, v3, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Lo/setTranslationZ;

    invoke-direct {v1, p0, p3, p2, p1}, Lo/setTranslationZ;-><init>(Lo/FloatingActionButton$Behavior;ILo/HideBottomViewOnScrollBehavior;Landroid/content/Intent;)V

    invoke-direct {p0, v1}, Lo/FloatingActionButton$Behavior;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method
