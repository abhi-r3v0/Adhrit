.class final Lo/findAnimation$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findAnimation;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012:\u0010\u0002\u001a6\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004 \u0006*\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/utils/Event;",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/findAnimation;


# direct methods
.method constructor <init>(Lo/findAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/findAnimation$extraCallback;->ICustomTabsCallback:Lo/findAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 43
    check-cast p1, Lo/throwIfInMutationOperation;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2015
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1074
    :goto_0
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_1

    .line 2027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1074
    move-object v0, p1

    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    :cond_1
    if-eqz v0, :cond_2

    .line 1076
    iget-object p1, p0, Lo/findAnimation$extraCallback;->ICustomTabsCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->onPostMessage(Lo/findAnimation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1077
    iget-object p1, p0, Lo/findAnimation$extraCallback;->ICustomTabsCallback:Lo/findAnimation;

    invoke-static {p1, v0}, Lo/findAnimation;->onPostMessage(Lo/findAnimation;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;)V

    :cond_2
    return-void
.end method
