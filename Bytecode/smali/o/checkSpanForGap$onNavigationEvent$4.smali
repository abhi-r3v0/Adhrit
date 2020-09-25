.class final Lo/checkSpanForGap$onNavigationEvent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/checkSpanForGap$onNavigationEvent;->run()V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
.field private synthetic onMessageChannelReady:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field private synthetic onPostMessage:Lo/checkSpanForGap$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/checkSpanForGap$onNavigationEvent;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    iput-object p1, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iput-object p2, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onMessageChannelReady:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 273
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->extraCallback:Lo/checkSpanForGap;

    .line 1155
    iget v0, v0, Lo/checkSpanForGap;->onMessageChannelReady:I

    .line 273
    iget-object v1, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget v1, v1, Lo/checkSpanForGap$onNavigationEvent;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->extraCallback:Lo/checkSpanForGap;

    iget-object v1, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v1, v1, Lo/checkSpanForGap$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    iget-object v2, p0, Lo/checkSpanForGap$onNavigationEvent$4;->onMessageChannelReady:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    const-string v3, "newList"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "diffResult"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1281
    iput-object v1, v0, Lo/checkSpanForGap;->extraCallback:Ljava/util/List;

    .line 1283
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v3, "Collections.unmodifiableList(newList)"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1284
    iget-object v1, v0, Lo/checkSpanForGap;->onNavigationEvent:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 1285
    iget-object v0, v0, Lo/checkSpanForGap;->onPostMessage:Lo/getServerTime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method
