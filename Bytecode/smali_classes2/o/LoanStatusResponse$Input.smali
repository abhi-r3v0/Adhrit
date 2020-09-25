.class public abstract Lo/LoanStatusResponse$Input;
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
.field public static final onMessageChannelReady:Lo/LoanStatusResponse$Input;

.field private static final onPostMessage:Lo/LoanStatusResponse$OtpInput;


# instance fields
.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LoanStatusResponse$PollingData;

    sget-object v1, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->ICustomTabsCallback:[B

    invoke-direct {v0, v1}, Lo/LoanStatusResponse$PollingData;-><init>([B)V

    sput-object v0, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    invoke-static {}, Lo/LoanStatusResponse$EmiSchedule;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lo/LoanStatusResponse$SmsData;

    invoke-direct {v0, v1}, Lo/LoanStatusResponse$SmsData;-><init>(Lo/LoanStatusResponse$KycData;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/LoanStatusResponse$OkycSetup;

    invoke-direct {v0, v1}, Lo/LoanStatusResponse$OkycSetup;-><init>(Lo/LoanStatusResponse$KycData;)V

    :goto_0
    sput-object v0, Lo/LoanStatusResponse$Input;->onPostMessage:Lo/LoanStatusResponse$OtpInput;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo/LoanStatusResponse$Input;->onNavigationEvent:I

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/LoanStatusResponse$Input;
    .locals 2

    new-instance v0, Lo/LoanStatusResponse$PollingData;

    sget-object v1, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/LoanStatusResponse$PollingData;-><init>([B)V

    return-object v0
.end method

.method public static ICustomTabsCallback([B)Lo/LoanStatusResponse$Input;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([BII)Lo/LoanStatusResponse$Input;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback([BII)Lo/LoanStatusResponse$Input;
    .locals 2

    new-instance v0, Lo/LoanStatusResponse$PollingData;

    sget-object v1, Lo/LoanStatusResponse$Input;->onPostMessage:Lo/LoanStatusResponse$OtpInput;

    invoke-interface {v1, p0, p1, p2}, Lo/LoanStatusResponse$OtpInput;->onPostMessage([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/LoanStatusResponse$PollingData;-><init>([B)V

    return-object v0
.end method

.method static extraCallback(I)Lo/LoanStatusResponse$RequiredData;
    .locals 2

    new-instance v0, Lo/LoanStatusResponse$RequiredData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/LoanStatusResponse$RequiredData;-><init>(ILo/LoanStatusResponse$KycData;)V

    return-object v0
.end method

.method static onMessageChannelReady([B)Lo/LoanStatusResponse$Input;
    .locals 1

    new-instance v0, Lo/LoanStatusResponse$PollingData;

    invoke-direct {v0, p0}, Lo/LoanStatusResponse$PollingData;-><init>([B)V

    return-object v0
.end method

.method static onNavigationEvent(III)I
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


# virtual methods
.method protected abstract ICustomTabsCallback([BIII)V
.end method

.method public final ICustomTabsCallback()[B
    .locals 3

    invoke-virtual {p0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->ICustomTabsCallback:[B

    return-object v0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([BIII)V

    return-object v1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected abstract extraCallback(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract extraCallback()Lo/LoanStatusResponse$ScreenData;
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lo/LoanStatusResponse$Input;->onNavigationEvent:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lo/LoanStatusResponse$Input;->onPostMessage(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lo/LoanStatusResponse$Input;->onNavigationEvent:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lo/LoanStatusResponse$KycData;

    invoke-direct {v0, p0}, Lo/LoanStatusResponse$KycData;-><init>(Lo/LoanStatusResponse$Input;)V

    return-object v0
.end method

.method public abstract onMessageChannelReady(I)B
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 2

    sget-object v0, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lo/LoanStatusResponse$Input;->extraCallback(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onMessageChannelReady(II)Lo/LoanStatusResponse$Input;
.end method

.method public abstract onNavigationEvent()I
.end method

.method protected abstract onPostMessage(III)I
.end method

.method public abstract onPostMessage(Lo/LoanStatusResponse$MandateDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()Z
.end method

.method protected final onTransact()I
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse$Input;->onNavigationEvent:I

    return v0
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

    invoke-virtual {p0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

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
