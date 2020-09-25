.class final Lo/pullGlows$extraCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pullGlows$extraCallback;
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
        "TS;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/fabrik/ui/address/Address;",
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
.field private synthetic onMessageChannelReady:Lo/pullGlows$extraCallback;


# direct methods
.method constructor <init>(Lo/pullGlows$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 1464
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    invoke-static {p1}, Lo/pullGlows;->onMessageChannelReady(Lo/pullGlows;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1465
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    iget-object v1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object v1, v1, Lo/pullGlows$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz v1, :cond_2

    .line 2015
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->onMessageChannelReady:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 1465
    :goto_2
    invoke-static {p1, v1}, Lo/pullGlows;->onMessageChannelReady(Lo/pullGlows;Ljava/util/List;)V

    goto :goto_3

    .line 1467
    :cond_3
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    invoke-static {p1}, Lo/pullGlows;->onPostMessage(Lo/pullGlows;)V

    .line 1469
    :goto_3
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    iget-object v1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object v1, v1, Lo/pullGlows$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz v1, :cond_4

    .line 2017
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->ICustomTabsCallback:Ljava/lang/Double;

    .line 2512
    :cond_4
    iput-object v0, p1, Lo/pullGlows;->IPostMessageService$Stub:Ljava/lang/Double;

    .line 1470
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    iget-object v0, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object v0, v0, Lo/pullGlows$extraCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz v0, :cond_5

    .line 3019
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->onPostMessage:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 1470
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object v0, v0, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    .line 3507
    iget-wide v0, v0, Lo/pullGlows;->IPostMessageService:D

    .line 3509
    :goto_4
    iput-wide v0, p1, Lo/pullGlows;->IPostMessageService:D

    .line 3510
    invoke-virtual {p1}, Lo/pullGlows;->onTransact()V

    .line 1471
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    invoke-static {p1}, Lo/pullGlows;->onNavigationEvent(Lo/pullGlows;)V

    .line 1472
    iget-object p1, p0, Lo/pullGlows$extraCallback$5;->onMessageChannelReady:Lo/pullGlows$extraCallback;

    iget-object p1, p1, Lo/pullGlows$extraCallback;->ICustomTabsCallback:Lo/pullGlows;

    .line 3513
    iget-object p1, p1, Lo/pullGlows;->IPostMessageService$Stub$Proxy:Lo/setActive;

    .line 1472
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
