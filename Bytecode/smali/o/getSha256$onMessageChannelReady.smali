.class final Lo/getSha256$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSha256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CryptLib;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:J

.field private asBinder:Z

.field private asInterface:Z

.field private extraCallback:J

.field private newSession:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z

.field private onPostMessage:J

.field private onRelationshipValidationResult:Z

.field private onTransact:Z

.field private warmup:J


# direct methods
.method public constructor <init>(Lo/CryptLib;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback:Lo/CryptLib;

    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 7

    .line 487
    iget-boolean v3, p0, Lo/getSha256$onMessageChannelReady;->newSession:Z

    .line 488
    iget-wide v0, p0, Lo/getSha256$onMessageChannelReady;->extraCallback:J

    iget-wide v4, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 489
    iget-object v0, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback:Lo/CryptLib;

    iget-wide v1, p0, Lo/getSha256$onMessageChannelReady;->warmup:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(JIIJ)V
    .locals 1

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 432
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 433
    iput-wide p5, p0, Lo/getSha256$onMessageChannelReady;->onPostMessage:J

    .line 434
    iput v0, p0, Lo/getSha256$onMessageChannelReady;->onMessageChannelReady:I

    .line 435
    iput-wide p1, p0, Lo/getSha256$onMessageChannelReady;->extraCallback:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_1

    .line 438
    iget-boolean p2, p0, Lo/getSha256$onMessageChannelReady;->asBinder:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lo/getSha256$onMessageChannelReady;->asInterface:Z

    if-eqz p2, :cond_0

    .line 440
    invoke-direct {p0, p3}, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback(I)V

    .line 441
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->asInterface:Z

    :cond_0
    const/16 p2, 0x22

    if-gt p4, p2, :cond_1

    .line 445
    iget-boolean p2, p0, Lo/getSha256$onMessageChannelReady;->asBinder:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 446
    iput-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->asBinder:Z

    :cond_1
    const/16 p2, 0x10

    if-lt p4, p2, :cond_2

    const/16 p2, 0x15

    if-gt p4, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 451
    :goto_0
    iput-boolean p2, p0, Lo/getSha256$onMessageChannelReady;->onNavigationEvent:Z

    if-nez p2, :cond_3

    const/16 p2, 0x9

    if-gt p4, p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 452
    :cond_4
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onTransact:Z

    return-void
.end method

.method public final onMessageChannelReady([BII)V
    .locals 2

    .line 456
    iget-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onTransact:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    .line 457
    iget v1, p0, Lo/getSha256$onMessageChannelReady;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 459
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 460
    iput-boolean p2, p0, Lo/getSha256$onMessageChannelReady;->onTransact:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 462
    iput v1, p0, Lo/getSha256$onMessageChannelReady;->onMessageChannelReady:I

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onTransact:Z

    .line 424
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onRelationshipValidationResult:Z

    .line 425
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    .line 426
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->asInterface:Z

    .line 427
    iput-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->asBinder:Z

    return-void
.end method

.method public final onPostMessage(JI)V
    .locals 2

    .line 468
    iget-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->asBinder:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 470
    iget-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->onNavigationEvent:Z

    iput-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->newSession:Z

    const/4 p1, 0x0

    .line 471
    iput-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->asBinder:Z

    return-void

    .line 472
    :cond_0
    iget-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_3

    .line 474
    :cond_1
    iget-boolean v0, p0, Lo/getSha256$onMessageChannelReady;->asInterface:Z

    if-eqz v0, :cond_2

    .line 476
    iget-wide v0, p0, Lo/getSha256$onMessageChannelReady;->extraCallback:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 477
    invoke-direct {p0, p3}, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback(I)V

    .line 479
    :cond_2
    iget-wide p1, p0, Lo/getSha256$onMessageChannelReady;->extraCallback:J

    iput-wide p1, p0, Lo/getSha256$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:J

    .line 480
    iget-wide p1, p0, Lo/getSha256$onMessageChannelReady;->onPostMessage:J

    iput-wide p1, p0, Lo/getSha256$onMessageChannelReady;->warmup:J

    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->asInterface:Z

    .line 482
    iget-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->onNavigationEvent:Z

    iput-boolean p1, p0, Lo/getSha256$onMessageChannelReady;->newSession:Z

    :cond_3
    return-void
.end method
