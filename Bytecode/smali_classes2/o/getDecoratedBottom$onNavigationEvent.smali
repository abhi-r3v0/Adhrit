.class public final Lo/getDecoratedBottom$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDecoratedBottom;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineFragment$Companion;",
        "",
        "()V",
        "ANIM_END_FRAME",
        "",
        "ANIM_START_FRAME",
        "LOADING_END_FRAME",
        "LOADING_START_FRAME",
        "NO_POSITION",
        "getInstance",
        "Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineFragment;",
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
.field private final arg$1:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getDecoratedBottom$onNavigationEvent;->arg$1:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

    iput-object p2, p0, Lo/getDecoratedBottom$onNavigationEvent;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/getDecoratedBottom$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lo/getDecoratedBottom$onNavigationEvent;-><init>(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/getDecoratedBottom$onNavigationEvent;->arg$1:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

    iget-object v1, p0, Lo/getDecoratedBottom$onNavigationEvent;->arg$2:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/getNamedThreadFactory$2;->lambda$onSuccess$0(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V

    return-void
.end method
