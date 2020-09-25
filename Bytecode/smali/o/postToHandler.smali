.class public abstract Lo/postToHandler;
.super Lo/MediaControllerCompat$MediaControllerExtraData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/MediaControllerCompat$MediaControllerExtraData;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/app/Activity;

.field final extraCallback:Lo/requestExtraBinder;

.field final onMessageChannelReady:Landroid/os/Handler;

.field final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lo/MediaControllerCompat$MediaControllerExtraData;-><init>()V

    .line 49
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImpl;

    invoke-direct {v0}, Lo/MediaControllerCompat$MediaControllerImpl;-><init>()V

    iput-object v0, p0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 63
    iput-object p1, p0, Lo/postToHandler;->ICustomTabsCallback:Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 64
    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 65
    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, Lo/postToHandler;->onMessageChannelReady:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lo/postToHandler;->onPostMessage:I

    return-void

    .line 1081
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lo/onSessionEvent;)V
    .locals 1

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p1, v0}, Lo/postToHandler;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final asBinder()Landroid/app/Activity;
    .locals 1

    .line 195
    iget-object v0, p0, Lo/postToHandler;->ICustomTabsCallback:Landroid/app/Activity;

    return-object v0
.end method

.method public extraCallback(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v0, p0

    .line 148
    iget-object v1, v0, Lo/postToHandler;->ICustomTabsCallback:Landroid/app/Activity;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, p0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public extraCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onMessageChannelReady()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 133
    iget-object p1, p0, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMessageChannelReady(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onNavigationEvent()V
    .locals 0

    return-void
.end method

.method onNavigationEvent(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage()Landroid/view/LayoutInflater;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final onRelationshipValidationResult()Landroid/os/Handler;
    .locals 1

    .line 205
    iget-object v0, p0, Lo/postToHandler;->onMessageChannelReady:Landroid/os/Handler;

    return-object v0
.end method

.method public final onTransact()Landroid/content/Context;
    .locals 1

    .line 200
    iget-object v0, p0, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    return-object v0
.end method
