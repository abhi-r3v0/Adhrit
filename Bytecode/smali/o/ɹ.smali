.class public Lo/ɹ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ɹ$onPostMessage;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lo/ɹ;

    sput-object v0, Lo/ɹ;->ICustomTabsCallback:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static onNavigationEvent(Ljava/io/InputStream;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lo/ɹ$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ɹ$onPostMessage;-><init>(B)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-gt p1, v4, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 1097
    :cond_0
    invoke-static {p0, v3, v1}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result v5

    iput v5, v0, Lo/ɹ$onPostMessage;->onPostMessage:I

    add-int/lit8 p1, p1, -0x4

    .line 1099
    iget v5, v0, Lo/ɹ$onPostMessage;->onPostMessage:I

    const v6, 0x49492a00    # 823968.0f

    if-eq v5, v6, :cond_1

    iget v5, v0, Lo/ɹ$onPostMessage;->onPostMessage:I

    const v7, 0x4d4d002a    # 2.14958752E8f

    if-eq v5, v7, :cond_1

    .line 1101
    sget-object p1, Lo/ɹ;->ICustomTabsCallback:Ljava/lang/Class;

    const-string v5, "Invalid TIFF header"

    invoke-static {p1, v5}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_1
    iget v5, v0, Lo/ɹ$onPostMessage;->onPostMessage:I

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v0, Lo/ɹ$onPostMessage;->onNavigationEvent:Z

    .line 1107
    iget-boolean v5, v0, Lo/ɹ$onPostMessage;->onNavigationEvent:Z

    invoke-static {p0, v3, v5}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result v5

    iput v5, v0, Lo/ɹ$onPostMessage;->extraCallback:I

    add-int/lit8 p1, p1, -0x4

    .line 1109
    iget v5, v0, Lo/ɹ$onPostMessage;->extraCallback:I

    if-lt v5, v4, :cond_3

    iget v5, v0, Lo/ɹ$onPostMessage;->extraCallback:I

    sub-int/2addr v5, v4

    if-le v5, p1, :cond_4

    .line 1110
    :cond_3
    sget-object p1, Lo/ɹ;->ICustomTabsCallback:Ljava/lang/Class;

    const-string v5, "Invalid offset"

    invoke-static {p1, v5}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_4
    :goto_2
    iget v5, v0, Lo/ɹ$onPostMessage;->extraCallback:I

    sub-int/2addr v5, v4

    if-eqz p1, :cond_b

    if-le v5, p1, :cond_5

    goto :goto_5

    :cond_5
    int-to-long v6, v5

    .line 65
    invoke-virtual {p0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    sub-int/2addr p1, v5

    .line 69
    iget-boolean v4, v0, Lo/ɹ$onPostMessage;->onNavigationEvent:Z

    const/16 v5, 0xe

    const/4 v6, 0x2

    if-lt p1, v5, :cond_7

    .line 1134
    invoke-static {p0, v6, v4}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result v5

    add-int/lit8 p1, p1, -0x2

    :goto_3
    add-int/lit8 v7, v5, -0x1

    if-lez v5, :cond_7

    const/16 v5, 0xc

    if-lt p1, v5, :cond_7

    .line 1137
    invoke-static {p0, v6, v4}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result v5

    add-int/lit8 p1, p1, -0x2

    const/16 v8, 0x112

    if-ne v5, v8, :cond_6

    goto :goto_4

    :cond_6
    const-wide/16 v8, 0xa

    .line 1142
    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 p1, p1, -0xa

    move v5, v7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 72
    :goto_4
    iget-boolean v0, v0, Lo/ɹ$onPostMessage;->onNavigationEvent:Z

    const/16 v4, 0xa

    if-ge p1, v4, :cond_8

    return v1

    .line 1162
    :cond_8
    invoke-static {p0, v6, v0}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result p1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_9

    return v1

    .line 1167
    :cond_9
    invoke-static {p0, v3, v0}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result p1

    if-eq p1, v2, :cond_a

    return v1

    .line 1171
    :cond_a
    invoke-static {p0, v6, v0}, Lo/findViewHolderForPosition$onMessageChannelReady;->onPostMessage(Ljava/io/InputStream;IZ)I

    move-result p0

    return p0

    :cond_b
    :goto_5
    return v1
.end method
