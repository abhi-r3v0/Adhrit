.class final Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addChildDrawingOrderCallback;->asInterface()V
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
.field private synthetic onPostMessage:Lo/addChildDrawingOrderCallback;


# direct methods
.method constructor <init>(Lo/addChildDrawingOrderCallback;)V
    .locals 0

    iput-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/addChildDrawingOrderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/addChildDrawingOrderCallback;

    invoke-static {v0}, Lo/addChildDrawingOrderCallback;->ICustomTabsCallback$Stub(Lo/addChildDrawingOrderCallback;)Lo/onDetach$INotificationSideChannel$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, v0, Lo/onDetach$INotificationSideChannel$Stub;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/addChildDrawingOrderCallback;

    invoke-static {v1}, Lo/addChildDrawingOrderCallback;->asInterface(Lo/addChildDrawingOrderCallback;)Lo/canScrollHorizontally;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/canScrollHorizontally;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
