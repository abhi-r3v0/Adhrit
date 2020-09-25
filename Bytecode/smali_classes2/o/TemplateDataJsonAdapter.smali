.class public final Lo/TemplateDataJsonAdapter;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:[B

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private asInterface:I

.field private extraCallback:I

.field private getInterfaceDescriptor:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    const/16 v0, 0x40

    iput v0, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor:I

    iput-object p1, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback:[B

    iput p2, p0, Lo/TemplateDataJsonAdapter;->onNavigationEvent:I

    add-int/2addr p3, p2

    iput p3, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    iput p3, p0, Lo/TemplateDataJsonAdapter;->onMessageChannelReady:I

    iput p2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    return-void
.end method

.method private final ICustomTabsCallback$Stub(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    add-int v1, v0, p1

    iget v2, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    if-gt v1, v2, :cond_1

    iget v1, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->ICustomTabsCallback()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p1

    throw p1
.end method

.method private final ICustomTabsService()V
    .locals 2

    iget v0, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->onPostMessage:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lo/TemplateDataJsonAdapter;->onPostMessage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lo/TemplateDataJsonAdapter;->onPostMessage:I

    return-void
.end method

.method private final getInterfaceDescriptor()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0
.end method

.method public static onPostMessage([BII)Lo/TemplateDataJsonAdapter;
    .locals 1

    new-instance p1, Lo/TemplateDataJsonAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lo/TemplateDataJsonAdapter;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfh;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    add-int/2addr p1, v0

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->ICustomTabsService()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->ICustomTabsCallback()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p1

    throw p1
.end method

.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    iget v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback:[B

    iget v3, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    sget-object v4, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->ICustomTabsCallback()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsCallback$Stub()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    sget-object v0, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    return-object v0

    :cond_0
    iget v1, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    iget v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    iget-object v3, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    return-object v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->ICustomTabsCallback()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0
.end method

.method public final asBinder()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0
.end method

.method public final asInterface()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final extraCallback()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->extraCallback:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lo/TemplateDataJsonAdapter;->asBinder:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    iput v0, p0, Lo/TemplateDataJsonAdapter;->asBinder:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfh;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(I)V
    .locals 0

    iput p1, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->ICustomTabsService()V

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    return v0
.end method

.method final onMessageChannelReady(II)V
    .locals 3

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    iput p2, p0, Lo/TemplateDataJsonAdapter;->asBinder:I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onMessageChannelReady(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    return v1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfh;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lo/TemplateDataJsonAdapter;->onPostMessage(I)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result p1

    invoke-direct {p0, p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub(I)V

    return v1

    :cond_5
    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    invoke-direct {p0}, Lo/TemplateDataJsonAdapter;->getInterfaceDescriptor()B

    return v1

    :cond_6
    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    return v1
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    iget v0, p0, Lo/TemplateDataJsonAdapter;->asBinder:I

    invoke-virtual {p0, p1, v0}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    iget v1, p0, Lo/TemplateDataJsonAdapter;->asInterface:I

    iget v2, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback(I)I

    move-result v0

    iget v1, p0, Lo/TemplateDataJsonAdapter;->asInterface:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/TemplateDataJsonAdapter;->asInterface:I

    invoke-virtual {p1, p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo/TemplateDataJsonAdapter;->onPostMessage(I)V

    iget p1, p0, Lo/TemplateDataJsonAdapter;->asInterface:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/TemplateDataJsonAdapter;->asInterface:I

    invoke-virtual {p0, v0}, Lo/TemplateDataJsonAdapter;->extraCallback(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfh;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(II)[B
    .locals 3

    if-nez p2, :cond_0

    sget-object p1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    return-object p1

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lo/TemplateDataJsonAdapter;->onNavigationEvent:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/TemplateDataJsonAdapter;->asBinder()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfh;
        }
    .end annotation

    iget v0, p0, Lo/TemplateDataJsonAdapter;->asBinder:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfh;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onRelationshipValidationResult()I
    .locals 2

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    iget v1, p0, Lo/TemplateDataJsonAdapter;->onNavigationEvent:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final onTransact()I
    .locals 2

    iget v0, p0, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lo/TemplateDataJsonAdapter;->onTransact:I

    sub-int/2addr v0, v1

    return v0
.end method
