.class public final Lo/isWritablePath;
.super Lo/deserializeToPrimitive;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/NanoTimeSource;",
        "Lkotlinx/coroutines/scheduling/TimeSource;",
        "()V",
        "nanoTime",
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
.field public static final ICustomTabsCallback:Lo/isWritablePath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lo/isWritablePath;

    invoke-direct {v0}, Lo/isWritablePath;-><init>()V

    sput-object v0, Lo/isWritablePath;->ICustomTabsCallback:Lo/isWritablePath;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lo/deserializeToPrimitive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()J
    .locals 2

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
