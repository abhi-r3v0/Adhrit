.class final Lo/getContentInsetStart$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart;
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
.field private synthetic onMessageChannelReady:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$ICustomTabsCallback;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 482
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 1071
    iget-object v0, v0, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 482
    iget-object v1, p0, Lo/getContentInsetStart$ICustomTabsCallback;->onMessageChannelReady:Lo/getContentInsetStart;

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

    .line 482
    :goto_0
    move-object v4, v1

    check-cast v4, Lo/setContentInsetsRelative;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    const v1, 0x7f13041b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v9, 0x9

    const-string v7, "disable"

    invoke-static/range {v4 .. v9}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 3069
    iget-object v0, v0, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 483
    new-instance v1, Lcom/dreamplug/androidapp/login/LoginUiModel;

    const/4 v2, 0x2

    const-string v4, "fName"

    invoke-direct {v1, v4, v3, v2, v3}, Lcom/dreamplug/androidapp/login/LoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
