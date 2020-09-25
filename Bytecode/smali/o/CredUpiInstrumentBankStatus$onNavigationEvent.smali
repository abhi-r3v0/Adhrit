.class public final Lo/CredUpiInstrumentBankStatus$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CredUpiInstrumentBankStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:[I

.field public final extraCallback:I

.field public final onMessageChannelReady:[Landroid/net/Uri;

.field public final onNavigationEvent:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v0, v0, [J

    const/4 v3, -0x1

    .line 56
    invoke-direct {p0, v3, v1, v2, v0}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method private constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 65
    iput p1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    .line 66
    iput-object p2, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    .line 67
    iput-object p3, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    .line 68
    iput-object p4, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onNavigationEvent:[J

    return-void
.end method

.method private static onPostMessage([JI)[J
    .locals 3

    .line 230
    array-length v0, p0

    .line 231
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 232
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 233
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    .line 109
    iget v2, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    iget v3, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    iget-object v3, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    .line 110
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    iget-object v3, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    .line 111
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onNavigationEvent:[J

    iget-object p1, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onNavigationEvent:[J

    .line 112
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback()I
    .locals 1

    const/4 v0, -0x1

    .line 76
    invoke-virtual {p0, v0}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady(I)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 117
    iget v0, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onNavigationEvent:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 85
    :goto_0
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 86
    aget v2, v1, p1

    if-eqz v2, :cond_0

    aget v1, v1, p1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final onMessageChannelReady([J)Lo/CredUpiInstrumentBankStatus$onNavigationEvent;
    .locals 4

    .line 189
    iget v0, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 190
    array-length v0, p1

    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 191
    array-length v0, v1

    invoke-static {p1, v0}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onPostMessage([JI)[J

    move-result-object p1

    .line 193
    :cond_2
    new-instance v0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    iget v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    iget-object v3, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady:[Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 97
    iget v0, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback()I

    move-result v0

    iget v1, p0, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
