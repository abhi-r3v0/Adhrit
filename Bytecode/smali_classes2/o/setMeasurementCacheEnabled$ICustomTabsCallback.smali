.class public final Lo/setMeasurementCacheEnabled$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMeasurementCacheEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsAdapter$Companion;",
        "",
        "()V",
        "TEMPLATE1",
        "",
        "TEMPLATE2",
        "TEMPLATE3",
        "TEMPLATE4",
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/buildSingleThreadExecutorService$onNavigationEvent;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMeasurementCacheEnabled$ICustomTabsCallback;->arg$1:Lo/buildSingleThreadExecutorService$onNavigationEvent;

    return-void
.end method

.method public static lambdaFactory$(Lo/buildSingleThreadExecutorService$onNavigationEvent;)Lo/addBackgroundStateChangeListener;
    .locals 1

    .line 3000
    new-instance v0, Lo/setMeasurementCacheEnabled$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/setMeasurementCacheEnabled$ICustomTabsCallback;-><init>(Lo/buildSingleThreadExecutorService$onNavigationEvent;)V

    return-object v0
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/setMeasurementCacheEnabled$ICustomTabsCallback;->arg$1:Lo/buildSingleThreadExecutorService$onNavigationEvent;

    invoke-static {v0, p1}, Lo/populateSessionOperatingSystemData$4;->lambda$getToken$1(Lo/buildSingleThreadExecutorService$onNavigationEvent;Ljava/lang/Exception;)V

    return-void
.end method