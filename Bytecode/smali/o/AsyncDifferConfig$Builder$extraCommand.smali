.class final Lo/AsyncDifferConfig$Builder$extraCommand;
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
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;",
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
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;",
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
.field private synthetic onPostMessage:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$extraCommand;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 50
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    .line 1399
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$extraCommand;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v0

    .line 2021
    iget-object v0, v0, Lo/getCurrentList;->extraCallback:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1399
    :goto_0
    check-cast v0, Lo/getCurrentList$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 3015
    iget-object v2, v0, Lo/getCurrentList$ICustomTabsCallback;->onMessageChannelReady:Lo/latchList;

    .line 1399
    :cond_1
    sget-object v0, Lo/latchList$ICustomTabsCallback;->onNavigationEvent:Lo/latchList$ICustomTabsCallback;

    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1400
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getShouldShowDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getMessage()Lo/getTargetScrollPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$extraCommand;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/AsyncDifferConfig$Builder;->onMessageChannelReady(Lo/AsyncDifferConfig$Builder;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;)V

    .line 1403
    :cond_2
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$extraCommand;->onPostMessage:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->ICustomTabsCallback$Stub(Lo/AsyncDifferConfig$Builder;)Lo/saveOldPosition;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/saveOldPosition;->setEnabled(Z)V

    :cond_3
    return-void
.end method
