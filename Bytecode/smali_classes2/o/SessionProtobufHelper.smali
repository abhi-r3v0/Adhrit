.class public abstract Lo/SessionProtobufHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SessionProtobufHelper$onMessageChannelReady;,
        Lo/SessionProtobufHelper$asInterface;,
        Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;,
        Lo/SessionProtobufHelper$onRelationshipValidationResult;,
        Lo/SessionProtobufHelper$ICustomTabsCallback;,
        Lo/SessionProtobufHelper$extraCallback;,
        Lo/SessionProtobufHelper$onNavigationEvent;,
        Lo/SessionProtobufHelper$onTransact;,
        Lo/SessionProtobufHelper$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/SessionProtobufHelper$onPostMessage;

.field public static final onNavigationEvent:Lo/SessionProtobufHelper;


# instance fields
.field private ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Lo/SessionProtobufHelper$asInterface;

    sget-object v1, Lo/getEventLogSize;->ICustomTabsCallback:[B

    invoke-direct {v0, v1}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    sput-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 134
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lo/SessionProtobufHelper$onTransact;

    invoke-direct {v0, v1}, Lo/SessionProtobufHelper$onTransact;-><init>(B)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/SessionProtobufHelper$onNavigationEvent;

    invoke-direct {v0, v1}, Lo/SessionProtobufHelper$onNavigationEvent;-><init>(B)V

    :goto_0
    sput-object v0, Lo/SessionProtobufHelper;->onMessageChannelReady:Lo/SessionProtobufHelper$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lo/SessionProtobufHelper;->ICustomTabsCallback:I

    return-void
.end method

.method static ICustomTabsCallback([BII)Lo/SessionProtobufHelper;
    .locals 1

    .line 399
    new-instance v0, Lo/SessionProtobufHelper$onMessageChannelReady;

    invoke-direct {v0, p0, p1, p2}, Lo/SessionProtobufHelper$onMessageChannelReady;-><init>([BII)V

    return-object v0
.end method

.method static extraCallback(I)Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;
    .locals 2

    .line 1168
    new-instance v0, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;-><init>(IB)V

    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;)Lo/SessionProtobufHelper;
    .locals 2

    .line 462
    new-instance v0, Lo/SessionProtobufHelper$asInterface;

    sget-object v1, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v0
.end method

.method static onMessageChannelReady(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 1268
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1272
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1265
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method private static onMessageChannelReady(Ljava/util/Iterator;I)Lo/SessionProtobufHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lo/SessionProtobufHelper;",
            ">;I)",
            "Lo/SessionProtobufHelper;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lez p1, :cond_1

    if-ne p1, v0, :cond_0

    .line 617
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/SessionProtobufHelper;

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 620
    invoke-static {p0, v0}, Lo/SessionProtobufHelper;->onMessageChannelReady(Ljava/util/Iterator;I)Lo/SessionProtobufHelper;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 621
    invoke-static {p0, p1}, Lo/SessionProtobufHelper;->onMessageChannelReady(Ljava/util/Iterator;I)Lo/SessionProtobufHelper;

    move-result-object p0

    .line 622
    invoke-direct {v1, p0}, Lo/SessionProtobufHelper;->onPostMessage(Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;

    move-result-object p0

    :goto_0
    return-object p0

    .line 613
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "length (%s) must be >= 1"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady([BII)Lo/SessionProtobufHelper;
    .locals 2

    add-int v0, p1, p2

    .line 361
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lo/SessionProtobufHelper;->onMessageChannelReady(III)I

    .line 362
    new-instance v0, Lo/SessionProtobufHelper$asInterface;

    sget-object v1, Lo/SessionProtobufHelper;->onMessageChannelReady:Lo/SessionProtobufHelper$onPostMessage;

    invoke-interface {v1, p0, p1, p2}, Lo/SessionProtobufHelper$onPostMessage;->ICustomTabsCallback([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v0
.end method

.method public static onNavigationEvent([B)Lo/SessionProtobufHelper;
    .locals 4

    .line 372
    array-length v0, p0

    add-int/lit8 v1, v0, 0x0

    .line 1361
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lo/SessionProtobufHelper;->onMessageChannelReady(III)I

    .line 1362
    new-instance v1, Lo/SessionProtobufHelper$asInterface;

    sget-object v2, Lo/SessionProtobufHelper;->onMessageChannelReady:Lo/SessionProtobufHelper$onPostMessage;

    invoke-interface {v2, p0, v3, v0}, Lo/SessionProtobufHelper$onPostMessage;->ICustomTabsCallback([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v1
.end method

.method public static onPostMessage(Ljava/lang/Iterable;)Lo/SessionProtobufHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/SessionProtobufHelper;",
            ">;)",
            "Lo/SessionProtobufHelper;"
        }
    .end annotation

    .line 591
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 593
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 594
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 602
    sget-object p0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    return-object p0

    .line 605
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, v0}, Lo/SessionProtobufHelper;->onMessageChannelReady(Ljava/util/Iterator;I)Lo/SessionProtobufHelper;

    move-result-object p0

    return-object p0
.end method

.method private onPostMessage(Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;
    .locals 3

    .line 569
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 574
    invoke-static {p0, p1}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper;

    move-result-object p1

    return-object p1

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ByteString would be too long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static onPostMessage([B)Lo/SessionProtobufHelper;
    .locals 1

    .line 391
    new-instance v0, Lo/SessionProtobufHelper$asInterface;

    invoke-direct {v0, p0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v0
.end method

.method static onPostMessage(II)V
    .locals 3

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    if-gez p0, :cond_0

    .line 1246
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Index < 0: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1248
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index > length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback([BIII)V
.end method

.method public abstract ICustomTabsCallback()Z
.end method

.method protected abstract ICustomTabsCallback$Stub()Z
.end method

.method protected final asBinder()I
    .locals 1

    .line 1221
    iget v0, p0, Lo/SessionProtobufHelper;->ICustomTabsCallback:I

    return v0
.end method

.method protected abstract extraCallback(III)I
.end method

.method public extraCallback()Lo/SessionProtobufHelper$extraCallback;
    .locals 1

    .line 175
    new-instance v0, Lo/SessionProtobufHelper$3;

    invoke-direct {v0, p0}, Lo/SessionProtobufHelper$3;-><init>(Lo/SessionProtobufHelper;)V

    return-object v0
.end method

.method public abstract extraCallback(Lo/encodeZigZag64;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final extraCallback([BIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int v0, p2, p4

    .line 657
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    invoke-static {p2, v0, v1}, Lo/SessionProtobufHelper;->onMessageChannelReady(III)I

    add-int v0, p3, p4

    .line 658
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lo/SessionProtobufHelper;->onMessageChannelReady(III)I

    if-lez p4, :cond_0

    .line 660
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BIII)V

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .line 908
    iget v0, p0, Lo/SessionProtobufHelper;->ICustomTabsCallback:I

    if-nez v0, :cond_1

    .line 911
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    .line 912
    invoke-virtual {p0, v0, v1, v0}, Lo/SessionProtobufHelper;->onNavigationEvent(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 916
    :cond_0
    iput v0, p0, Lo/SessionProtobufHelper;->ICustomTabsCallback:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->extraCallback()Lo/SessionProtobufHelper$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method abstract onMessageChannelReady(I)B
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onNavigationEvent(I)B
.end method

.method protected abstract onNavigationEvent(III)I
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 2

    .line 820
    sget-object v0, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    .line 1800
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lo/SessionProtobufHelper;->onPostMessage(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lo/SessionProtobufHelper;->onPostMessage(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract onNavigationEvent(II)Lo/SessionProtobufHelper;
.end method

.method protected abstract onPostMessage(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final onPostMessage()[B
    .locals 3

    .line 690
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 692
    sget-object v0, Lo/getEventLogSize;->ICustomTabsCallback:[B

    return-object v0

    .line 694
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 695
    invoke-virtual {p0, v1, v2, v2, v0}, Lo/SessionProtobufHelper;->ICustomTabsCallback([BIII)V

    return-object v1
.end method

.method protected abstract onRelationshipValidationResult()I
.end method

.method public abstract onTransact()Lo/writeSessionAppClsId;
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1279
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1282
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1283
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2290
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    .line 3109
    new-instance v2, Lo/Report$5;

    invoke-direct {v2, p0}, Lo/Report$5;-><init>(Lo/SessionProtobufHelper;)V

    invoke-static {v2}, Lo/Report;->ICustomTabsCallback(Lo/Report$ICustomTabsCallback;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2290
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lo/SessionProtobufHelper;->onNavigationEvent(II)Lo/SessionProtobufHelper;

    move-result-object v3

    .line 4109
    new-instance v4, Lo/Report$5;

    invoke-direct {v4, v3}, Lo/Report$5;-><init>(Lo/SessionProtobufHelper;)V

    invoke-static {v4}, Lo/Report;->ICustomTabsCallback(Lo/Report$ICustomTabsCallback;)Ljava/lang/String;

    move-result-object v3

    .line 2290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 1279
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
