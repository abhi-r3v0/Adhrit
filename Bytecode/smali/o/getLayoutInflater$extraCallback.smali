.class public final Lo/getLayoutInflater$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getLayoutInflater;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/rewards/mystery/BigMysteryConstraintLayout$Companion;",
        "",
        "()V",
        "AUTO_FINISHED_SPEED_LIMIT",
        "",
        "DRAG_FINISHED",
        "",
        "DRAG_ROLLED_BACK",
        "DRAG_SETTLING",
        "DRAG_STARTED",
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
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I

.field public final onTransact:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIJ)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput p1, p0, Lo/getLayoutInflater$extraCallback;->extraCallback:I

    .line 1066
    iput p2, p0, Lo/getLayoutInflater$extraCallback;->onNavigationEvent:I

    .line 1067
    iput p3, p0, Lo/getLayoutInflater$extraCallback;->onMessageChannelReady:I

    const p1, 0x7fffffff

    .line 1068
    iput p1, p0, Lo/getLayoutInflater$extraCallback;->onPostMessage:I

    .line 1069
    iput p4, p0, Lo/getLayoutInflater$extraCallback;->ICustomTabsCallback:I

    .line 1070
    iput-wide p5, p0, Lo/getLayoutInflater$extraCallback;->onTransact:J

    return-void
.end method
