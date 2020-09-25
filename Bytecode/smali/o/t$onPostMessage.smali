.class public final Lo/t$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:J

.field public extraCallback:Ljava/lang/Object;

.field private onMessageChannelReady:J

.field public onNavigationEvent:I

.field public onPostMessage:Ljava/lang/Object;

.field private onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    sget-object v0, Lo/CredUpiInstrumentBankStatus;->onMessageChannelReady:Lo/CredUpiInstrumentBankStatus;

    iput-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)I
    .locals 1

    .line 414
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback()I

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback(II)I
    .locals 1

    .line 428
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady(I)I

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback()J
    .locals 2

    .line 366
    iget-wide v0, p0, Lo/t$onPostMessage;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final extraCallback(I)I
    .locals 1

    .line 472
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, v0, p1

    iget p1, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    return p1
.end method

.method public final extraCallback(J)I
    .locals 3

    .line 461
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-wide v1, p0, Lo/t$onPostMessage;->ICustomTabsCallback:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lo/CredUpiInstrumentBankStatus;->extraCallback(JJ)I

    move-result p1

    return p1
.end method

.method public final extraCallback()J
    .locals 2

    .line 506
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-wide v0, v0, Lo/CredUpiInstrumentBankStatus;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lo/t$onPostMessage;->onMessageChannelReady:J

    return-wide v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lo/t$onPostMessage;
    .locals 9

    .line 319
    sget-object v8, Lo/CredUpiInstrumentBankStatus;->onMessageChannelReady:Lo/CredUpiInstrumentBankStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lo/t$onPostMessage;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;IJJLo/CredUpiInstrumentBankStatus;)Lo/t$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(I)Z
    .locals 1

    .line 438
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(J)I
    .locals 1

    .line 450
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    invoke-virtual {v0, p1, p2}, Lo/CredUpiInstrumentBankStatus;->onMessageChannelReady(J)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 375
    iget-wide v0, p0, Lo/t$onPostMessage;->onMessageChannelReady:J

    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent(I)J
    .locals 3

    .line 402
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->ICustomTabsCallback:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;IJJLo/CredUpiInstrumentBankStatus;)Lo/t$onPostMessage;
    .locals 0

    .line 346
    iput-object p1, p0, Lo/t$onPostMessage;->onPostMessage:Ljava/lang/Object;

    .line 347
    iput-object p2, p0, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 348
    iput p3, p0, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 349
    iput-wide p4, p0, Lo/t$onPostMessage;->ICustomTabsCallback:J

    .line 350
    iput-wide p6, p0, Lo/t$onPostMessage;->onMessageChannelReady:J

    .line 351
    iput-object p8, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    return-object p0
.end method

.method public final onNavigationEvent(II)Z
    .locals 2

    .line 483
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, v0, p1

    .line 484
    iget v0, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->ICustomTabsCallback:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 391
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget v0, v0, Lo/CredUpiInstrumentBankStatus;->extraCallback:I

    return v0
.end method

.method public final onPostMessage(II)J
    .locals 2

    .line 497
    iget-object v0, p0, Lo/t$onPostMessage;->onRelationshipValidationResult:Lo/CredUpiInstrumentBankStatus;

    iget-object v0, v0, Lo/CredUpiInstrumentBankStatus;->onPostMessage:[Lo/CredUpiInstrumentBankStatus$onNavigationEvent;

    aget-object p1, v0, p1

    .line 498
    iget v0, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->extraCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lo/CredUpiInstrumentBankStatus$onNavigationEvent;->onNavigationEvent:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method
