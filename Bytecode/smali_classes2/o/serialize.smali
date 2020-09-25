.class public final Lo/serialize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/parseAndValidateUpdate;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/NonBlockingContext;",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "()V",
        "taskMode",
        "",
        "getTaskMode",
        "()I",
        "afterTask",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/serialize;

.field private static final onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lo/serialize;

    invoke-direct {v0}, Lo/serialize;-><init>()V

    sput-object v0, Lo/serialize;->ICustomTabsCallback:Lo/serialize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()I
    .locals 1

    .line 70
    sget v0, Lo/serialize;->onMessageChannelReady:I

    return v0
.end method
