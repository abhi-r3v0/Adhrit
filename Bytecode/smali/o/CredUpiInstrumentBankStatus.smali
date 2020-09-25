.class public final Lo/CredUpiInstrumentBankStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CredUpiInstrumentBankStatus$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/CredUpiInstrumentBankStatus;


# instance fields
.field public final ICustomTabsCallback:[J

.field public final asBinder:J

.field public final extraCallback:I

.field public final onNavigationEvent:J

.field public final onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 265
    new-instance v0, Lo/CredUpiInstrumentBankStatus;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lo/CredUpiInstrumentBankStatus;-><init>([J)V

    sput-object v0, Lo/CredUpiInstrumentBankStatus;->onMessageChannelReady:Lo/CredUpiInstrumentBankStatus;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .locals 3

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    array-length v0, p1

    .line 289
    iput v0, p0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    .line 290
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    .line 291
    new-array p1, v0, [Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    iput-object p1, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 293
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    new-instance v2, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    invoke-direct {v2}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 295
    iput-wide v0, p0, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 296
    iput-wide v0, p0, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    return-void
.end method

.method private constructor <init>([J[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;JJ)V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    array-length v0, p2

    iput v0, p0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    .line 302
    iput-object p1, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    .line 303
    iput-object p2, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    .line 304
    iput-wide p3, p0, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    .line 305
    iput-wide p5, p0, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    return-void
.end method

.method private extraCallback(JI)Z
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return v2

    .line 474
    :cond_0
    iget-object v3, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    aget-wide v4, v3, p3

    const/4 p3, 0x1

    cmp-long v3, v4, v0

    if-nez v3, :cond_3

    .line 476
    iget-wide v0, p0, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return p3

    :cond_3
    cmp-long v0, p1, v4

    if-gez v0, :cond_4

    return p3

    :cond_4
    return v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    check-cast p1, Lo/CredUpiInstrumentBankStatus;

    .line 452
    iget v2, p0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    iget v3, p1, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    iget-wide v4, p1, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    iget-wide v4, p1, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    iget-object v3, p1, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    .line 455
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    iget-object p1, p1, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    .line 456
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback(JJ)I
    .locals 6

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_0

    cmp-long v3, p1, p3

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 347
    :goto_0
    iget-object p4, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    array-length v3, p4

    if-ge p3, v3, :cond_2

    aget-wide v3, p4, p3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    aget-wide v3, p4, p3

    cmp-long p4, p1, v3

    if-gez p4, :cond_1

    iget-object p4, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p4, p4, p3

    .line 349
    invoke-virtual {p4}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady()Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 352
    :cond_2
    iget-object p1, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    array-length p1, p1

    if-ge p3, p1, :cond_3

    return p3

    :cond_3
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 461
    iget v0, p0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    mul-int/lit8 v0, v0, 0x1f

    .line 462
    iget-wide v1, p0, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 463
    iget-wide v1, p0, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 464
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 465
    iget-object v1, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(J)I
    .locals 2

    .line 321
    iget-object v0, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 322
    invoke-direct {p0, p1, p2, v0}, Lo/CredUpiInstrumentBankStatus;->extraCallback(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 325
    iget-object p1, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final onNavigationEvent([[J)Lo/CredUpiInstrumentBankStatus;
    .locals 8

    .line 416
    iget-object v0, p0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    const/4 v0, 0x0

    .line 417
    :goto_0
    iget v1, p0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    if-ge v0, v1, :cond_0

    .line 418
    aget-object v1, v3, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady([J)Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    move-result-object v1

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    new-instance p1, Lo/CredUpiInstrumentBankStatus;

    iget-object v2, p0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    iget-wide v4, p0, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    iget-wide v6, p0, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lo/CredUpiInstrumentBankStatus;-><init>([J[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;JJ)V

    return-object p1
.end method
