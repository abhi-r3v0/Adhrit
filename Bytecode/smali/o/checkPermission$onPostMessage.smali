.class final Lo/checkPermission$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/checkPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# static fields
.field private static final onPostMessage:[B


# instance fields
.field public ICustomTabsCallback:[B

.field public extraCallback:I

.field private onMessageChannelReady:Z

.field public onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 265
    fill-array-data v0, :array_0

    sput-object v0, Lo/checkPermission$onPostMessage;->onPostMessage:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-array p1, p1, [B

    iput-object p1, p0, Lo/checkPermission$onPostMessage;->ICustomTabsCallback:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(II)Z
    .locals 3

    .line 297
    iget-boolean v0, p0, Lo/checkPermission$onPostMessage;->onMessageChannelReady:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 298
    iget v0, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    sub-int/2addr v0, p2

    iput v0, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    .line 299
    iget p2, p0, Lo/checkPermission$onPostMessage;->extraCallback:I

    if-nez p2, :cond_0

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_0

    .line 300
    iput v0, p0, Lo/checkPermission$onPostMessage;->extraCallback:I

    goto :goto_0

    .line 302
    :cond_0
    iput-boolean v2, p0, Lo/checkPermission$onPostMessage;->onMessageChannelReady:Z

    return v1

    :cond_1
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_2

    .line 306
    iput-boolean v1, p0, Lo/checkPermission$onPostMessage;->onMessageChannelReady:Z

    .line 308
    :cond_2
    :goto_0
    sget-object p1, Lo/checkPermission$onPostMessage;->onPostMessage:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Lo/checkPermission$onPostMessage;->onMessageChannelReady([BII)V

    return v2
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lo/checkPermission$onPostMessage;->onMessageChannelReady:Z

    .line 282
    iput v0, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    .line 283
    iput v0, p0, Lo/checkPermission$onPostMessage;->extraCallback:I

    return-void
.end method

.method public final onMessageChannelReady([BII)V
    .locals 4

    .line 320
    iget-boolean v0, p0, Lo/checkPermission$onPostMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 324
    iget-object v0, p0, Lo/checkPermission$onPostMessage;->ICustomTabsCallback:[B

    array-length v1, v0

    iget v2, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    shl-int/lit8 v1, v2, 0x1

    .line 325
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo/checkPermission$onPostMessage;->ICustomTabsCallback:[B

    .line 327
    :cond_1
    iget-object v0, p0, Lo/checkPermission$onPostMessage;->ICustomTabsCallback:[B

    iget v1, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget p1, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/checkPermission$onPostMessage;->onNavigationEvent:I

    return-void
.end method
