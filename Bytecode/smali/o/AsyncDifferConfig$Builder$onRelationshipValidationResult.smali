.class final Lo/AsyncDifferConfig$Builder$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncDifferConfig$Builder;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
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
.field private synthetic onPostMessage:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$onRelationshipValidationResult;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 50
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1329
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getLinkingData()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1330
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onRelationshipValidationResult;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->warmup(Lo/AsyncDifferConfig$Builder;)Lo/onDestroyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onRelationshipValidationResult;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0, p1}, Lo/AsyncDifferConfig$Builder;->onNavigationEvent(Lo/AsyncDifferConfig$Builder;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;)V

    return-void

    .line 1334
    :cond_1
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$onRelationshipValidationResult;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    .line 2000
    iget-object p1, p1, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 1334
    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method
