.class public abstract Lo/setTopInset;
.super Ljava/lang/Object;

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
.field private static final ICustomTabsCallback:Lo/nativeGetYOffset;

.field public static final extraCallback:Lo/setTopInset;


# instance fields
.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/nativeGetHeight;

    sget-object v1, Lo/ExceptionWithNoStacktrace;->onNavigationEvent:[B

    invoke-direct {v0, v1}, Lo/nativeGetHeight;-><init>([B)V

    sput-object v0, Lo/setTopInset;->extraCallback:Lo/setTopInset;

    invoke-static {}, Lo/setAppBarLayout;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lo/nativeGetXOffset;

    invoke-direct {v0, v1}, Lo/nativeGetXOffset;-><init>(Lo/nativeGetDurationMs;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/nativeRenderFrame;

    invoke-direct {v0, v1}, Lo/nativeRenderFrame;-><init>(Lo/nativeGetDurationMs;)V

    :goto_0
    sput-object v0, Lo/setTopInset;->ICustomTabsCallback:Lo/nativeGetYOffset;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo/setTopInset;->onNavigationEvent:I

    return-void
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

.method static onMessageChannelReady(I)Lo/nativeGetWidth;
    .locals 2

    new-instance v0, Lo/nativeGetWidth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/nativeGetWidth;-><init>(ILo/nativeGetDurationMs;)V

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/setTopInset;
    .locals 2

    new-instance v0, Lo/nativeGetHeight;

    sget-object v1, Lo/ExceptionWithNoStacktrace;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/nativeGetHeight;-><init>([B)V

    return-object v0
.end method

.method public static onPostMessage([BII)Lo/setTopInset;
    .locals 2

    new-instance v0, Lo/nativeGetHeight;

    sget-object v1, Lo/setTopInset;->ICustomTabsCallback:Lo/nativeGetYOffset;

    invoke-interface {v1, p0, p1, p2}, Lo/nativeGetYOffset;->onPostMessage([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/nativeGetHeight;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 2

    sget-object v0, Lo/ExceptionWithNoStacktrace;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lo/setTopInset;->onPostMessage()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lo/setTopInset;->onNavigationEvent(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected final extraCallback()I
    .locals 1

    iget v0, p0, Lo/setTopInset;->onNavigationEvent:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lo/setTopInset;->onNavigationEvent:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/setTopInset;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lo/setTopInset;->onNavigationEvent(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lo/setTopInset;->onNavigationEvent:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lo/nativeGetDurationMs;

    invoke-direct {v0, p0}, Lo/nativeGetDurationMs;-><init>(Lo/setTopInset;)V

    return-object v0
.end method

.method protected abstract onNavigationEvent(III)I
.end method

.method protected abstract onNavigationEvent(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract onNavigationEvent()Z
.end method

.method public abstract onPostMessage(I)B
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onPostMessage(II)Lo/setTopInset;
.end method

.method public abstract onPostMessage(Lo/setParentFragment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/setTopInset;->onPostMessage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
