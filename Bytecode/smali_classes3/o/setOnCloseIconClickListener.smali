.class final Lo/setOnCloseIconClickListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setCounterTextAppearance;

.field private final synthetic onNavigationEvent:Lo/setCheckedIconResource;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setOnCloseIconClickListener;->onNavigationEvent:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setOnCloseIconClickListener;->extraCallback:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setOnCloseIconClickListener;->onNavigationEvent:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 3
    iget-object v0, p0, Lo/setOnCloseIconClickListener;->onNavigationEvent:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    iget-object v1, p0, Lo/setOnCloseIconClickListener;->extraCallback:Lo/setCounterTextAppearance;

    .line 4
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lo/setHint;->onNavigationEvent()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 7
    invoke-virtual {v0}, Lo/setHint;->getInterfaceDescriptor()V

    .line 8
    iget-object v2, v1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v2, v1, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    invoke-static {v2}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v2

    .line 10
    iget-object v3, v1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lo/setHint;->onPostMessage(Ljava/lang/String;)Lo/zzq;

    move-result-object v3

    .line 11
    iget-object v4, v1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lo/setHint;->extraCallback(Ljava/lang/String;Lo/zzq;)V

    .line 12
    invoke-virtual {v2, v3}, Lo/zzq;->ICustomTabsCallback(Lo/zzq;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lo/setHint;->onMessageChannelReady(Lo/setCounterTextAppearance;)V

    :cond_0
    return-void
.end method
