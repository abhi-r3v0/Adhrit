.class final Lo/bJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[I

.field public static final enum extraCallback:I = 0x3

.field public static final enum onMessageChannelReady:I = 0x1

.field public static final enum onNavigationEvent:I = 0x2

.field public static final enum onPostMessage:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    aput v0, v1, v3

    .line 6
    sput-object v1, Lo/bJ;->ICustomTabsCallback:[I

    return-void
.end method

.method public static extraCallback()[I
    .locals 1

    .line 1
    sget-object v0, Lo/bJ;->ICustomTabsCallback:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
