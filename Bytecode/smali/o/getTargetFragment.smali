.class public final Lo/getTargetFragment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u001e\u0010\u0008\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\n\u0012\u0004\u0012\u00020\u00040\tJ\u001c\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/AESAlgo;",
        "",
        "()V",
        "encrypt",
        "",
        "strToEncrypt",
        "",
        "salt",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/Pair;",
        "getCipher",
        "Ljavax/crypto/Cipher;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/getTargetFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/getTargetFragment;

    invoke-direct {v0}, Lo/getTargetFragment;-><init>()V

    sput-object v0, Lo/getTargetFragment;->onPostMessage:Lo/getTargetFragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/addWrite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "strToEncrypt"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "salt"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-static {p1}, Lo/getTargetFragment;->extraCallback(Ljava/lang/String;)Lo/addWrite;

    move-result-object p1

    .line 1027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 17
    check-cast v0, Ljavax/crypto/Cipher;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "StandardCharsets.UTF_8"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 1028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 17
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, p0, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 20
    :catch_0
    new-instance p0, Lo/addWrite;

    const-string p1, ""

    invoke-direct {p0, p1, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Lo/addWrite;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/addWrite<",
            "Ljavax/crypto/Cipher;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "(this as java.lang.String).toCharArray()"

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/16 v20, 0x0

    .line 33
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    new-array v6, v3, [B

    aput-byte v20, v6, v20

    aput-byte v20, v6, v4

    aput-byte v20, v6, v18

    aput-byte v20, v6, v17

    aput-byte v20, v6, v16

    aput-byte v20, v6, v15

    aput-byte v20, v6, v14

    aput-byte v20, v6, v13

    aput-byte v20, v6, v12

    aput-byte v20, v6, v11

    aput-byte v20, v6, v10

    aput-byte v20, v6, v9

    aput-byte v20, v6, v8

    aput-byte v20, v6, v7

    const/16 v22, 0xe

    aput-byte v20, v6, v22

    const/16 v21, 0xf

    aput-byte v20, v6, v21

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v6, "PBKDF2WithHmacSHA256"

    .line 34
    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 35
    sget-object v23, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v7, Lo/isInLayout;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/isDetached;

    sget-object v24, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v19, 0x43

    aget-object v8, v24, v19

    invoke-virtual {v7, v8}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v7, :cond_0

    .line 35
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lkotlin/TypeCastException;

    invoke-direct {v5, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v9, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    const/high16 v10, 0x10000

    const/16 v11, 0x100

    invoke-direct {v9, v7, v8, v10, v11}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    check-cast v9, Ljava/security/spec/KeySpec;

    .line 36
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 37
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, "tmp"

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    const-string v8, "AES"

    invoke-direct {v7, v6, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "AES/CBC/PKCS5PADDING"

    .line 38
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 39
    check-cast v7, Ljava/security/Key;

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v6, v4, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 40
    new-instance v5, Lo/addWrite;

    const-string v7, "SHA256"

    invoke-direct {v5, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 35
    :cond_2
    new-instance v5, Lkotlin/TypeCastException;

    invoke-direct {v5, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :try_start_1
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    new-array v3, v3, [B

    aput-byte v20, v3, v20

    aput-byte v20, v3, v4

    aput-byte v20, v3, v18

    aput-byte v20, v3, v17

    aput-byte v20, v3, v16

    aput-byte v20, v3, v15

    aput-byte v20, v3, v14

    aput-byte v20, v3, v13

    aput-byte v20, v3, v12

    const/16 v6, 0x9

    aput-byte v20, v3, v6

    const/16 v6, 0xa

    aput-byte v20, v3, v6

    const/16 v6, 0xb

    aput-byte v20, v3, v6

    const/16 v6, 0xc

    aput-byte v20, v3, v6

    const/16 v6, 0xd

    aput-byte v20, v3, v6

    const/16 v6, 0xe

    aput-byte v20, v3, v6

    const/16 v6, 0xf

    aput-byte v20, v3, v6

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "PBKDF2WithHmacSHA1"

    .line 47
    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 48
    sget-object v6, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v6, Lo/isInLayout;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/isDetached;

    sget-object v7, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v8, 0x43

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    if-eqz v6, :cond_3

    .line 48
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v6, 0x0

    :goto_1
    sget-object v1, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/high16 v2, 0x10000

    const/16 v7, 0x100

    invoke-direct {v1, v6, v0, v2, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    check-cast v1, Ljava/security/spec/KeySpec;

    .line 49
    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 50
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "tmp"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS5PADDING"

    .line 51
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 52
    check-cast v1, Ljava/security/Key;

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 53
    new-instance v1, Lo/addWrite;

    const-string v2, "SHA1"

    invoke-direct {v1, v0, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 48
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :catch_1
    new-instance v0, Lo/addWrite;

    const-string v1, ""

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
