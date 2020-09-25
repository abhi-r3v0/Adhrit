.class public final Lo/setEpicenterBounds$onTransact;
.super Lo/setEpicenterBounds;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEpicenterBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onTransact"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/cred/pay/core/CardProvider$Unknown;",
        "Lcom/cred/pay/core/CardProvider;",
        "()V",
        "credpaycore_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback$Stub:Lo/setEpicenterBounds$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lo/setEpicenterBounds$onTransact;

    invoke-direct {v0}, Lo/setEpicenterBounds$onTransact;-><init>()V

    sput-object v0, Lo/setEpicenterBounds$onTransact;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$onTransact;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v6}, Lo/setEpicenterBounds;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;II)V

    return-void
.end method
