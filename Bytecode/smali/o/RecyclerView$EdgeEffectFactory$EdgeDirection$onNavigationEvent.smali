.class public final Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;
.super Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand$PopStack;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand;",
        "tag",
        "",
        "inclusive",
        "",
        "(Ljava/lang/String;Z)V",
        "getInclusive",
        "()Z",
        "getTag",
        "()Ljava/lang/String;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 659
    invoke-direct {p0, p1, v0}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 660
    invoke-direct {p0, v0}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;-><init>(B)V

    iput-object p1, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p2, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;->onPostMessage:Z

    return-void
.end method
