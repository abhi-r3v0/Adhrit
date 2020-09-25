.class public final Lo/UpiAccountResponse;
.super Lo/UpiBalanceResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpiAccountResponse$onMessageChannelReady;,
        Lo/UpiAccountResponse$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/PublisherException;

.field private ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/UpiAccountResponse$onPostMessage;

.field private extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Lo/DreamAppGlideModule;

.field private final onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

.field private onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lo/UpiBalanceResponse;-><init>()V

    .line 156
    new-instance p2, Lo/DreamAppGlideModule;

    invoke-direct {p2}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p2, p0, Lo/UpiAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    .line 157
    new-instance p2, Lo/PublisherException;

    invoke-direct {p2}, Lo/PublisherException;-><init>()V

    iput-object p2, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 158
    :cond_0
    iput p1, p0, Lo/UpiAccountResponse;->onMessageChannelReady:I

    const/16 p1, 0x8

    new-array p2, p1, [Lo/UpiAccountResponse$onMessageChannelReady;

    .line 160
    iput-object p2, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 162
    iget-object v1, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    new-instance v2, Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-direct {v2}, Lo/UpiAccountResponse$onMessageChannelReady;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object p1, p1, p2

    iput-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    .line 166
    invoke-direct {p0}, Lo/UpiAccountResponse;->mayLaunchUrl()V

    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 505
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 507
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 512
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 513
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p1

    .line 514
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_2
    return-void
.end method

.method private ICustomTabsCallback$Stub(I)V
    .locals 14

    .line 712
    iget-object v0, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object v1, v0, p1

    .line 716
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 717
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    .line 718
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result v3

    .line 719
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    .line 720
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p1

    .line 722
    iget-object v6, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v6}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    .line 723
    iget-object v7, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v7

    .line 725
    iget-object v8, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    .line 727
    iget-object v9, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v11

    .line 728
    iget-object v9, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v9, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v9

    .line 730
    iget-object v10, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v10, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 731
    iget-object v10, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v10

    .line 733
    iget-object v12, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v12, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 734
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v12

    .line 735
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v13

    move v5, p1

    .line 737
    invoke-virtual/range {v1 .. v13}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(ZZZIZIIIIIII)V

    return-void
.end method

.method private ICustomTabsCallback$Stub$Proxy()V
    .locals 13

    .line 684
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 685
    iget-object v2, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 686
    iget-object v3, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v3, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 687
    iget-object v4, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 688
    invoke-static {v2, v3, v4, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result v6

    .line 690
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 691
    iget-object v2, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 692
    iget-object v3, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v3, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 693
    iget-object v4, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 694
    invoke-static {v2, v3, v4}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(III)I

    move-result v7

    .line 696
    iget-object v2, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    .line 699
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0}, Lo/PublisherException;->extraCallback()Z

    move-result v8

    .line 700
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v10

    .line 701
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v11

    .line 702
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v12

    .line 705
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 707
    iget-object v5, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual/range {v5 .. v12}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(IIZIIII)V

    return-void
.end method

.method private ICustomTabsService()V
    .locals 3

    .line 672
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 673
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 675
    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 676
    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    .line 678
    iget-object v2, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {v2, v0, v1}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(II)V

    return-void
.end method

.method private asInterface()V
    .locals 10

    .line 261
    iget-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v0, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    iget-object v1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v1, Lo/UpiAccountResponse$onPostMessage;->ICustomTabsCallback:I

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    sub-int/2addr v1, v2

    const-string v3, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v1, Lo/UpiAccountResponse$onPostMessage;->ICustomTabsCallback:I

    shl-int/2addr v1, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v1, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v1, Lo/UpiAccountResponse$onPostMessage;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "); ignoring packet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget-object v1, v1, Lo/UpiAccountResponse$onPostMessage;->onMessageChannelReady:[B

    iget-object v4, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v4, v4, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    invoke-virtual {v0, v1, v4}, Lo/PublisherException;->ICustomTabsCallback([BI)V

    .line 270
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 271
    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    .line 274
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 275
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 277
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid extended service number: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "serviceNumber is non-zero ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 289
    :cond_3
    iget v1, p0, Lo/UpiAccountResponse;->onMessageChannelReady:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v1}, Lo/PublisherException;->onNavigationEvent()I

    move-result v1

    if-lez v1, :cond_e

    .line 299
    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v1, v5, :cond_9

    if-gt v1, v9, :cond_5

    .line 302
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->extraCallback(I)V

    goto :goto_0

    :cond_5
    if-gt v1, v8, :cond_6

    .line 305
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->onPostMessage(I)V

    goto :goto_1

    :cond_6
    if-gt v1, v7, :cond_7

    .line 308
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->onMessageChannelReady(I)V

    goto :goto_1

    :cond_7
    if-gt v1, v6, :cond_8

    .line 311
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->onRelationshipValidationResult(I)V

    goto :goto_1

    .line 314
    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Invalid base command: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_9
    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v1, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    if-gt v1, v9, :cond_a

    .line 320
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->onNavigationEvent(I)V

    goto :goto_0

    :cond_a
    if-gt v1, v8, :cond_b

    .line 322
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->onTransact(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    if-gt v1, v7, :cond_c

    .line 325
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->ICustomTabsCallback(I)V

    goto :goto_0

    :cond_c
    if-gt v1, v6, :cond_d

    .line 327
    invoke-direct {p0, v1}, Lo/UpiAccountResponse;->asInterface(I)V

    goto :goto_1

    .line 330
    :cond_d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Invalid extended command: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 336
    invoke-direct {p0}, Lo/UpiAccountResponse;->warmup()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/UpiAccountResponse;->onRelationshipValidationResult:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private asInterface(I)V
    .locals 1

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 619
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 621
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid G3 character: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void
.end method

.method private extraCallback(I)V
    .locals 3

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    .line 362
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 365
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    .line 368
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid C0 command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 352
    :pswitch_2
    invoke-direct {p0}, Lo/UpiAccountResponse;->mayLaunchUrl()V

    return-void

    .line 349
    :cond_2
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onRelationshipValidationResult()V

    return-void

    .line 346
    :cond_3
    invoke-direct {p0}, Lo/UpiAccountResponse;->warmup()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/UpiAccountResponse;->onRelationshipValidationResult:Ljava/util/List;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getInterfaceDescriptor()V
    .locals 10

    .line 630
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 631
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 632
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    .line 634
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    .line 635
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0}, Lo/PublisherException;->extraCallback()Z

    move-result v7

    .line 636
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    .line 637
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v9

    .line 639
    iget-object v2, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual/range {v2 .. v9}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIIZZII)V

    return-void
.end method

.method private mayLaunchUrl()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 754
    iget-object v1, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private newSession()V
    .locals 6

    .line 646
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 647
    iget-object v2, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 648
    iget-object v3, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v3, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 649
    iget-object v4, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 650
    invoke-static {v2, v3, v4, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result v0

    .line 653
    iget-object v2, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 654
    iget-object v3, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v3, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 655
    iget-object v4, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 656
    iget-object v5, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v5, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    .line 657
    invoke-static {v3, v4, v5, v2}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback(IIII)I

    move-result v2

    .line 660
    iget-object v3, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v3, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 661
    iget-object v3, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v3, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 662
    iget-object v4, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 663
    iget-object v5, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v5, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    .line 664
    invoke-static {v3, v4, v1}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(III)I

    move-result v1

    .line 666
    iget-object v3, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {v3, v0, v2, v1}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(III)V

    return-void
.end method

.method private onMessageChannelReady(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 485
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid C1 command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 477
    invoke-direct {p0, p1}, Lo/UpiAccountResponse;->ICustomTabsCallback$Stub(I)V

    .line 479
    iget v0, p0, Lo/UpiAccountResponse;->onTransact:I

    if-eq v0, p1, :cond_e

    .line 480
    iput p1, p0, Lo/UpiAccountResponse;->onTransact:I

    .line 481
    iget-object v0, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object p1, v0, p1

    iput-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    return-void

    .line 461
    :pswitch_2
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 463
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    .line 465
    :cond_0
    invoke-direct {p0}, Lo/UpiAccountResponse;->ICustomTabsCallback$Stub$Proxy()V

    return-void

    .line 453
    :pswitch_3
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 455
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    .line 457
    :cond_1
    invoke-direct {p0}, Lo/UpiAccountResponse;->ICustomTabsService()V

    return-void

    .line 445
    :pswitch_4
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_2

    .line 447
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    .line 449
    :cond_2
    invoke-direct {p0}, Lo/UpiAccountResponse;->newSession()V

    return-void

    .line 437
    :pswitch_5
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_3

    .line 439
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    .line 441
    :cond_3
    invoke-direct {p0}, Lo/UpiAccountResponse;->getInterfaceDescriptor()V

    return-void

    .line 434
    :pswitch_6
    invoke-direct {p0}, Lo/UpiAccountResponse;->mayLaunchUrl()V

    :pswitch_7
    return-void

    .line 428
    :pswitch_8
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :goto_0
    :pswitch_9
    if-gt v2, v1, :cond_5

    .line 421
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 422
    iget-object p1, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onMessageChannelReady()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    :pswitch_a
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_7

    .line 413
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0}, Lo/PublisherException;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 414
    iget-object v0, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 415
    invoke-virtual {v0}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(Z)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    return-void

    :goto_2
    :pswitch_b
    if-gt v2, v1, :cond_9

    .line 406
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 407
    iget-object p1, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(Z)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void

    :pswitch_c
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_b

    .line 399
    iget-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v0}, Lo/PublisherException;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 400
    iget-object v0, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lo/UpiAccountResponse$onMessageChannelReady;->onNavigationEvent(Z)V

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    return-void

    :goto_4
    :pswitch_d
    if-gt v2, v1, :cond_d

    .line 392
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {p1}, Lo/PublisherException;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 393
    iget-object p1, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lo/UpiAccountResponse$onMessageChannelReady;->onPostMessage()V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    return-void

    :pswitch_e
    add-int/lit8 p1, p1, -0x80

    .line 385
    iget v0, p0, Lo/UpiAccountResponse;->onTransact:I

    if-eq v0, p1, :cond_e

    .line 386
    iput p1, p0, Lo/UpiAccountResponse;->onTransact:I

    .line 387
    iget-object v0, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object p1, v0, p1

    iput-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onNavigationEvent(I)V
    .locals 1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 494
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_0
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    .line 496
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_1
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2

    .line 498
    iget-object p1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_2
    return-void
.end method

.method private onPostMessage(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 520
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void
.end method

.method private onRelationshipValidationResult()V
    .locals 1

    .line 251
    iget-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lo/UpiAccountResponse;->asInterface()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    return-void
.end method

.method private onRelationshipValidationResult(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void
.end method

.method private onTransact(I)V
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 611
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid G2 character: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 608
    :pswitch_0
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 605
    :pswitch_1
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 602
    :pswitch_2
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 599
    :pswitch_3
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 596
    :pswitch_4
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 593
    :pswitch_5
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 590
    :pswitch_6
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 587
    :pswitch_7
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 584
    :pswitch_8
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 581
    :pswitch_9
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 563
    :pswitch_a
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 560
    :pswitch_b
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 557
    :pswitch_c
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 554
    :pswitch_d
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 551
    :pswitch_e
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 548
    :pswitch_f
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 575
    :cond_0
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 572
    :cond_1
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 569
    :cond_2
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 566
    :cond_3
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 578
    :cond_4
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 545
    :cond_5
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 542
    :cond_6
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 539
    :cond_7
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 536
    :cond_8
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    .line 533
    :cond_9
    iget-object p1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    invoke-virtual {p1, v0}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback(C)V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private warmup()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 744
    iget-object v2, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/UpiAccountResponse$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/UpiAccountResponse$onMessageChannelReady;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    iget-object v2, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/UpiAccountResponse$onMessageChannelReady;->asBinder()Lo/UpiAppsInstrument;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 749
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 176
    invoke-super {p0}, Lo/UpiBalanceResponse;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lo/UpiAccountResponse;->onRelationshipValidationResult:Ljava/util/List;

    .line 178
    iput-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    const/4 v1, 0x0

    .line 179
    iput v1, p0, Lo/UpiAccountResponse;->onTransact:I

    .line 180
    iget-object v2, p0, Lo/UpiAccountResponse;->onPostMessage:[Lo/UpiAccountResponse$onMessageChannelReady;

    aget-object v1, v2, v1

    iput-object v1, p0, Lo/UpiAccountResponse;->extraCallback:Lo/UpiAccountResponse$onMessageChannelReady;

    .line 181
    invoke-direct {p0}, Lo/UpiAccountResponse;->mayLaunchUrl()V

    .line 182
    iput-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lo/UpiBalanceResponse;->ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;)V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/TransactionDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Lo/UpiBalanceResponse;->ICustomTabsCallback$Stub()Lo/TransactionDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final asBinder()Lo/Status;
    .locals 2

    .line 192
    iget-object v0, p0, Lo/UpiAccountResponse;->onRelationshipValidationResult:Ljava/util/List;

    iput-object v0, p0, Lo/UpiAccountResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 193
    new-instance v1, Lo/UpiBankLimit;

    invoke-direct {v1, v0}, Lo/UpiBankLimit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final bridge synthetic extraCallback(J)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lo/UpiBalanceResponse;->extraCallback(J)V

    return-void
.end method

.method protected final extraCallback()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lo/UpiAccountResponse;->onRelationshipValidationResult:Ljava/util/List;

    iget-object v1, p0, Lo/UpiAccountResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onMessageChannelReady(Lo/TransactionDetailsJsonAdapter;)V
    .locals 7

    .line 200
    iget-object v0, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 201
    iget-object v1, p0, Lo/UpiAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 202
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/UpiAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_7

    .line 203
    iget-object p1, p0, Lo/UpiAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 207
    :goto_1
    iget-object v2, p0, Lo/UpiAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    int-to-byte v2, v2

    .line 208
    iget-object v5, p0, Lo/UpiAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-ne v1, v0, :cond_0

    :cond_2
    if-eqz p1, :cond_0

    if-ne v1, v0, :cond_4

    .line 221
    invoke-direct {p0}, Lo/UpiAccountResponse;->onRelationshipValidationResult()V

    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v2, 0x3f

    if-nez v0, :cond_3

    const/16 v0, 0x40

    .line 229
    :cond_3
    new-instance v1, Lo/UpiAccountResponse$onPostMessage;

    invoke-direct {v1, p1, v0}, Lo/UpiAccountResponse$onPostMessage;-><init>(II)V

    iput-object v1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    .line 230
    iget-object p1, v1, Lo/UpiAccountResponse$onPostMessage;->onMessageChannelReady:[B

    iget-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    aput-byte v5, p1, v1

    goto :goto_2

    :cond_4
    if-ne v1, v6, :cond_5

    const/4 v3, 0x1

    .line 233
    :cond_5
    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 235
    iget-object p1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    if-nez p1, :cond_6

    const-string p1, "Cea708Decoder"

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 236
    invoke-static {p1, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_6
    iget-object p1, p1, Lo/UpiAccountResponse$onPostMessage;->onMessageChannelReady:[B

    iget-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    aput-byte v2, p1, v1

    .line 241
    iget-object p1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget-object p1, p1, Lo/UpiAccountResponse$onPostMessage;->onMessageChannelReady:[B

    iget-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v1, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    aput-byte v5, p1, v1

    .line 244
    :goto_2
    iget-object p1, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget p1, p1, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    iget-object v0, p0, Lo/UpiAccountResponse;->asBinder:Lo/UpiAccountResponse$onPostMessage;

    iget v0, v0, Lo/UpiAccountResponse$onPostMessage;->ICustomTabsCallback:I

    shl-int/2addr v0, v4

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 245
    invoke-direct {p0}, Lo/UpiAccountResponse;->onRelationshipValidationResult()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final bridge synthetic onPostMessage()V
    .locals 0

    .line 46
    invoke-super {p0}, Lo/UpiBalanceResponse;->onPostMessage()V

    return-void
.end method

.method public final bridge synthetic onTransact()Lo/TransactionDetailsJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Lo/UpiBalanceResponse;->onTransact()Lo/TransactionDetailsJsonAdapter;

    move-result-object v0

    return-object v0
.end method
