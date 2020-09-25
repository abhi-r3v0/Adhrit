.class final Lo/canSendWrites$ICustomTabsCallback;
.super Lo/setLeft;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/canSendWrites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:[B

.field private onNavigationEvent:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0, v0}, Lo/canSendWrites$ICustomTabsCallback;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 3

    .line 135
    invoke-direct {p0}, Lo/setLeft;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    add-int/2addr p3, p2

    .line 138
    array-length v2, p1

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 140
    check-cast p1, [B

    iput-object p1, p0, Lo/canSendWrites$ICustomTabsCallback;->extraCallback:[B

    .line 141
    iput p2, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    .line 142
    iput p3, p0, Lo/canSendWrites$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void

    .line 3910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3142
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset + length exceeds array boundary"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2142
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1142
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback([BII)V
    .locals 2

    .line 164
    iget-object v0, p0, Lo/canSendWrites$ICustomTabsCallback;->extraCallback:[B

    iget v1, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget p1, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method

.method public final extraCallback()I
    .locals 3

    .line 4052
    invoke-virtual {p0}, Lo/setLeft;->onPostMessage()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lo/canSendWrites$ICustomTabsCallback;->extraCallback:[B

    iget v1, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 4053
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final onPostMessage()I
    .locals 2

    .line 147
    iget v0, p0, Lo/canSendWrites$ICustomTabsCallback;->ICustomTabsCallback:I

    iget v1, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final synthetic onPostMessage(I)Lo/onServerInfoUpdate;
    .locals 3

    .line 5052
    invoke-virtual {p0}, Lo/setLeft;->onPostMessage()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 4187
    iget v0, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    add-int v1, v0, p1

    .line 4188
    iput v1, p0, Lo/canSendWrites$ICustomTabsCallback;->onNavigationEvent:I

    .line 4189
    new-instance v1, Lo/canSendWrites$ICustomTabsCallback;

    iget-object v2, p0, Lo/canSendWrites$ICustomTabsCallback;->extraCallback:[B

    invoke-direct {v1, v2, v0, p1}, Lo/canSendWrites$ICustomTabsCallback;-><init>([BII)V

    return-object v1

    .line 5053
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
