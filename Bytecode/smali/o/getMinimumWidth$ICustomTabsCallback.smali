.class public final Lo/getMinimumWidth$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Utils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinimumWidth;
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/qr/QrFragment$Companion;",
        "",
        "()V",
        "REQUEST_CAMERA_PERMISSION",
        "",
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
.field private final error:Lo/getMarkerFile;

.field private final eventRegistration:Lo/addDelayedShutdownHook;

.field private final path:Lo/ExecutorUtils$2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/addDelayedShutdownHook;Lo/getMarkerFile;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-object p1, p0, Lo/getMinimumWidth$ICustomTabsCallback;->eventRegistration:Lo/addDelayedShutdownHook;

    .line 1029
    iput-object p3, p0, Lo/getMinimumWidth$ICustomTabsCallback;->path:Lo/ExecutorUtils$2;

    .line 1030
    iput-object p2, p0, Lo/getMinimumWidth$ICustomTabsCallback;->error:Lo/getMarkerFile;

    return-void
.end method


# virtual methods
.method public final fire()V
    .locals 2

    .line 1040
    iget-object v0, p0, Lo/getMinimumWidth$ICustomTabsCallback;->eventRegistration:Lo/addDelayedShutdownHook;

    iget-object v1, p0, Lo/getMinimumWidth$ICustomTabsCallback;->error:Lo/getMarkerFile;

    invoke-virtual {v0, v1}, Lo/addDelayedShutdownHook;->fireCancelEvent(Lo/getMarkerFile;)V

    return-void
.end method

.method public final getPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/getMinimumWidth$ICustomTabsCallback;->path:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/getMinimumWidth$ICustomTabsCallback;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
