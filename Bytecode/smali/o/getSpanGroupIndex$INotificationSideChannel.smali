.class final Lo/getSpanGroupIndex$INotificationSideChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
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
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004 \u0005*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
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
.field private synthetic extraCallback:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 79
    check-cast p1, Lo/addWrite;

    .line 1280
    iget-object v0, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;J)V

    if-eqz p1, :cond_0

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1281
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    .line 3028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1282
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onNavigationEvent(Lo/getSpanGroupIndex;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;)V

    return-void

    .line 1284
    :cond_1
    iget-object v0, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    .line 3049
    iget-boolean v0, v0, Lo/setRecycleChildrenOnDetach;->ICustomTabsService:Z

    if-nez v0, :cond_2

    .line 1285
    iget-object v0, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    .line 4035
    iget-object v0, v0, Lo/setRecycleChildrenOnDetach;->onMessageChannelReady:Lo/setActive;

    .line 1285
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1286
    iget-object v0, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onRelationshipValidationResult(Lo/getSpanGroupIndex;)Lo/isSubmitAreaEnabled$extraCallback;

    move-result-object v0

    new-instance v1, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    new-instance v2, Lo/onDetach$read;

    iget-object v3, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    invoke-static {v3}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v3

    .line 4039
    iget-boolean v3, v3, Lo/setRecycleChildrenOnDetach;->onTransact:Z

    .line 1286
    invoke-direct {v2, v3}, Lo/onDetach$read;-><init>(Z)V

    invoke-direct {v1, v2}, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/onDetach$read;)V

    check-cast v1, Lo/computeHorizontalScrollRange;

    invoke-virtual {v0, v1}, Lo/isSubmitAreaEnabled$extraCallback;->extraCallback(Lo/computeHorizontalScrollRange;)V

    .line 1288
    :cond_2
    iget-object v0, p0, Lo/getSpanGroupIndex$INotificationSideChannel;->extraCallback:Lo/getSpanGroupIndex;

    .line 5027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1288
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    invoke-static {v0, p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;)V

    return-void
.end method
