.class final Lo/isAnimating$getInterfaceDescriptor$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isAnimating$getInterfaceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "count",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/isAnimating$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/isAnimating$getInterfaceDescriptor;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 60
    check-cast p1, Ljava/lang/String;

    const-string v0, "count"

    .line 1200
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "0"

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 1201
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    iget-object v0, v0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->extraCallback(Lo/isAnimating;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    iget-object v0, v0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->onPostMessage(Lo/isAnimating;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    iget-object v0, v0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->winList:I

    invoke-virtual {v0, v3}, Lo/isAnimating;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/startActivity;

    const-string/jumbo v3, "winList"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    iget-object v3, v3, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo/isAnimating$getInterfaceDescriptor$5$1;

    invoke-direct {v4, p0}, Lo/isAnimating$getInterfaceDescriptor$5$1;-><init>(Lo/isAnimating$getInterfaceDescriptor$5;)V

    check-cast v4, Lo/getServerTime;

    const-wide/16 v5, 0x0

    .line 2045
    invoke-static {v0, v3, v5, v6, v4}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    new-array v0, v2, [Lo/addWrite;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "live_user_count"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1205
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "win_farm_first_live_user_count"

    .line 1205
    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1208
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    iget-object v0, v0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->onMessageChannelReady(Lo/isAnimating;)V

    .line 1211
    :cond_1
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor$5;->onPostMessage:Lo/isAnimating$getInterfaceDescriptor;

    iget-object v0, v0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->asInterface(Lo/isAnimating;)Lo/requestLayout;

    move-result-object v0

    const-string v1, "onlineCount"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3127
    iput-object p1, v0, Lo/requestLayout;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 3128
    invoke-virtual {v0}, Lo/requestLayout;->ICustomTabsCallback$Stub()V

    return-void
.end method
