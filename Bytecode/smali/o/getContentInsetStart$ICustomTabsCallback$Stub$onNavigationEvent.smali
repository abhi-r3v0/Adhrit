.class final Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/getContentInsetStart$ICustomTabsCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 310
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 1071
    iget-object v0, v0, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 310
    iget-object v1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 2071
    iget-object v1, v1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 2320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 310
    :goto_0
    move-object v4, v1

    check-cast v4, Lo/setContentInsetsRelative;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    const v1, 0x7f130428

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "disable"

    .line 310
    invoke-static/range {v4 .. v9}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 3069
    iget-object v0, v0, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 314
    new-instance v1, Lcom/dreamplug/androidapp/login/LoginUiModel;

    const/4 v2, 0x2

    const-string v4, "otp"

    invoke-direct {v1, v4, v3, v2, v3}, Lcom/dreamplug/androidapp/login/LoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 3072
    iget-object v0, v0, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 317
    iget-object v1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-static {v1}, Lo/getContentInsetStart;->onMessageChannelReady(Lo/getContentInsetStart;)Lo/getContentInsetStart$onPostMessage;

    .line 4000
    new-instance v1, Lo/getContentInsetStart$onPostMessage;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v2}, Lo/getContentInsetStart$onPostMessage;-><init>(II)V

    .line 317
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;->onNavigationEvent:Lo/getContentInsetStart$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent$3;

    invoke-direct {v1, p0}, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent$3;-><init>(Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;)V

    check-cast v1, Lo/getServerTime;

    const-string v2, "command"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 4018
    new-instance v4, Lo/updateItemAt$extraCallback;

    invoke-direct {v4, v1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-static {v2, v3, v4}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v1

    .line 4622
    iput-object v1, v0, Lo/getContentInsetStart;->ICustomTabsService:Ljava/io/Closeable;

    return-void
.end method
