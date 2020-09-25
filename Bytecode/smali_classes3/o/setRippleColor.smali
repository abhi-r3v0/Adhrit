.class public final Lo/setRippleColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic extraCallback:Lo/setIconTintResource;

.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setIconTintResource;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo/setRippleColor;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setRippleColor;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/setRippleColor;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    .line 5
    iget-object p1, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object p1, p1, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p2}, Lo/aa$1;->onNavigationEvent(Landroid/os/IBinder;)Lo/createSocket;

    move-result-object p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object p1, p1, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    iget-object p2, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object p2, p2, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object p2, p2, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 15
    invoke-virtual {p2}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p2

    new-instance v0, Lo/setStrokeColorResource;

    invoke-direct {v0, p0, p1, p0}, Lo/setStrokeColorResource;-><init>(Lo/setRippleColor;Lo/createSocket;Landroid/content/ServiceConnection;)V

    .line 16
    invoke-virtual {p2, v0}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    iget-object p2, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object p2, p2, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object p1, p1, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
