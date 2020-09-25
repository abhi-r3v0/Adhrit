.class public final Lo/isZombied$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isZombied;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public onMessageChannelReady:I

.field public final onNavigationEvent:[I

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1082
    iput-object v0, p0, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    return-void
.end method


# virtual methods
.method public final onPostMessage(III)Lo/isZombied$onPostMessage;
    .locals 3

    .line 1090
    iget-object v0, p0, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 1095
    iget v1, p0, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    or-int/2addr v1, v0

    iput v1, p0, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 1097
    iget v1, p0, Lo/isZombied$onPostMessage;->onPostMessage:I

    or-int/2addr v1, v0

    iput v1, p0, Lo/isZombied$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 1099
    :cond_1
    iget v1, p0, Lo/isZombied$onPostMessage;->onPostMessage:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lo/isZombied$onPostMessage;->onPostMessage:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 1102
    iget p2, p0, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    or-int/2addr p2, v0

    iput p2, p0, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    goto :goto_1

    .line 1104
    :cond_2
    iget p2, p0, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    not-int v0, v0

    and-int/2addr p2, v0

    iput p2, p0, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    .line 1107
    :goto_1
    iget-object p2, p0, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aput p3, p2, p1

    return-object p0
.end method
