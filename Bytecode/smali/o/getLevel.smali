.class public final Lo/getLevel;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lo/getLevel;->onPostMessage:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/onAppOpenAttributionNative;
    .locals 5

    .line 33
    new-instance v0, Lo/onAppOpenAttributionNative;

    sget v1, Lo/getLevel;->onPostMessage:I

    const/high16 v2, 0x400000

    mul-int v3, v1, v2

    .line 36
    invoke-static {v1}, Lo/getLevel;->onMessageChannelReady(I)Landroid/util/SparseIntArray;

    move-result-object v1

    sget v4, Lo/getLevel;->onPostMessage:I

    invoke-direct {v0, v2, v3, v1, v4}, Lo/onAppOpenAttributionNative;-><init>(IILandroid/util/SparseIntArray;I)V

    return-object v0
.end method

.method private static onMessageChannelReady(I)Landroid/util/SparseIntArray;
    .locals 3

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/high16 v1, 0x20000

    :goto_0
    const/high16 v2, 0x400000

    if-gt v1, v2, :cond_0

    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
