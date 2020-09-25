.class final Lo/addViewHolderToRecycledViewPool$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addViewHolderToRecycledViewPool;->onNavigationEvent(Lo/fromQueryDefinition;Lo/getMinNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "E",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/addViewHolderToRecycledViewPool;

.field private synthetic onNavigationEvent:Lo/fromQueryDefinition;


# direct methods
.method constructor <init>(Lo/addViewHolderToRecycledViewPool;Lo/fromQueryDefinition;)V
    .locals 0

    iput-object p1, p0, Lo/addViewHolderToRecycledViewPool$onPostMessage;->onMessageChannelReady:Lo/addViewHolderToRecycledViewPool;

    iput-object p2, p0, Lo/addViewHolderToRecycledViewPool$onPostMessage;->onNavigationEvent:Lo/fromQueryDefinition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1054
    iget-object v0, p0, Lo/addViewHolderToRecycledViewPool$onPostMessage;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v0}, Lo/fromQueryDefinition;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lo/addViewHolderToRecycledViewPool$onPostMessage;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v0}, Lo/fromQueryDefinition;->ICustomTabsCallback()Lo/fromQueryDefinition;

    move-result-object v0

    .line 1056
    iget-object v1, p0, Lo/addViewHolderToRecycledViewPool$onPostMessage;->onMessageChannelReady:Lo/addViewHolderToRecycledViewPool;

    const-string/jumbo v2, "this"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lo/addViewHolderToRecycledViewPool;->extraCallback(Lo/addViewHolderToRecycledViewPool;Lo/fromQueryDefinition;)V

    .line 1057
    iget-object v1, p0, Lo/addViewHolderToRecycledViewPool$onPostMessage;->onMessageChannelReady:Lo/addViewHolderToRecycledViewPool;

    check-cast v1, Lo/hasIndex;

    invoke-interface {v0, v1}, Lo/fromQueryDefinition;->extraCallback(Lo/hasIndex;)V

    .line 22
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
