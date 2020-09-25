.class final Lo/serializeSessionDevice$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeSessionDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/toException;

.field final ICustomTabsCallback$Stub:Lo/getRef;

.field final asBinder:Lo/getChildren;

.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:I

.field final onPostMessage:Lo/getRef;

.field final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/removeValue;)V
    .locals 1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3075
    iget-object v0, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 4066
    iget-object v0, v0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    .line 568
    invoke-static {p1}, Lo/removeEventRegistration;->onNavigationEvent(Lo/removeValue;)Lo/getRef;

    move-result-object v0

    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    .line 4075
    iget-object v0, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 5070
    iget-object v0, v0, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 569
    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 5083
    iget-object v0, p1, Lo/removeValue;->onMessageChannelReady:Lo/toException;

    .line 570
    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback:Lo/toException;

    .line 5088
    iget v0, p1, Lo/removeValue;->ICustomTabsCallback:I

    .line 571
    iput v0, p0, Lo/serializeSessionDevice$extraCallback;->onNavigationEvent:I

    .line 5101
    iget-object v0, p1, Lo/removeValue;->onNavigationEvent:Ljava/lang/String;

    .line 572
    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 5126
    iget-object v0, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 573
    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    .line 6109
    iget-object p1, p1, Lo/removeValue;->onPostMessage:Lo/getChildren;

    .line 574
    iput-object p1, p0, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;

    return-void
.end method

.method public constructor <init>(Lo/toLog;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    :try_start_0
    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    .line 530
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 531
    new-instance v1, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 1131
    invoke-static {v0}, Lo/serializeSessionDevice;->onMessageChannelReady(Lo/fullLimitUpdateChild;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 534
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1312
    :cond_0
    new-instance v2, Lo/getRef;

    invoke-direct {v2, v1, v3}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 536
    iput-object v2, p0, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    .line 538
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/fromValue$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/fromValue$extraCallback;

    move-result-object v1

    .line 539
    iget-object v2, v1, Lo/fromValue$extraCallback;->onMessageChannelReady:Lo/toException;

    iput-object v2, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback:Lo/toException;

    .line 540
    iget v2, v1, Lo/fromValue$extraCallback;->onPostMessage:I

    iput v2, p0, Lo/serializeSessionDevice$extraCallback;->onNavigationEvent:I

    .line 541
    iget-object v1, v1, Lo/fromValue$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object v1, p0, Lo/serializeSessionDevice$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 542
    new-instance v1, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 2131
    invoke-static {v0}, Lo/serializeSessionDevice;->onMessageChannelReady(Lo/fullLimitUpdateChild;)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 545
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2312
    :cond_1
    new-instance v2, Lo/getRef;

    invoke-direct {v2, v1, v3}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 547
    iput-object v2, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    .line 2615
    iget-object v1, p0, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 550
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 554
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v0}, Lo/serializeSessionDevice$extraCallback;->extraCallback(Lo/fullLimitUpdateChild;)Ljava/util/List;

    move-result-object v2

    .line 556
    invoke-static {v0}, Lo/serializeSessionDevice$extraCallback;->extraCallback(Lo/fullLimitUpdateChild;)Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 3072
    new-instance v3, Lo/getChildren;

    invoke-static {v2}, Lo/createForTests;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3073
    invoke-static {v0}, Lo/createForTests;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lo/getChildren;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 557
    iput-object v3, p0, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;

    goto :goto_2

    .line 3071
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_2
    invoke-interface {p1}, Lo/toLog;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lo/toLog;->close()V

    throw v0
.end method

.method private static extraCallback(Lo/fullLimitUpdateChild;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fullLimitUpdateChild;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11131
    invoke-static {p0}, Lo/serializeSessionDevice;->onMessageChannelReady(Lo/fullLimitUpdateChild;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 620
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 623
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 624
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 626
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 627
    new-instance v5, Lo/updatePriority;

    invoke-direct {v5}, Lo/updatePriority;-><init>()V

    .line 628
    invoke-static {v4}, Lo/matches;->extraCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11956
    invoke-virtual {v4, v5}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    .line 12125
    new-instance v4, Lo/updatePriority$5;

    invoke-direct {v4, v5}, Lo/updatePriority$5;-><init>(Lo/updatePriority;)V

    .line 629
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11955
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 633
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extraCallback(Lo/filtersNodes;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/filtersNodes;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    const/16 v0, 0xa

    .line 641
    invoke-interface {p0, v0}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    const/4 v1, 0x0

    .line 642
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 643
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 644
    invoke-static {v3}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object v3

    invoke-virtual {v3}, Lo/matches;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-interface {p0, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 646
    invoke-interface {p0, v0}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 649
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p1, v0}, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady(I)Lo/exceptionStacktrace;

    move-result-object p1

    invoke-static {p1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    .line 580
    iget-object v1, p0, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-interface {p1, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    const/16 v1, 0xa

    .line 581
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 582
    iget-object v2, p0, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {p1, v2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 583
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 584
    iget-object v2, p0, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    .line 7076
    iget-object v2, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 584
    invoke-interface {p1, v2, v3}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    .line 585
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 586
    iget-object v2, p0, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    .line 8076
    iget-object v2, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    const/4 v5, 0x0

    if-ge v3, v2, :cond_4

    .line 587
    iget-object v6, p0, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    shl-int/lit8 v7, v3, 0x1

    if-ltz v7, :cond_1

    .line 8082
    iget-object v8, v6, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_0

    goto :goto_1

    .line 8085
    :cond_0
    iget-object v6, v6, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v7

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v5

    .line 587
    :goto_2
    invoke-interface {p1, v6}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 588
    invoke-interface {p1, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 589
    iget-object v4, p0, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_3

    .line 8091
    iget-object v6, v4, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v7, v6, :cond_2

    goto :goto_3

    .line 8094
    :cond_2
    iget-object v4, v4, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v4, v7

    .line 589
    :cond_3
    :goto_3
    invoke-interface {p1, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 590
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    :cond_4
    new-instance v2, Lo/fromValue$extraCallback;

    iget-object v3, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback:Lo/toException;

    iget v6, p0, Lo/serializeSessionDevice$extraCallback;->onNavigationEvent:I

    iget-object v7, p0, Lo/serializeSessionDevice$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v7}, Lo/fromValue$extraCallback;-><init>(Lo/toException;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 594
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 595
    iget-object v2, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    .line 9076
    iget-object v2, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 595
    invoke-interface {p1, v2, v3}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    .line 596
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 597
    iget-object v2, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    .line 10076
    iget-object v2, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_4
    if-ge v0, v2, :cond_9

    .line 598
    iget-object v3, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    shl-int/lit8 v6, v0, 0x1

    if-ltz v6, :cond_6

    .line 10082
    iget-object v7, v3, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_5

    goto :goto_5

    .line 10085
    :cond_5
    iget-object v3, v3, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v3, v3, v6

    goto :goto_6

    :cond_6
    :goto_5
    move-object v3, v5

    .line 598
    :goto_6
    invoke-interface {p1, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 599
    invoke-interface {p1, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 600
    iget-object v3, p0, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    add-int/lit8 v6, v6, 0x1

    if-ltz v6, :cond_8

    .line 10091
    iget-object v7, v3, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_7

    goto :goto_7

    .line 10094
    :cond_7
    iget-object v3, v3, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v3, v3, v6

    goto :goto_8

    :cond_8
    :goto_7
    move-object v3, v5

    .line 600
    :goto_8
    invoke-interface {p1, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 601
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 10615
    :cond_9
    iget-object v0, p0, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 605
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 606
    iget-object v0, p0, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;

    .line 11078
    iget-object v0, v0, Lo/getChildren;->ICustomTabsCallback:Ljava/lang/String;

    .line 606
    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 607
    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 608
    iget-object v0, p0, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;

    .line 11083
    iget-object v0, v0, Lo/getChildren;->extraCallback:Ljava/util/List;

    .line 608
    invoke-static {p1, v0}, Lo/serializeSessionDevice$extraCallback;->extraCallback(Lo/filtersNodes;Ljava/util/List;)V

    .line 609
    iget-object v0, p0, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;

    .line 11095
    iget-object v0, v0, Lo/getChildren;->onNavigationEvent:Ljava/util/List;

    .line 609
    invoke-static {p1, v0}, Lo/serializeSessionDevice$extraCallback;->extraCallback(Lo/filtersNodes;Ljava/util/List;)V

    .line 611
    :cond_a
    invoke-interface {p1}, Lo/filtersNodes;->close()V

    return-void
.end method
