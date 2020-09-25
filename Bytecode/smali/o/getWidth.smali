.class public final Lo/getWidth;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cred/pay/core/utils/CardUtils;",
        "",
        "()V",
        "isValidLuhnNumber",
        "",
        "cardNumber",
        "",
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
.field public static final extraCallback:Lo/getWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/getWidth;

    invoke-direct {v0}, Lo/getWidth;-><init>()V

    sput-object v0, Lo/getWidth;->extraCallback:Lo/getWidth;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 15
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    return v0

    .line 19
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    xor-int/2addr v4, v2

    if-eqz v4, :cond_2

    shl-int/lit8 v5, v5, 0x1

    :cond_2
    const/16 v6, 0x9

    if-le v5, v6, :cond_3

    add-int/lit8 v5, v5, -0x9

    :cond_3
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 33
    :cond_4
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_5

    return v2

    :cond_5
    return v0
.end method
