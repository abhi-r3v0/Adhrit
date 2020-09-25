.class public final Lo/RecyclerView$SmoothScroller$Action;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/river/apps/AppHandler;",
        "Landroid/os/Handler;",
        "()V",
        "river_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/RecyclerView$SmoothScroller$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0}, Lo/RecyclerView$SmoothScroller$Action;-><init>()V

    sput-object v0, Lo/RecyclerView$SmoothScroller$Action;->ICustomTabsCallback:Lo/RecyclerView$SmoothScroller$Action;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppHandler"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
