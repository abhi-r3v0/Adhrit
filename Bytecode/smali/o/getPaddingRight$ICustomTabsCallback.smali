.class public final Lo/getPaddingRight$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingRight;
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
.field private synthetic onNavigationEvent:Lo/getPaddingRight;


# direct methods
.method public constructor <init>(Lo/getPaddingRight;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingRight$ICustomTabsCallback;->onNavigationEvent:Lo/getPaddingRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Lo/detachAndScrapView;

    .line 1019
    iget-boolean p1, p1, Lo/detachAndScrapView;->onNavigationEvent:Z

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lo/getPaddingRight$ICustomTabsCallback;->onNavigationEvent:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    .line 1078
    iget-boolean p1, p1, Lo/initState;->extraCallback:Z

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lo/getPaddingRight$ICustomTabsCallback;->onNavigationEvent:Lo/getPaddingRight;

    invoke-static {p1}, Lo/getPaddingRight;->onPostMessage(Lo/getPaddingRight;)Lo/initState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/initState;->onPostMessage(Z)V

    :cond_0
    return-void
.end method
