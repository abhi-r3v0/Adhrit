.class public final Lo/setEpicenterBounds$ICustomTabsCallback;
.super Lo/setEpicenterBounds;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEpicenterBounds;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/cred/pay/core/CardProvider$Diners;",
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
.field public static final ICustomTabsCallback$Stub:Lo/setEpicenterBounds$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/setEpicenterBounds$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setEpicenterBounds$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/setEpicenterBounds$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 31
    new-instance v4, Lo/forEachTree;

    const/16 v0, 0xe

    invoke-direct {v4, v0, v0}, Lo/forEachTree;-><init>(II)V

    .line 32
    sget v5, Lo/setContentWidth$onPostMessage;->ic_diners:I

    const-string v1, "DINERS"

    const-string v2, "XXXX-XXXXXX-XXXX"

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v6}, Lo/setEpicenterBounds;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;II)V

    return-void
.end method
