.class Lo/ViesPayPayloadJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;,
        Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;,
        Lo/ViesPayPayloadJsonAdapter$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/util/SparseBooleanArray;

.field private final extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/util/SparseBooleanArray;

.field private onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

.field private onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;


# direct methods
.method public constructor <init>(Lo/getBrandDomain;Ljava/io/File;[BZZ)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 151
    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    .line 155
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 156
    new-instance v1, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;

    invoke-direct {v1, p1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;-><init>(Lo/getBrandDomain;)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p2, :cond_3

    .line 158
    new-instance v0, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;

    new-instance p1, Ljava/io/File;

    const-string v2, "cached_content_index.exi"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, p4}, Lo/ViesPayPayloadJsonAdapter$onMessageChannelReady;-><init>(Ljava/io/File;[BZ)V

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    if-eqz p5, :cond_4

    goto :goto_3

    .line 169
    :cond_4
    iput-object v1, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    .line 170
    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    return-void

    .line 166
    :cond_5
    :goto_3
    iput-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    .line 167
    iput-object v1, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Ljava/io/DataInputStream;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lo/ViesPayPayloadJsonAdapter;->onPostMessage(Ljava/io/DataInputStream;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method private ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;
    .locals 3

    .line 310
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    invoke-static {v0}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent(Landroid/util/SparseArray;)I

    move-result v0

    .line 311
    new-instance v1, Lo/PrefetchPayloadJsonAdapter;

    invoke-direct {v1, v0, p1}, Lo/PrefetchPayloadJsonAdapter;-><init>(ILjava/lang/String;)V

    .line 312
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 315
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    invoke-interface {p1, v1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onNavigationEvent(Lo/PrefetchPayloadJsonAdapter;)V

    return-object v1
.end method

.method static synthetic extraCallback(Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady(Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private static onMessageChannelReady(Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage()Ljava/util/Set;

    move-result-object p0

    .line 395
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 396
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 397
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 399
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 400
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static onNavigationEvent(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 340
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_0
    if-gez v2, :cond_2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method private static onNavigationEvent()Ljavax/crypto/Cipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 322
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const-string v1, "AES/CBC/PKCS5PADDING"

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    :try_start_0
    const-string v0, "BC"

    .line 324
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 329
    :catchall_0
    :cond_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic onPostMessage()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method private static onPostMessage(Ljava/io/DataInputStream;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 364
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_1

    const/high16 v6, 0xa00000

    .line 373
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 374
    sget-object v8, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    const/4 v9, 0x0

    :goto_1
    if-eq v9, v5, :cond_0

    add-int v10, v9, v7

    .line 376
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 377
    invoke-virtual {p0, v8, v9, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    sub-int v7, v5, v10

    .line 379
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v9, v10

    goto :goto_1

    .line 381
    :cond_0
    invoke-virtual {v1, v4, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid value size: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_2
    new-instance p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    invoke-direct {p0, v1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static final onPostMessage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cached_content_index.exi"

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public ICustomTabsCallback(I)Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public ICustomTabsCallback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onNavigationEvent(Ljava/util/HashMap;)V

    .line 207
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    iget-object v3, p0, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 212
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public ICustomTabsCallback(Ljava/lang/String;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PrefetchPayloadJsonAdapter;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget p1, v0, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    .line 258
    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 259
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    invoke-interface {v2, v0, v1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onMessageChannelReady(Lo/PrefetchPayloadJsonAdapter;Z)V

    if-eqz v1, :cond_0

    .line 262
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 263
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method

.method public extraCallback()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;
    .locals 1

    .line 228
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PrefetchPayloadJsonAdapter;

    return-object p1
.end method

.method public extraCallback(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    invoke-interface {v0, p1, p2}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onPostMessage(J)V

    .line 182
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1, p2}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onPostMessage(J)V

    .line 185
    :cond_0
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    invoke-interface {p1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    invoke-interface {p1, p2, v0}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->ICustomTabsCallback(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 188
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onPostMessage(Ljava/util/HashMap;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->extraCallback:Landroid/util/SparseArray;

    invoke-interface {p1, p2, v0}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->ICustomTabsCallback(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 193
    :goto_0
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    if-eqz p1, :cond_2

    .line 194
    invoke-interface {p1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onPostMessage()V

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    :cond_2
    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;)I
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    iget p1, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    return p1
.end method

.method public onMessageChannelReady()V
    .locals 4

    .line 275
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 277
    aget-object v3, v1, v2

    .line 278
    invoke-virtual {p0, v3}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNavigationEvent(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;
    .locals 1

    .line 222
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PrefetchPayloadJsonAdapter;

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/String;Lo/VisaPayloadWrapper;)V
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    .line 298
    invoke-virtual {p1, p2}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent(Lo/VisaPayloadWrapper;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 299
    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter;->onPostMessage:Lo/ViesPayPayloadJsonAdapter$extraCallback;

    invoke-interface {p2, p1}, Lo/ViesPayPayloadJsonAdapter$extraCallback;->onNavigationEvent(Lo/PrefetchPayloadJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public onRelationshipValidationResult(Ljava/lang/String;)Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;
    .locals 0

    .line 305
    invoke-virtual {p0, p1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Lo/PrefetchPayloadJsonAdapter;->onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    return-object p1
.end method
