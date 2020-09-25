.class Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViesPayPayloadJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViesPayPayloadJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljavax/crypto/spec/SecretKeySpec;

.field private final extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

.field private final onMessageChannelReady:Ljava/util/Random;

.field private final onNavigationEvent:Ljavax/crypto/Cipher;

.field private final onPostMessage:Z

.field private onRelationshipValidationResult:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

.field private onTransact:Z


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 4

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 495
    array-length v1, p2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 497
    :try_start_0
    invoke-static {}, Lo/ViesPayPayloadJsonAdapter;->onPostMessage()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 498
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 500
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    xor-int/lit8 p2, p3, 0x1

    .line 503
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    move-object v1, v0

    move-object v2, v1

    .line 505
    :goto_2
    iput-boolean p3, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onPostMessage:Z

    .line 506
    iput-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljavax/crypto/Cipher;

    .line 507
    iput-object v2, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_2

    .line 508
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :cond_2
    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Random;

    .line 509
    new-instance p2, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-direct {p2, p1}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    return-void
.end method

.method private ICustomTabsCallback(ILjava/io/DataInputStream;)Lo/PrefetchPayloadJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 688
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 691
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    .line 692
    new-instance v2, Lo/VisaPayloadWrapper;

    invoke-direct {v2}, Lo/VisaPayloadWrapper;-><init>()V

    .line 693
    invoke-static {v2, p1, p2}, Lo/VisaPayloadWrapper;->onMessageChannelReady(Lo/VisaPayloadWrapper;J)Lo/VisaPayloadWrapper;

    .line 694
    sget-object p1, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    invoke-virtual {p1, v2}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage(Lo/VisaPayloadWrapper;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    goto :goto_0

    .line 696
    :cond_0
    invoke-static {p2}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback(Ljava/io/DataInputStream;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    .line 698
    :goto_0
    new-instance p2, Lo/PrefetchPayloadJsonAdapter;

    invoke-direct {p2, v0, v1, p1}, Lo/PrefetchPayloadJsonAdapter;-><init>(ILjava/lang/String;Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;)V

    return-object p2
.end method

.method private extraCallback(Lo/PrefetchPayloadJsonAdapter;I)I
    .locals 3

    .line 668
    iget v0, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    mul-int/lit8 v0, v0, 0x1f

    .line 669
    iget-object v1, p1, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 671
    invoke-virtual {p1}, Lo/PrefetchPayloadJsonAdapter;->onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    invoke-static {p1}, Lo/CredPaymentUiBuilder$PollingStrategy;->onNavigationEvent(Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;)J

    move-result-wide p1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 674
    invoke-virtual {p1}, Lo/PrefetchPayloadJsonAdapter;->onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method private extraCallback(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {v0}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 570
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {v4}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 571
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 572
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v5, 0x2

    if-le v0, v5, :cond_1

    goto/16 :goto_5

    .line 577
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    .line 579
    iget-object v6, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    .line 612
    invoke-static {v4}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return v2

    :cond_2
    const/16 v6, 0x10

    :try_start_2
    new-array v6, v6, [B

    .line 583
    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 584
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :try_start_3
    iget-object v6, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljavax/crypto/Cipher;

    iget-object v8, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 588
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 591
    :cond_3
    iget-boolean v3, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onPostMessage:Z

    if-eqz v3, :cond_4

    .line 592
    iput-boolean v1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onTransact:Z

    .line 595
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 598
    invoke-direct {p0, v0, v4}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->ICustomTabsCallback(ILjava/io/DataInputStream;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object v7

    .line 599
    iget-object v8, v7, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget v8, v7, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    iget-object v9, v7, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 601
    invoke-direct {p0, v7, v0}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback(Lo/PrefetchPayloadJsonAdapter;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 603
    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 604
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-ne p1, v6, :cond_8

    if-nez p2, :cond_7

    goto :goto_4

    .line 612
    :cond_7
    invoke-static {v4}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return v1

    :cond_8
    :goto_4
    invoke-static {v4}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return v2

    :cond_9
    :goto_5
    invoke-static {v4}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_6

    :catch_2
    move-object v0, v4

    goto :goto_7

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v0, :cond_a

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 614
    :cond_a
    throw p1

    :catch_3
    nop

    :goto_7
    if-eqz v0, :cond_b

    .line 612
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    :cond_b
    return v2
.end method

.method private onMessageChannelReady(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 621
    :try_start_0
    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {v1}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onMessageChannelReady()Ljava/io/OutputStream;

    move-result-object v1

    .line 622
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    if-nez v2, :cond_0

    .line 623
    new-instance v2, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    invoke-direct {v2, v1}, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    goto :goto_0

    .line 625
    :cond_0
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    invoke-virtual {v2, v1}, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/io/OutputStream;)V

    .line 627
    :goto_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    .line 628
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 630
    iget-boolean v3, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onPostMessage:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 631
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 633
    iget-boolean v3, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onPostMessage:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 635
    iget-object v6, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Random;

    invoke-virtual {v6, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 636
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 637
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :try_start_2
    iget-object v3, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljavax/crypto/Cipher;

    iget-object v7, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v4, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 644
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljavax/crypto/CipherOutputStream;

    iget-object v6, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onRelationshipValidationResult:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    iget-object v7, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljavax/crypto/Cipher;

    invoke-direct {v4, v6, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 641
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 647
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 649
    invoke-virtual {p1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/PrefetchPayloadJsonAdapter;

    .line 650
    invoke-direct {p0, v3, v1}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onPostMessage(Lo/PrefetchPayloadJsonAdapter;Ljava/io/DataOutputStream;)V

    .line 651
    invoke-direct {p0, v3, v2}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback(Lo/PrefetchPayloadJsonAdapter;I)I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_4

    .line 653
    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 654
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {p1, v1}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 660
    throw p1
.end method

.method private onPostMessage(Lo/PrefetchPayloadJsonAdapter;Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    iget v0, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 710
    iget-object v0, p1, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Lo/PrefetchPayloadJsonAdapter;->onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    invoke-static {p1, p2}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;Ljava/io/DataOutputStream;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 530
    iget-boolean v0, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onTransact:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 531
    invoke-direct {p0, p1, p2}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p1}, Ljava/util/AbstractMap;->clear()V

    .line 533
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 534
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {p1}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(Lo/PrefetchPayloadJsonAdapter;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 559
    iput-boolean p1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onTransact:Z

    return-void
.end method

.method public onMessageChannelReady()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {v0}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public onNavigationEvent(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    iget-boolean v0, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onTransact:Z

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onPostMessage(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNavigationEvent(Lo/PrefetchPayloadJsonAdapter;)V
    .locals 0

    const/4 p1, 0x1

    .line 554
    iput-boolean p1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onTransact:Z

    return-void
.end method

.method public onPostMessage()V
    .locals 1

    .line 524
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->extraCallback:Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;

    invoke-virtual {v0}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onPostMessage()V

    return-void
.end method

.method public onPostMessage(J)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-direct {p0, p1}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onMessageChannelReady(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;->onTransact:Z

    return-void
.end method
