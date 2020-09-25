.class final Lo/setErrorEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/setCounterTextAppearance;

.field private final synthetic onMessageChannelReady:Lo/setHint;


# direct methods
.method constructor <init>(Lo/setHint;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setErrorEnabled;->onMessageChannelReady:Lo/setHint;

    iput-object p2, p0, Lo/setErrorEnabled;->extraCallback:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setErrorEnabled;->onMessageChannelReady:Lo/setHint;

    .line 4
    invoke-virtual {v0}, Lo/setHint;->onNavigationEvent()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setErrorEnabled;->onMessageChannelReady:Lo/setHint;

    iget-object v2, p0, Lo/setErrorEnabled;->extraCallback:Lo/setCounterTextAppearance;

    iget-object v2, v2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lo/zzq;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setErrorEnabled;->extraCallback:Lo/setCounterTextAppearance;

    iget-object v0, v0, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo/zzq;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/setErrorEnabled;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Analytics storage consent denied. Returning null app instance id"

    .line 10
    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Lo/setErrorEnabled;->onMessageChannelReady:Lo/setHint;

    iget-object v2, p0, Lo/setErrorEnabled;->extraCallback:Lo/setCounterTextAppearance;

    invoke-virtual {v0, v2}, Lo/setHint;->ICustomTabsCallback(Lo/setCounterTextAppearance;)Lo/setFabAnimationMode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lo/setErrorEnabled;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "App info was null when attempting to get app instance id"

    .line 16
    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1

    .line 18
    :cond_2
    invoke-virtual {v0}, Lo/setFabAnimationMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
