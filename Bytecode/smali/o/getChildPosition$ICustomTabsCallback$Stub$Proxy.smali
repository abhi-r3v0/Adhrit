.class public final Lo/getChildPosition$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getChildPosition;


# direct methods
.method public constructor <init>(Lo/getChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getChildPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Lo/saveOldPositions$onPostMessage;

    .line 52
    new-instance v7, Lo/onGenericMotionEvent;

    .line 55
    iget-object v0, p0, Lo/getChildPosition$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getChildPosition;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/getChildPosition$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getChildPosition;

    invoke-static {v0}, Lo/getChildPosition;->onPostMessage(Lo/getChildPosition;)Lo/getChildPosition$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, v0, Lo/getChildPosition$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 2147
    iget-object v3, p1, Lo/saveOldPositions$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 2148
    iget-object v4, p1, Lo/saveOldPositions$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 2149
    iget-object v5, p1, Lo/saveOldPositions$onPostMessage;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v6, "slot_machine"

    move-object v0, v7

    .line 52
    invoke-direct/range {v0 .. v6}, Lo/onGenericMotionEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method
