.class public abstract Lo/setMandatory;
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
.field private static final ICustomTabsCallback:Lo/getStars;

.field public static final onMessageChannelReady:Lo/setMandatory;

.field private static final onPostMessage:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/setMandatory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lo/setIssueResolved;

    sget-object v1, Lo/fromString;->onMessageChannelReady:[B

    invoke-direct {v0, v1}, Lo/setIssueResolved;-><init>([B)V

    sput-object v0, Lo/setMandatory;->onMessageChannelReady:Lo/setMandatory;

    .line 43
    invoke-static {}, Lo/Csat$CSatStatus;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lo/setRegion;

    invoke-direct {v0, v1}, Lo/setRegion;-><init>(Lo/setInitiatedTime;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/setResponse;

    invoke-direct {v0, v1}, Lo/setResponse;-><init>(Lo/setInitiatedTime;)V

    :goto_0
    sput-object v0, Lo/setMandatory;->ICustomTabsCallback:Lo/getStars;

    .line 44
    new-instance v0, Lo/getInitiatedTime;

    invoke-direct {v0}, Lo/getInitiatedTime;-><init>()V

    sput-object v0, Lo/setMandatory;->onPostMessage:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo/setMandatory;->extraCallback:I

    return-void
.end method

.method static ICustomTabsCallback(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 28
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

    .line 29
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

    .line 26
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

.method public static extraCallback(Ljava/lang/String;)Lo/setMandatory;
    .locals 2

    .line 9
    new-instance v0, Lo/setIssueResolved;

    sget-object v1, Lo/fromString;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/setIssueResolved;-><init>([B)V

    return-object v0
.end method

.method static synthetic onNavigationEvent(B)I
    .locals 0

    .line 41
    invoke-static {p0}, Lo/setMandatory;->onPostMessage(B)I

    move-result p0

    return p0
.end method

.method private static onPostMessage(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static onPostMessage(I)Lo/getLocaleId;
    .locals 2

    .line 21
    new-instance v0, Lo/getLocaleId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getLocaleId;-><init>(ILo/setInitiatedTime;)V

    return-object v0
.end method


# virtual methods
.method protected final ICustomTabsCallback()I
    .locals 1

    .line 22
    iget v0, p0, Lo/setMandatory;->extraCallback:I

    return v0
.end method

.method public abstract ICustomTabsCallback(II)Lo/setMandatory;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method abstract extraCallback(I)B
.end method

.method protected abstract extraCallback(III)I
.end method

.method public abstract extraCallback(Lo/CsatResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()Z
.end method

.method public final hashCode()I
    .locals 2

    .line 13
    iget v0, p0, Lo/setMandatory;->extraCallback:I

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lo/setMandatory;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1, v0}, Lo/setMandatory;->extraCallback(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 19
    :cond_0
    iput v0, p0, Lo/setMandatory;->extraCallback:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 39
    new-instance v0, Lo/setInitiatedTime;

    invoke-direct {v0, p0}, Lo/setInitiatedTime;-><init>(Lo/setMandatory;)V

    return-object v0
.end method

.method public abstract onMessageChannelReady(I)B
.end method

.method protected abstract onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 2

    .line 10
    sget-object v0, Lo/fromString;->onNavigationEvent:Ljava/nio/charset/Charset;

    .line 11
    invoke-virtual {p0}, Lo/setMandatory;->onPostMessage()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lo/setMandatory;->onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onPostMessage()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 31
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 33
    invoke-virtual {p0}, Lo/setMandatory;->onPostMessage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 35
    invoke-virtual {p0}, Lo/setMandatory;->onPostMessage()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lo/getGlobalErrorMessage;->onPostMessage(Lo/setMandatory;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lo/setMandatory;->ICustomTabsCallback(II)Lo/setMandatory;

    move-result-object v2

    invoke-static {v2}, Lo/getGlobalErrorMessage;->onPostMessage(Lo/setMandatory;)Ljava/lang/String;

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

    .line 37
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
