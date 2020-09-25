.class public final Lo/setEpicenterBounds$asBinder;
.super Lo/setEpicenterBounds;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEpicenterBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
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
        "Lcom/cred/pay/core/CardProvider$MasterCard;",
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
.field public static final asInterface:Lo/setEpicenterBounds$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/setEpicenterBounds$asBinder;

    invoke-direct {v0}, Lo/setEpicenterBounds$asBinder;-><init>()V

    sput-object v0, Lo/setEpicenterBounds$asBinder;->asInterface:Lo/setEpicenterBounds$asBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 42
    sget v5, Lo/setContentWidth$onPostMessage;->ic_master:I

    const-string v1, "MASTERCARD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v0, p0

    .line 40
    invoke-direct/range {v0 .. v6}, Lo/setEpicenterBounds;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;II)V

    return-void
.end method
