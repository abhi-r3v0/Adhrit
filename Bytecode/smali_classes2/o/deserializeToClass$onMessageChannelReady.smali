.class final Lo/deserializeToClass$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deserializeToClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static final ICustomTabsService:Ljava/lang/String;

.field private static final getInterfaceDescriptor:Ljava/lang/String;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:Ljava/lang/String;

.field final asBinder:J

.field final asInterface:Lo/isSetterOverride;

.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:I

.field final onNavigationEvent:Lo/shouldIncludeField;

.field final onPostMessage:Lo/valueChange;

.field final onRelationshipValidationResult:J

.field final onTransact:Lo/shouldIncludeField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    invoke-static {}, Lo/getChildAfterChild;->asBinder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsService:Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    invoke-static {}, Lo/getChildAfterChild;->asBinder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/deserializeToClass$onMessageChannelReady;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/childAddedChange;)V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4086
    iget-object v0, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 5049
    iget-object v0, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 599
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 600
    invoke-static {p1}, Lo/hasAnchoredLimit;->onMessageChannelReady(Lo/childAddedChange;)Lo/shouldIncludeField;

    move-result-object v0

    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 5086
    iget-object v0, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 6053
    iget-object v0, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 601
    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 6093
    iget-object v0, p1, Lo/childAddedChange;->ICustomTabsCallback:Lo/valueChange;

    .line 602
    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->onPostMessage:Lo/valueChange;

    .line 6098
    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    .line 603
    iput v0, p0, Lo/deserializeToClass$onMessageChannelReady;->onMessageChannelReady:I

    .line 6111
    iget-object v0, p1, Lo/childAddedChange;->extraCallback:Ljava/lang/String;

    .line 604
    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 6136
    iget-object v0, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 605
    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 7119
    iget-object v0, p1, Lo/childAddedChange;->onPostMessage:Lo/isSetterOverride;

    .line 606
    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    .line 7265
    iget-wide v0, p1, Lo/childAddedChange;->newSession:J

    .line 607
    iput-wide v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asBinder:J

    .line 7274
    iget-wide v0, p1, Lo/childAddedChange;->getInterfaceDescriptor:J

    .line 608
    iput-wide v0, p0, Lo/deserializeToClass$onMessageChannelReady;->onRelationshipValidationResult:J

    return-void
.end method

.method constructor <init>(Lo/toLog;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    :try_start_0
    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 548
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 549
    new-instance v1, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v1}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 550
    invoke-static {v0}, Lo/deserializeToClass;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 552
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    new-instance v2, Lo/shouldIncludeField;

    invoke-direct {v2, v1}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 554
    iput-object v2, p0, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 556
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/setSearchView$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/setSearchView$onPostMessage;

    move-result-object v1

    .line 557
    iget-object v2, v1, Lo/setSearchView$onPostMessage;->extraCallback:Lo/valueChange;

    iput-object v2, p0, Lo/deserializeToClass$onMessageChannelReady;->onPostMessage:Lo/valueChange;

    .line 558
    iget v2, v1, Lo/setSearchView$onPostMessage;->onMessageChannelReady:I

    iput v2, p0, Lo/deserializeToClass$onMessageChannelReady;->onMessageChannelReady:I

    .line 559
    iget-object v1, v1, Lo/setSearchView$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    iput-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 560
    new-instance v1, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v1}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 561
    invoke-static {v0}, Lo/deserializeToClass;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 563
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 565
    :cond_1
    sget-object v2, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/shouldIncludeField$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    sget-object v3, Lo/deserializeToClass$onMessageChannelReady;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lo/shouldIncludeField$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    sget-object v4, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 568
    sget-object v4, Lo/deserializeToClass$onMessageChannelReady;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    .line 570
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    .line 571
    :goto_2
    iput-wide v6, p0, Lo/deserializeToClass$onMessageChannelReady;->asBinder:J

    if-eqz v3, :cond_3

    .line 573
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 574
    :cond_3
    iput-wide v4, p0, Lo/deserializeToClass$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 2401
    new-instance v2, Lo/shouldIncludeField;

    invoke-direct {v2, v1}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 575
    iput-object v2, p0, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 2658
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 578
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 582
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v1}, Lo/convertLong;->extraCallback(Ljava/lang/String;)Lo/convertLong;

    move-result-object v1

    .line 584
    invoke-static {v0}, Lo/deserializeToClass$onMessageChannelReady;->onPostMessage(Lo/fullLimitUpdateChild;)Ljava/util/List;

    move-result-object v2

    .line 585
    invoke-static {v0}, Lo/deserializeToClass$onMessageChannelReady;->onPostMessage(Lo/fullLimitUpdateChild;)Ljava/util/List;

    move-result-object v3

    .line 586
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v4

    if-nez v4, :cond_4

    .line 587
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/childRemovedChange;->ICustomTabsCallback(Ljava/lang/String;)Lo/childRemovedChange;

    move-result-object v0

    goto :goto_3

    .line 588
    :cond_4
    sget-object v0, Lo/childRemovedChange;->extraCallback:Lo/childRemovedChange;

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 3085
    new-instance v4, Lo/isSetterOverride;

    invoke-static {v2}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3086
    invoke-static {v3}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lo/isSetterOverride;-><init>(Lo/childRemovedChange;Lo/convertLong;Ljava/util/List;Ljava/util/List;)V

    .line 589
    iput-object v4, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    goto :goto_4

    .line 3084
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3083
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_7
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

    :cond_8
    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :goto_4
    invoke-interface {p1}, Lo/toLog;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lo/toLog;->close()V

    throw v0
.end method

.method private static onNavigationEvent(Lo/filtersNodes;Ljava/util/List;)V
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

    .line 683
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v0

    const/16 v1, 0xa

    .line 684
    invoke-interface {v0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    const/4 v0, 0x0

    .line 685
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 686
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 687
    invoke-static {v3}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object v3

    invoke-virtual {v3}, Lo/matches;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-interface {p0, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v3

    .line 689
    invoke-interface {v3, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 692
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onPostMessage(Lo/fullLimitUpdateChild;)Ljava/util/List;
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

    .line 662
    invoke-static {p0}, Lo/deserializeToClass;->ICustomTabsCallback(Lo/fullLimitUpdateChild;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 666
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 667
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 669
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 670
    new-instance v5, Lo/updatePriority;

    invoke-direct {v5}, Lo/updatePriority;-><init>()V

    .line 671
    invoke-static {v4}, Lo/matches;->extraCallback(Ljava/lang/String;)Lo/matches;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 15956
    invoke-virtual {v4, v5}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    .line 16125
    new-instance v4, Lo/updatePriority$5;

    invoke-direct {v4, v5}, Lo/updatePriority$5;-><init>(Lo/updatePriority;)V

    .line 672
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15955
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

    .line 676
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getPrevName$onMessageChannelReady;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 612
    invoke-virtual {p1, v0}, Lo/getPrevName$onMessageChannelReady;->extraCallback(I)Lo/exceptionStacktrace;

    move-result-object p1

    invoke-static {p1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    .line 614
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-interface {p1, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    const/16 v2, 0xa

    .line 615
    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 616
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {p1, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    .line 617
    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 618
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 8077
    iget-object v1, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    .line 618
    invoke-interface {p1, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v1

    .line 619
    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 620
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 9077
    iget-object v1, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    .line 621
    iget-object v5, p0, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 9082
    iget-object v5, v5, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    .line 621
    invoke-interface {p1, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v5

    .line 622
    invoke-interface {v5, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v4

    iget-object v5, p0, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 9087
    iget-object v5, v5, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    .line 623
    invoke-interface {v4, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v4

    .line 624
    invoke-interface {v4, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_0
    new-instance v1, Lo/setSearchView$onPostMessage;

    iget-object v3, p0, Lo/deserializeToClass$onMessageChannelReady;->onPostMessage:Lo/valueChange;

    iget v5, p0, Lo/deserializeToClass$onMessageChannelReady;->onMessageChannelReady:I

    iget-object v6, p0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lo/setSearchView$onPostMessage;-><init>(Lo/valueChange;ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    .line 628
    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 629
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 10077
    iget-object v1, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    .line 629
    invoke-interface {p1, v5, v6}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v1

    .line 630
    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 631
    iget-object v1, p0, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 11077
    iget-object v1, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 632
    iget-object v3, p0, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 11082
    iget-object v3, v3, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v5, v0, 0x1

    aget-object v3, v3, v5

    .line 632
    invoke-interface {p1, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v3

    .line 633
    invoke-interface {v3, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v3

    iget-object v6, p0, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 11087
    iget-object v6, v6, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v6, v5

    .line 634
    invoke-interface {v3, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v3

    .line 635
    invoke-interface {v3, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_1
    sget-object v0, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsService:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v0

    .line 638
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v0

    iget-wide v5, p0, Lo/deserializeToClass$onMessageChannelReady;->asBinder:J

    .line 639
    invoke-interface {v0, v5, v6}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v0

    .line 640
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 641
    sget-object v0, Lo/deserializeToClass$onMessageChannelReady;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v0

    .line 642
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v0

    iget-wide v3, p0, Lo/deserializeToClass$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 643
    invoke-interface {v0, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v0

    .line 644
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 11658
    iget-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    invoke-interface {p1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 648
    iget-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    .line 12099
    iget-object v0, v0, Lo/isSetterOverride;->onPostMessage:Lo/convertLong;

    .line 12469
    iget-object v0, v0, Lo/convertLong;->updateVisuals:Ljava/lang/String;

    .line 648
    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v0

    .line 649
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 650
    iget-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    .line 13104
    iget-object v0, v0, Lo/isSetterOverride;->ICustomTabsCallback:Ljava/util/List;

    .line 650
    invoke-static {p1, v0}, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent(Lo/filtersNodes;Ljava/util/List;)V

    .line 651
    iget-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    .line 13116
    iget-object v0, v0, Lo/isSetterOverride;->extraCallback:Ljava/util/List;

    .line 651
    invoke-static {p1, v0}, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent(Lo/filtersNodes;Ljava/util/List;)V

    .line 652
    iget-object v0, p0, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    .line 14094
    iget-object v0, v0, Lo/isSetterOverride;->onNavigationEvent:Lo/childRemovedChange;

    .line 15065
    iget-object v0, v0, Lo/childRemovedChange;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 652
    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 654
    :cond_2
    invoke-interface {p1}, Lo/filtersNodes;->close()V

    return-void
.end method
