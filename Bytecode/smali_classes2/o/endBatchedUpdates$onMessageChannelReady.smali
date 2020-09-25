.class public final Lo/endBatchedUpdates$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/endBatchedUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/utils/PreciseCountDownTimer$Companion;",
        "",
        "()V",
        "MSG",
        "",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/listIterator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/listIterator;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/endBatchedUpdates$onMessageChannelReady;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/endBatchedUpdates$onMessageChannelReady;->arg$2:Lo/listIterator;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/listIterator;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/endBatchedUpdates$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lo/endBatchedUpdates$onMessageChannelReady;-><init>(Lo/getEndedAt;Lo/listIterator;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/endBatchedUpdates$onMessageChannelReady;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/endBatchedUpdates$onMessageChannelReady;->arg$2:Lo/listIterator;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$transaction$12(Lo/getEndedAt;Lo/listIterator;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
