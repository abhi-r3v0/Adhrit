.class final Lo/getQueueItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final ICustomTabsCallback:[I

.field static final asBinder:[I

.field static final extraCallback:[I

.field static final onMessageChannelReady:[I

.field static final onNavigationEvent:[I

.field static final onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 71
    fill-array-data v0, :array_0

    sput-object v0, Lo/getQueueItem;->ICustomTabsCallback:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10104cf

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 90
    sput-object v1, Lo/getQueueItem;->onPostMessage:[I

    new-array v1, v0, [I

    const v2, 0x101047c

    aput v2, v1, v3

    .line 100
    sput-object v1, Lo/getQueueItem;->extraCallback:[I

    new-array v1, v0, [I

    const v2, 0x10103e1

    aput v2, v1, v3

    .line 110
    sput-object v1, Lo/getQueueItem;->onMessageChannelReady:[I

    new-array v1, v0, [I

    const v2, 0x1010430

    aput v2, v1, v3

    .line 133
    sput-object v1, Lo/getQueueItem;->onNavigationEvent:[I

    new-array v0, v0, [I

    const v1, 0x10103e0

    aput v1, v0, v3

    .line 143
    sput-object v0, Lo/getQueueItem;->asBinder:[I

    return-void

    :array_0
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data
.end method
