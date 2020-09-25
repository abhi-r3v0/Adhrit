.class final Lo/hasValue$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValue;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field final synthetic onPostMessage:Lo/hasValue;


# direct methods
.method constructor <init>(Lo/hasValue;)V
    .locals 0

    iput-object p1, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 41
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    .line 1076
    iget-object v0, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v0

    iget-object v1, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    const v2, 0x7f13038d

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 1077
    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "MAX_BUREAU_INPUT_ATTEMPT_EXCEEDED"

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1078
    iget-object p1, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object p1

    sget-object v0, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    invoke-virtual {p1, v0}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1079
    iget-object p1, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->messageSnackBar:I

    invoke-virtual {p1, v0}, Lo/hasValue;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/appendViewToAllSpans;

    const-string v0, "messageSnackBar"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc1c

    new-instance v3, Lo/hasValue$onMessageChannelReady$1;

    invoke-direct {v3, p0}, Lo/hasValue$onMessageChannelReady$1;-><init>(Lo/hasValue$onMessageChannelReady;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void

    .line 1084
    :cond_1
    iget-object p1, p0, Lo/hasValue$onMessageChannelReady;->onPostMessage:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object p1

    sget-object v0, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    invoke-virtual {p1, v0}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    return-void
.end method
