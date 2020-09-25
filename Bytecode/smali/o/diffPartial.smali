.class public abstract Lo/diffPartial;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/diffPartial$ICustomTabsCallback;,
        Lo/diffPartial$onNavigationEvent;,
        Lo/diffPartial$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates;",
        "",
        "index",
        "",
        "(I)V",
        "getIndex",
        "()I",
        "Entered",
        "Paused",
        "Resumed",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates$Entered;",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates$Resumed;",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates$Paused;",
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
.field public final onNavigationEvent:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/diffPartial;->onNavigationEvent:I

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/diffPartial;-><init>(I)V

    return-void
.end method
