.class public final Lo/canScrollVertically$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/canScrollVertically;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/FabrikReferredListingAdapter$Companion;",
        "",
        "()V",
        "BOTTOM_SPACE",
        "",
        "ITEM",
        "getRandomImage",
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
.field private final ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

.field private final onNavigationEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;I)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/canScrollVertically$extraCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iput p2, p0, Lo/canScrollVertically$extraCallback;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 2

    .line 1000
    iget-object v0, p0, Lo/canScrollVertically$extraCallback;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iget v1, p0, Lo/canScrollVertically$extraCallback;->onNavigationEvent:I

    .line 2000
    invoke-virtual {v0, v1}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(I)Lo/computeScrollRange$extraCallback;

    move-result-object v0

    iget-object v0, v0, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    const/4 v1, 0x5

    iput v1, v0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v0, 0x0

    return-object v0
.end method
