.class final Lo/getSwipeDirs$ICustomTabsCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSwipeDirs$ICustomTabsCallback;
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
.field final synthetic extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getSwipeDirs$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 118
    sget-object v0, Lo/getTargetFragment;->onPostMessage:Lo/getTargetFragment;

    iget-object v0, p0, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v0, v0, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {v0}, Lo/getSwipeDirs;->onNavigationEvent(Lo/getSwipeDirs;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v1, v1, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {v1}, Lo/getSwipeDirs;->extraCallback(Lo/getSwipeDirs;)Lo/setRecycleChildrenOnDetach;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1061
    :cond_0
    iget-object v2, v1, Lo/setRecycleChildrenOnDetach;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    :cond_1
    if-nez v2, :cond_2

    .line 118
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    new-instance v1, Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    invoke-direct {v1, p0}, Lo/getSwipeDirs$ICustomTabsCallback$1$1;-><init>(Lo/getSwipeDirs$ICustomTabsCallback$1;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v2, v1}, Lo/getTargetFragment;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;)V

    return-void
.end method
