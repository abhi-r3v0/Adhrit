.class public final Lo/getInitialEvents;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:I

.field final onPostMessage:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lo/getInitialEvents;->onPostMessage:[I

    return-void
.end method


# virtual methods
.method final onMessageChannelReady(II)Lo/getInitialEvents;
    .locals 3

    if-ltz p1, :cond_1

    .line 59
    iget-object v0, p0, Lo/getInitialEvents;->onPostMessage:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 64
    iget v2, p0, Lo/getInitialEvents;->ICustomTabsCallback:I

    or-int/2addr v1, v2

    iput v1, p0, Lo/getInitialEvents;->ICustomTabsCallback:I

    .line 65
    aput p2, v0, p1

    :cond_1
    :goto_0
    return-object p0
.end method
