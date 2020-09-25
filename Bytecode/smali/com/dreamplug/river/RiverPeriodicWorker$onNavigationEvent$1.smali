.class final Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent;
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
.field private synthetic extraCallback:Lo/writeToParcel$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent$1;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/dreamplug/river/RiverPeriodicWorker$onNavigationEvent$1;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    .line 1334
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void
.end method
