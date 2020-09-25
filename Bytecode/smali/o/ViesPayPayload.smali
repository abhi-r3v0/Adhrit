.class public final Lo/ViesPayPayload;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/InstrumentAttributeUpdateRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lo/PrefetchPayload;->onPostMessage:Lo/PrefetchPayload;

    sput-object v0, Lo/ViesPayPayload;->onPostMessage:Lo/InstrumentAttributeUpdateRequest;

    return-void
.end method

.method public static onMessageChannelReady(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/PaymentRequestJsonAdapter;)Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/PaymentRequestJsonAdapter;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/PaymentRequestJsonAdapter;->onRelationshipValidationResult:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-static {p0}, Lo/ViesPayPayload;->onMessageChannelReady(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onPostMessage(Ljava/io/IOException;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 365
    instance-of v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_0

    .line 366
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->onPostMessage:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 371
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
