.class public final Lo/aH;
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

.field public static final enum extraCallback:I = 0x2

.field public static final enum onMessageChannelReady:I = 0x1

.field public static final enum onNavigationEvent:I

.field public static final enum onPostMessage:I

.field private static final synthetic onTransact:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lo/aH;->ICustomTabsCallback:[I

    const/4 v1, 0x1

    sput v1, Lo/aH;->onPostMessage:I

    sput v0, Lo/aH;->onNavigationEvent:I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/aH;->onTransact:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
