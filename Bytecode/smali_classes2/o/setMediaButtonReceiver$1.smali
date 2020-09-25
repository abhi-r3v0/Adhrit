.class Lo/setMediaButtonReceiver$1;
.super Lo/MediaControllerCompatApi21;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/setMediaButtonReceiver;


# direct methods
.method constructor <init>(Lo/setMediaButtonReceiver;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lo/setMediaButtonReceiver$1;->this$0:Lo/setMediaButtonReceiver;

    invoke-direct {p0}, Lo/MediaControllerCompatApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 189
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 1074
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lo/sendSessionEvent;

    .line 190
    iget-object p2, p0, Lo/setMediaButtonReceiver$1;->this$0:Lo/setMediaButtonReceiver;

    iget-object p2, p2, Lo/setMediaButtonReceiver;->onRelationshipValidationResult:Lo/sendSessionEvent$onMessageChannelReady;

    .line 1149
    iput-object p2, p1, Lo/sendSessionEvent;->extraCallback:Lo/sendSessionEvent$onMessageChannelReady;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 196
    iget-object p1, p0, Lo/setMediaButtonReceiver$1;->this$0:Lo/setMediaButtonReceiver;

    .line 2129
    iget v0, p1, Lo/setMediaButtonReceiver;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lo/setMediaButtonReceiver;->extraCallback:I

    .line 2130
    iget v0, p1, Lo/setMediaButtonReceiver;->extraCallback:I

    if-nez v0, :cond_0

    .line 2131
    iget-object v0, p1, Lo/setMediaButtonReceiver;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object p1, p1, Lo/setMediaButtonReceiver;->onTransact:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 171
    new-instance p2, Lo/setMediaButtonReceiver$1$3;

    invoke-direct {p2, p0}, Lo/setMediaButtonReceiver$1$3;-><init>(Lo/setMediaButtonReceiver$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lo/setMediaButtonReceiver$1;->this$0:Lo/setMediaButtonReceiver;

    .line 2136
    iget v0, p1, Lo/setMediaButtonReceiver;->onNavigationEvent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lo/setMediaButtonReceiver;->onNavigationEvent:I

    .line 2137
    invoke-virtual {p1}, Lo/setMediaButtonReceiver;->ICustomTabsCallback()V

    return-void
.end method
