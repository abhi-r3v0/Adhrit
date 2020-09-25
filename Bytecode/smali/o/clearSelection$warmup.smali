.class final Lo/clearSelection$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearSelection;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/setWidth$onMessageChannelReady;",
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
        "output",
        "Lcom/cred/pay/core/CardValidator$Output;",
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
.field private synthetic onMessageChannelReady:Lo/clearSelection;


# direct methods
.method constructor <init>(Lo/clearSelection;)V
    .locals 0

    iput-object p1, p0, Lo/clearSelection$warmup;->onMessageChannelReady:Lo/clearSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 61
    check-cast p1, Lo/setWidth$onMessageChannelReady;

    .line 1105
    iget-object v0, p0, Lo/clearSelection$warmup;->onMessageChannelReady:Lo/clearSelection;

    invoke-static {v0, p1}, Lo/clearSelection;->extraCallback(Lo/clearSelection;Lo/setWidth$onMessageChannelReady;)V

    .line 1106
    iget-object v0, p0, Lo/clearSelection$warmup;->onMessageChannelReady:Lo/clearSelection;

    .line 2000
    iget-object v0, v0, Lo/clearSelection;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/inflate;

    .line 2249
    iget-object v1, p1, Lo/setWidth$onMessageChannelReady;->onRelationshipValidationResult:Lcom/cred/pay/repository/models/CardBinResponse;

    .line 3064
    iput-object v1, v0, Lo/inflate;->ICustomTabsCallback$Stub$Proxy:Lcom/cred/pay/repository/models/CardBinResponse;

    .line 1107
    iget-object v0, p0, Lo/clearSelection$warmup;->onMessageChannelReady:Lo/clearSelection;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->surchargeTextView:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "surchargeTextView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3249
    iget-object p1, p1, Lo/setWidth$onMessageChannelReady;->onRelationshipValidationResult:Lcom/cred/pay/repository/models/CardBinResponse;

    if-eqz p1, :cond_0

    .line 4022
    iget-object p1, p1, Lcom/cred/pay/repository/models/CardBinResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/SurchargeDetails;

    if-eqz p1, :cond_0

    .line 4033
    iget-object p1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_0

    .line 5000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1107
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
