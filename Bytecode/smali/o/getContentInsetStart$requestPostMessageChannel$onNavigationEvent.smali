.class final Lo/getContentInsetStart$requestPostMessageChannel$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart$requestPostMessageChannel;
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
.field private synthetic extraCallback:Lo/getContentInsetStart$requestPostMessageChannel;


# direct methods
.method constructor <init>(Lo/getContentInsetStart$requestPostMessageChannel;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$requestPostMessageChannel$onNavigationEvent;->extraCallback:Lo/getContentInsetStart$requestPostMessageChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 662
    iget-object v0, p0, Lo/getContentInsetStart$requestPostMessageChannel$onNavigationEvent;->extraCallback:Lo/getContentInsetStart$requestPostMessageChannel;

    iget-object v0, v0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 1071
    iget-object v0, v0, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 662
    iget-object v1, p0, Lo/getContentInsetStart$requestPostMessageChannel$onNavigationEvent;->extraCallback:Lo/getContentInsetStart$requestPostMessageChannel;

    iget-object v1, v1, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

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

    .line 662
    :goto_0
    move-object v4, v1

    check-cast v4, Lo/setContentInsetsRelative;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    const v1, 0x7f130428

    .line 664
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "disable"

    .line 662
    invoke-static/range {v4 .. v9}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
