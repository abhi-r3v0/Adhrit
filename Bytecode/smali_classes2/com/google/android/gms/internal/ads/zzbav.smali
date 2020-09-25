.class public abstract Lcom/google/android/gms/internal/ads/zzbav;
.super Lo/LoanStatusResponse$MandateDetails;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbav$ICustomTabsCallback;,
        Lcom/google/android/gms/internal/ads/zzbav$zzb;
    }
.end annotation


# static fields
.field private static final extraCallback:Z

.field private static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field public onNavigationEvent:Lo/LoanStatusResponse$StashSummaryData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage:Ljava/util/logging/Logger;

    invoke-static {}, Lo/StashLandingResponse;->ICustomTabsCallback()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse$MandateDetails;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/LoanStatusResponse$SmsPermissionConfirmation;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbav;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static ICustomTabsCallback(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(Lo/LoanSummary$Details;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lo/LoanSummary$Details;->warmup()I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->newSession(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->newSession(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback$Stub(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static ICustomTabsCallback$Stub(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static ICustomTabsCallback$Stub$Proxy(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p0

    return p0
.end method

.method public static asBinder(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static asBinder(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static asBinder(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static asInterface(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static asInterface(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static asInterface(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static extraCallback(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static extraCallback(ID)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static extraCallback(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static extraCallback([B)Lcom/google/android/gms/internal/ads/zzbav;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbav$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzbav$ICustomTabsCallback;-><init>([BII)V

    return-object v1
.end method

.method public static getInterfaceDescriptor(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static newSession(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static onMessageChannelReady(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(ILo/LoanStatusResponse$Input;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-virtual {p1}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static onMessageChannelReady(ILo/LoanStatusResponse_OkycSetupJsonAdapter;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-virtual {p1}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onMessageChannelReady()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static onMessageChannelReady(ILo/LoanSummary$Details;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Lo/LoanSummary$Details;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static onMessageChannelReady(ILo/LoanSummary$Details;Lo/PoweredBy;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lo/LoanStatusResponse$Data;

    invoke-virtual {p1}, Lo/LoanStatusResponse$Data;->newSession()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lo/PoweredBy;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/LoanStatusResponse$Data;->onNavigationEvent(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static onMessageChannelReady([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onNavigationEvent(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onNavigationEvent(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onNavigationEvent(ILo/LoanStatusResponse_OkycSetupJsonAdapter;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanStatusResponse_OkycSetupJsonAdapter;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onNavigationEvent(ILo/LoanSummary$Details;Lo/PoweredBy;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanSummary$Details;Lo/PoweredBy;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onNavigationEvent(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static onNavigationEvent(Lo/LoanStatusResponse$Input;)I
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse$Input;->onNavigationEvent()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onNavigationEvent(Lo/LoanSummary$Details;Lo/PoweredBy;)I
    .locals 2

    check-cast p0, Lo/LoanStatusResponse$Data;

    invoke-virtual {p0}, Lo/LoanStatusResponse$Data;->newSession()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lo/PoweredBy;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/LoanStatusResponse$Data;->onNavigationEvent(I)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static onNavigationEvent(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic onNavigationEvent()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback:Z

    return v0
.end method

.method public static onPostMessage(ILo/LoanStatusResponse$Input;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanStatusResponse$Input;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static onPostMessage(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lo/StashVerifyBankResponse_ScreenDataJsonAdapter;->onNavigationEvent(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lo/StashVerifyBankResponse; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(Lo/LoanStatusResponse_OkycSetupJsonAdapter;)I
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_OkycSetupJsonAdapter;->onMessageChannelReady()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(Lo/LoanSummary$Details;)I
    .locals 1

    invoke-interface {p0}, Lo/LoanSummary$Details;->warmup()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onRelationshipValidationResult(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onRelationshipValidationResult(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onRelationshipValidationResult(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result p0

    return p0
.end method

.method public static onTransact(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onTransact(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onTransact(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onTransact(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static warmup(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public abstract ICustomTabsCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final extraCallback()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract extraCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final onMessageChannelReady(Ljava/lang/String;Lo/StashVerifyBankResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lo/LoanStatusResponse$MandateDetails;->onNavigationEvent([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzbav$zzb; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract onMessageChannelReady([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(J)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->newSession(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbav;->newSession(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(II)V

    return-void
.end method

.method public final onNavigationEvent(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IJ)V

    return-void
.end method

.method public abstract onNavigationEvent(ILo/LoanStatusResponse$Input;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(J)V

    return-void
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/LoanSummary$Details;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onPostMessage(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(I)V

    return-void
.end method

.method public abstract onPostMessage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onPostMessage(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(IJ)V

    return-void
.end method

.method public final onPostMessage(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(II)V

    return-void
.end method

.method public abstract onPostMessage(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILo/LoanSummary$Details;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILo/LoanSummary$Details;Lo/PoweredBy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/LoanStatusResponse$Input;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onPostMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(B)V

    return-void
.end method

.method public abstract onPostMessage([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
