.class final Lo/getRecycledView$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getRecycledView;-><init>()V
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
        "Lo/runningAverage;",
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
        "Lcom/dreamplug/fabrik/ui/whatsapp/OTPEventData;",
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
.field private synthetic onMessageChannelReady:Lo/getRecycledView;


# direct methods
.method constructor <init>(Lo/getRecycledView;)V
    .locals 0

    iput-object p1, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 34
    check-cast p1, Lo/runningAverage;

    .line 2003
    iget-boolean v0, p1, Lo/runningAverage;->onMessageChannelReady:Z

    if-eqz v0, :cond_4

    .line 1126
    iget-object p1, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->phone:I

    invoke-virtual {p1, v0}, Lo/getRecycledView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1127
    iget-object p1, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    invoke-static {p1}, Lo/getRecycledView;->onMessageChannelReady(Lo/getRecycledView;)Lo/getMoveDuration;

    move-result-object p1

    .line 1128
    new-instance v0, Lo/getRecycledViewCount$onMessageChannelReady;

    iget-object v1, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->phone:I

    invoke-virtual {v1, v2}, Lo/getRecycledView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "phone"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    .line 3000
    iget-object v2, v2, Lo/getRecycledView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/attach;

    .line 3014
    iget-object v2, v2, Lo/attach;->onNavigationEvent:Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;

    if-eqz v2, :cond_0

    .line 1128
    invoke-virtual {v2}, Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;->getOtpId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iget-object v3, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    invoke-static {v3}, Lo/getRecycledView;->onPostMessage(Lo/getRecycledView;)Lo/getRecycledView$onPostMessage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3138
    iget-object v3, v3, Lo/getRecycledView$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "NA"

    .line 1128
    :cond_3
    invoke-direct {v0, v1, v2, v3}, Lo/getRecycledViewCount$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 1127
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3413
    new-instance v1, Lo/onGetChildDrawingOrder$onConnectionFailed;

    invoke-direct {v1, v0}, Lo/onGetChildDrawingOrder$onConnectionFailed;-><init>(Lo/getRecycledViewCount$onMessageChannelReady;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {p1, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 1131
    iget-object p1, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void

    .line 1133
    :cond_4
    iget-object v0, p0, Lo/getRecycledView$onTransact;->onMessageChannelReady:Lo/getRecycledView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {v0, v1}, Lo/getRecycledView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setLayoutStateDirection;

    .line 4003
    iget-object p1, p1, Lo/runningAverage;->ICustomTabsCallback:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 1133
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void
.end method
