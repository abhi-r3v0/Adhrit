.class final Lo/getSpanGroupIndex$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;->extraCallback()V
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
.field private synthetic onPostMessage:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$onTransact;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 920
    iget-object v0, p0, Lo/getSpanGroupIndex$onTransact;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    .line 1061
    iget-object v1, v0, Lo/setRecycleChildrenOnDetach;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    .line 920
    iget-object v0, p0, Lo/getSpanGroupIndex$onTransact;->onPostMessage:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/setRecycleChildrenOnDetach;->extraCallback(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
