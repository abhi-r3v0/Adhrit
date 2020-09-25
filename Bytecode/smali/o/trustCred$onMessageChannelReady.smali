.class final Lo/trustCred$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trustCred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:I

.field private final asBinder:Lo/DreamAppGlideModule;

.field public asInterface:I

.field public final extraCallback:Lo/CryptLib;

.field public onMessageChannelReady:Lo/populateHMAC;

.field public onNavigationEvent:Lo/NPCICLJSInterface$1;

.field public final onPostMessage:Lo/NPCICLJSInterface$2;

.field public onRelationshipValidationResult:I

.field private final onTransact:Lo/DreamAppGlideModule;


# direct methods
.method public constructor <init>(Lo/CryptLib;)V
    .locals 1

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    iput-object p1, p0, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    .line 1485
    new-instance p1, Lo/NPCICLJSInterface$2;

    invoke-direct {p1}, Lo/NPCICLJSInterface$2;-><init>()V

    iput-object p1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 1486
    new-instance p1, Lo/DreamAppGlideModule;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/trustCred$onMessageChannelReady;->onTransact:Lo/DreamAppGlideModule;

    .line 1487
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/trustCred$onMessageChannelReady;->asBinder:Lo/DreamAppGlideModule;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/trustCred$onMessageChannelReady;)Lo/NPCICLJSInterface$3;
    .locals 0

    .line 1468
    invoke-direct {p0}, Lo/trustCred$onMessageChannelReady;->onPostMessage()Lo/NPCICLJSInterface$3;

    move-result-object p0

    return-object p0
.end method

.method private ICustomTabsCallback()V
    .locals 3

    .line 1597
    invoke-direct {p0}, Lo/trustCred$onMessageChannelReady;->onPostMessage()Lo/NPCICLJSInterface$3;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1602
    :cond_0
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v1, v1, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    .line 1603
    iget v2, v0, Lo/NPCICLJSInterface$3;->onNavigationEvent:I

    if-eqz v2, :cond_1

    .line 1604
    iget v0, v0, Lo/NPCICLJSInterface$3;->onNavigationEvent:I

    invoke-virtual {v1, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1606
    :cond_1
    iget-object v0, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget v2, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Lo/NPCICLJSInterface$2;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1607
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    :cond_2
    return-void
.end method

.method private onPostMessage()Lo/NPCICLJSInterface$3;
    .locals 2

    .line 1612
    iget-object v0, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v0, v0, Lo/NPCICLJSInterface$2;->onMessageChannelReady:Lo/populateHMAC;

    iget v0, v0, Lo/populateHMAC;->ICustomTabsCallback:I

    .line 1613
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v1, v1, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub$Proxy:Lo/NPCICLJSInterface$3;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v0, v0, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub$Proxy:Lo/NPCICLJSInterface$3;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    .line 1616
    invoke-virtual {v1, v0}, Lo/NPCICLJSInterface$1;->onNavigationEvent(I)Lo/NPCICLJSInterface$3;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1617
    iget-boolean v1, v0, Lo/NPCICLJSInterface$3;->extraCallback:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/trustCred$onMessageChannelReady;)V
    .locals 0

    .line 1468
    invoke-direct {p0}, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/generateLink;)V
    .locals 3

    .line 1498
    iget-object v0, p0, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v1, v1, Lo/NPCICLJSInterface$2;->onMessageChannelReady:Lo/populateHMAC;

    iget v1, v1, Lo/populateHMAC;->ICustomTabsCallback:I

    .line 1499
    invoke-virtual {v0, v1}, Lo/NPCICLJSInterface$1;->onNavigationEvent(I)Lo/NPCICLJSInterface$3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, v0, Lo/NPCICLJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1501
    :goto_0
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    iget-object v2, p0, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    iget-object v2, v2, Lo/NPCICLJSInterface$1;->ICustomTabsCallback$Stub:Lo/p$a;

    invoke-virtual {p1, v0}, Lo/generateLink;->onNavigationEvent(Ljava/lang/String;)Lo/generateLink;

    move-result-object p1

    invoke-virtual {v2, p1}, Lo/p$a;->onMessageChannelReady(Lo/generateLink;)Lo/p$a;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 1506
    iget-object v0, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    invoke-virtual {v0}, Lo/NPCICLJSInterface$2;->onPostMessage()V

    const/4 v0, 0x0

    .line 1507
    iput v0, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1508
    iput v0, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 1509
    iput v0, p0, Lo/trustCred$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 1510
    iput v0, p0, Lo/trustCred$onMessageChannelReady;->asInterface:I

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 4

    .line 1540
    iget v0, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1541
    iget v0, p0, Lo/trustCred$onMessageChannelReady;->onRelationshipValidationResult:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/trustCred$onMessageChannelReady;->onRelationshipValidationResult:I

    .line 1542
    iget-object v2, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v2, v2, Lo/NPCICLJSInterface$2;->onTransact:[I

    iget v3, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 1543
    iput v3, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x0

    .line 1544
    iput v0, p0, Lo/trustCred$onMessageChannelReady;->onRelationshipValidationResult:I

    return v0

    :cond_0
    return v1
.end method

.method public final onNavigationEvent()I
    .locals 6

    .line 1556
    invoke-direct {p0}, Lo/trustCred$onMessageChannelReady;->onPostMessage()Lo/NPCICLJSInterface$3;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1563
    :cond_0
    iget v2, v0, Lo/NPCICLJSInterface$3;->onNavigationEvent:I

    if-eqz v2, :cond_1

    .line 1564
    iget-object v2, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v2, v2, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    .line 1565
    iget v0, v0, Lo/NPCICLJSInterface$3;->onNavigationEvent:I

    goto :goto_0

    .line 1568
    :cond_1
    iget-object v0, v0, Lo/NPCICLJSInterface$3;->onPostMessage:[B

    .line 1569
    iget-object v2, p0, Lo/trustCred$onMessageChannelReady;->asBinder:Lo/DreamAppGlideModule;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 1570
    iget-object v2, p0, Lo/trustCred$onMessageChannelReady;->asBinder:Lo/DreamAppGlideModule;

    .line 1571
    array-length v0, v0

    .line 1574
    :goto_0
    iget-object v3, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget v4, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {v3, v4}, Lo/NPCICLJSInterface$2;->onNavigationEvent(I)Z

    move-result v3

    .line 1577
    iget-object v4, p0, Lo/trustCred$onMessageChannelReady;->onTransact:Lo/DreamAppGlideModule;

    iget-object v4, v4, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    if-eqz v3, :cond_2

    const/16 v5, 0x80

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1578
    iget-object v4, p0, Lo/trustCred$onMessageChannelReady;->onTransact:Lo/DreamAppGlideModule;

    invoke-virtual {v4, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1579
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    iget-object v4, p0, Lo/trustCred$onMessageChannelReady;->onTransact:Lo/DreamAppGlideModule;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 1581
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    invoke-interface {v1, v2, v0}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    if-nez v3, :cond_3

    add-int/2addr v0, v5

    return v0

    .line 1587
    :cond_3
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v1, v1, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    .line 1588
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v2

    const/4 v3, -0x2

    .line 1589
    invoke-virtual {v1, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    .line 1591
    iget-object v3, p0, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    invoke-interface {v3, v1, v2}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    return v0
.end method

.method public final onNavigationEvent(Lo/NPCICLJSInterface$1;Lo/populateHMAC;)V
    .locals 1

    .line 1491
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NPCICLJSInterface$1;

    iput-object v0, p0, Lo/trustCred$onMessageChannelReady;->onNavigationEvent:Lo/NPCICLJSInterface$1;

    .line 1492
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/populateHMAC;

    iput-object p2, p0, Lo/trustCred$onMessageChannelReady;->onMessageChannelReady:Lo/populateHMAC;

    .line 1493
    iget-object p2, p0, Lo/trustCred$onMessageChannelReady;->extraCallback:Lo/CryptLib;

    iget-object p1, p1, Lo/NPCICLJSInterface$1;->ICustomTabsCallback$Stub:Lo/p$a;

    invoke-interface {p2, p1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 1494
    invoke-virtual {p0}, Lo/trustCred$onMessageChannelReady;->extraCallback()V

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 4

    .line 1520
    invoke-static {p1, p2}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide p1

    .line 1521
    iget v0, p0, Lo/trustCred$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1522
    :goto_0
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget v1, v1, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    .line 1523
    invoke-virtual {v1, v0}, Lo/NPCICLJSInterface$2;->extraCallback(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 1524
    iget-object v1, p0, Lo/trustCred$onMessageChannelReady;->onPostMessage:Lo/NPCICLJSInterface$2;

    iget-object v1, v1, Lo/NPCICLJSInterface$2;->newSession:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1525
    iput v0, p0, Lo/trustCred$onMessageChannelReady;->asInterface:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
