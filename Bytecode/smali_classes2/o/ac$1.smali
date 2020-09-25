.class public abstract Lo/ac$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/seek;

.field private static final onMessageChannelReady:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/ac$1;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/ac$1;


# instance fields
.field private extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lo/readFloat;

    sget-object v1, Lo/fG;->extraCallback:[B

    invoke-direct {v0, v1}, Lo/readFloat;-><init>([B)V

    sput-object v0, Lo/ac$1;->onNavigationEvent:Lo/ac$1;

    .line 42
    invoke-static {}, Lo/eG;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lo/ac$d;

    invoke-direct {v0, v1}, Lo/ac$d;-><init>(Lo/readFully;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/eJ;

    invoke-direct {v0, v1}, Lo/eJ;-><init>(Lo/readFully;)V

    :goto_0
    sput-object v0, Lo/ac$1;->ICustomTabsCallback:Lo/seek;

    .line 43
    new-instance v0, Lo/readShort;

    invoke-direct {v0}, Lo/readShort;-><init>()V

    sput-object v0, Lo/ac$1;->onMessageChannelReady:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo/ac$1;->extraCallback:I

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/ac$1;
    .locals 2

    .line 8
    new-instance v0, Lo/readFloat;

    sget-object v1, Lo/fG;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/readFloat;-><init>([B)V

    return-object v0
.end method

.method private static extraCallback(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static extraCallback([BII)Lo/ac$1;
    .locals 2

    add-int v0, p1, p2

    .line 5
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lo/ac$1;->onPostMessage(III)I

    .line 6
    new-instance v0, Lo/readFloat;

    sget-object v1, Lo/ac$1;->ICustomTabsCallback:Lo/seek;

    invoke-interface {v1, p0, p1, p2}, Lo/seek;->onMessageChannelReady([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/readFloat;-><init>([B)V

    return-object v0
.end method

.method static synthetic onMessageChannelReady(B)I
    .locals 0

    .line 40
    invoke-static {p0}, Lo/ac$1;->extraCallback(B)I

    move-result p0

    return p0
.end method

.method static onMessageChannelReady(I)Lo/readInt;
    .locals 2

    .line 20
    new-instance v0, Lo/readInt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/readInt;-><init>(ILo/readFully;)V

    return-object v0
.end method

.method static onNavigationEvent([B)Lo/ac$1;
    .locals 1

    .line 7
    new-instance v0, Lo/readFloat;

    invoke-direct {v0, p0}, Lo/readFloat;-><init>([B)V

    return-object v0
.end method

.method static onPostMessage(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 27
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/eF;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method abstract extraCallback(I)B
.end method

.method public final hashCode()I
    .locals 2

    .line 12
    iget v0, p0, Lo/ac$1;->extraCallback:I

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, v0}, Lo/ac$1;->onMessageChannelReady(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 18
    :cond_0
    iput v0, p0, Lo/ac$1;->extraCallback:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 38
    new-instance v0, Lo/readFully;

    invoke-direct {v0, p0}, Lo/readFully;-><init>(Lo/ac$1;)V

    return-object v0
.end method

.method protected final onMessageChannelReady()I
    .locals 1

    .line 21
    iget v0, p0, Lo/ac$1;->extraCallback:I

    return v0
.end method

.method protected abstract onMessageChannelReady(III)I
.end method

.method protected abstract onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract onNavigationEvent(I)B
.end method

.method public abstract onNavigationEvent()I
.end method

.method public abstract onNavigationEvent(II)Lo/ac$1;
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 2

    .line 9
    sget-object v0, Lo/fG;->onMessageChannelReady:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lo/ac$1;->onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 30
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 32
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 34
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lo/gv;->onNavigationEvent(Lo/ac$1;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lo/ac$1;->onNavigationEvent(II)Lo/ac$1;

    move-result-object v2

    invoke-static {v2}, Lo/gv;->onNavigationEvent(Lo/ac$1;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 36
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
