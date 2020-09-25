.class public final Lo/getViewForPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        "ErrorResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u00020\u0003B\u0011\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0005B\u001b\u0008\u0016\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\tB%\u0008\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\nR\u0015\u0010\u0008\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0015\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u0011\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/network/helper/Response;",
        "Response",
        "ErrorResponse",
        "",
        "successResponse",
        "(Ljava/lang/Object;)V",
        "throwable",
        "",
        "errorResponse",
        "(Ljava/lang/Throwable;Ljava/lang/Object;)V",
        "(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;)V",
        "getErrorResponse",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "isSuccess",
        "",
        "()Z",
        "getSuccessResponse",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponse;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/lang/Throwable;

.field public final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TErrorResponse;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lo/getViewForPosition;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;",
            "Ljava/lang/Throwable;",
            "TErrorResponse;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p2, p0, Lo/getViewForPosition;->extraCallback:Ljava/lang/Throwable;

    iput-object p3, p0, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TErrorResponse;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lo/getViewForPosition;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
