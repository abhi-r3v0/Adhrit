.class public final Lo/onNodeValue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onNodeValue$extraCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lcom/google/common/io/BaseEncoding;

.field public static final onPostMessage:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 46
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/onNodeValue;->onPostMessage:Ljava/nio/charset/Charset;

    .line 52
    sget-object v0, Lo/getPredecessorKey;->onMessageChannelReady:Lcom/google/common/io/BaseEncoding;

    sput-object v0, Lo/onNodeValue;->ICustomTabsCallback:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getPredecessorKey;)[[B
    .locals 5

    .line 2208
    iget v0, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 v0, v0, 0x1

    .line 1465
    new-array v0, v0, [[B

    .line 1466
    iget-object v1, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1467
    iget-object v1, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    .line 3208
    iget p0, p0, Lo/getPredecessorKey;->onPostMessage:I

    shl-int/lit8 p0, p0, 0x1

    .line 1467
    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 1469
    :cond_0
    :goto_0
    iget v1, p0, Lo/getPredecessorKey;->onPostMessage:I

    if-ge v2, v1, :cond_2

    shl-int/lit8 v1, v2, 0x1

    .line 4152
    iget-object v3, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, [B

    .line 1470
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 5160
    iget-object v3, p0, Lo/getPredecessorKey;->extraCallback:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 4177
    instance-of v4, v3, [B

    if-eqz v4, :cond_1

    .line 4178
    check-cast v3, [B

    goto :goto_1

    .line 4180
    :cond_1
    check-cast v3, Lo/getPredecessorKey$onMessageChannelReady;

    invoke-virtual {v3}, Lo/getPredecessorKey$onMessageChannelReady;->onNavigationEvent()[B

    move-result-object v3

    .line 1471
    :goto_1
    aput-object v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;Lo/onNodeValue$extraCallback;)Lo/getPredecessorKey$ICustomTabsCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/onNodeValue$extraCallback<",
            "TT;>;)",
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "TT;>;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 58
    :cond_0
    invoke-static {p0, v1, p1}, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extraCallback([[B)Lo/getPredecessorKey;
    .locals 1

    .line 69
    new-instance v0, Lo/getPredecessorKey;

    invoke-direct {v0, p0}, Lo/getPredecessorKey;-><init>([[B)V

    return-object v0
.end method

.method public static onNavigationEvent(Lo/getPredecessorKey;)I
    .locals 0

    .line 5221
    iget p0, p0, Lo/getPredecessorKey;->onPostMessage:I

    return p0
.end method
