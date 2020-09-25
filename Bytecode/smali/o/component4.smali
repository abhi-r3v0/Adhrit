.class Lo/component4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# instance fields
.field private ICustomTabsCallback:Ljavax/crypto/CipherInputStream;

.field private final extraCallback:Lo/ResultJsonAdapter;

.field private final onMessageChannelReady:[B

.field private final onPostMessage:[B


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;[B[B)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/component4;->extraCallback:Lo/ResultJsonAdapter;

    .line 63
    iput-object p2, p0, Lo/component4;->onMessageChannelReady:[B

    .line 64
    iput-object p3, p0, Lo/component4;->onPostMessage:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lo/component4;->onNavigationEvent()Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lo/component4;->onMessageChannelReady:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lo/component4;->onPostMessage:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 85
    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    new-instance v1, Lo/PaymentSlider;

    iget-object v2, p0, Lo/component4;->extraCallback:Lo/ResultJsonAdapter;

    invoke-direct {v1, v2, p1}, Lo/PaymentSlider;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;)V

    .line 91
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lo/component4;->ICustomTabsCallback:Ljavax/crypto/CipherInputStream;

    .line 92
    invoke-virtual {v1}, Lo/PaymentSlider;->extraCallback()V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 87
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 78
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/component4;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/component4;->ICustomTabsCallback:Ljavax/crypto/CipherInputStream;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lo/component4;->ICustomTabsCallback:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lo/component4;->ICustomTabsCallback:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lo/component4;->ICustomTabsCallback:Ljavax/crypto/CipherInputStream;

    .line 121
    iget-object v0, p0, Lo/component4;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method protected onNavigationEvent()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 126
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/component4;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lo/component4;->extraCallback:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
