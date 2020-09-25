.class public final Lo/getSecond;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "NO_DECISION",
        "",
        "NO_DECISION$annotations",
        "()V",
        "RETRY_ATOMIC",
        "RETRY_ATOMIC$annotations",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onPostMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getSecond;->onPostMessage:Ljava/lang/Object;

    .line 116
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "RETRY_ATOMIC"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo/getSecond;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method
