.class public final Lo/getPaddingTop$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingTop;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$Companion;",
        "",
        "()V",
        "CLICK_TO_EXPAND",
        "",
        "CTA_CLICK",
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
.field private final arg$1:Lo/buildSingleThreadExecutorService$onNavigationEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/buildSingleThreadExecutorService$onNavigationEvent;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getPaddingTop$extraCallback;->arg$1:Lo/buildSingleThreadExecutorService$onNavigationEvent;

    return-void
.end method

.method public static lambdaFactory$(Lo/buildSingleThreadExecutorService$onNavigationEvent;)Lo/addLifecycleEventListener;
    .locals 1

    .line 3000
    new-instance v0, Lo/getPaddingTop$extraCallback;

    invoke-direct {v0, p0}, Lo/getPaddingTop$extraCallback;-><init>(Lo/buildSingleThreadExecutorService$onNavigationEvent;)V

    return-object v0
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/getPaddingTop$extraCallback;->arg$1:Lo/buildSingleThreadExecutorService$onNavigationEvent;

    check-cast p1, Lo/isClsTrace;

    invoke-static {v0, p1}, Lo/populateSessionOperatingSystemData$4;->lambda$getToken$0(Lo/buildSingleThreadExecutorService$onNavigationEvent;Lo/isClsTrace;)V

    return-void
.end method
