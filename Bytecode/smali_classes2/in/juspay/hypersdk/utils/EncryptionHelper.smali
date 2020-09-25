.class public Lin/juspay/hypersdk/utils/EncryptionHelper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final algorithm:Ljava/lang/String; = "AES"

.field private static final keyValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lin/juspay/hypersdk/utils/EncryptionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->keyValue:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        0x33t
        -0x44t
        -0x79t
        -0x2ct
        -0x72t
        -0x3bt
        -0x14t
        -0x4ft
        0x16t
        0x22t
        -0x4dt
        -0x30t
        -0x4bt
        0x2dt
        0x5dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B)[B
    .locals 6

    :try_start_0
    invoke-static {}, Lin/juspay/hypersdk/utils/EncryptionHelper;->generateKey()Ljava/security/Key;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "helper"

    const-string v4, "Decryption Error"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static decryptThenGunzip([BLjava/lang/String;)[B
    .locals 6

    :try_start_0
    const-string v0, "v1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->v1Decrypt([B)[B

    move-result-object p0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->gunzipContent([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->decrypt([B)[B

    move-result-object p0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->gunzipContent([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "helper"

    const-string v4, "Exception in decrypting"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encrypt([B)[B
    .locals 3

    invoke-static {}, Lin/juspay/hypersdk/utils/EncryptionHelper;->generateKey()Ljava/security/Key;

    move-result-object v0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static generateKey()Ljava/security/Key;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->keyValue:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getSHA1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "result is "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    move-object v6, p0

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "helper"

    const-string v5, "Exception caught trying to SHA-1 hash"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getSHA256Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "result is "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    move-object v6, p0

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "helper"

    const-string v5, "Exception caught trying to SHA-256 hash"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static gunzipContent([B)[B
    .locals 6

    const/16 v0, 0x400

    new-array v1, v0, [B

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "helper"

    const-string v4, "Error while gunzipping"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static gzipContent([B)[B
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    sget-object p0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Gzipping complete"

    invoke-static {p0, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "helper"

    const-string v4, "Could not gzip"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static gzipThenEncrypt([BLjava/lang/String;)[B
    .locals 6

    :try_start_0
    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->gzipContent([B)[B

    move-result-object p0

    const-string v0, "v1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->v1Encrypt([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->encrypt([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    move-object v5, p0

    sget-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "helper"

    const-string v4, "Exception while GZipping and encrypting"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static md5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 13

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    const-string v5, "0"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "helper"

    const-string v5, "Exception trying to close IO stream for md5sum"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_2
    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "helper"

    const-string v5, "Exception trying to get md5sum from input stream"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v12

    sget-object v7, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v8, "action"

    const-string v9, "system"

    const-string v10, "helper"

    const-string v11, "Exception trying to close IO stream for md5sum"

    invoke-static/range {v7 .. v12}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 p0, 0x0

    return-object p0

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v6

    sget-object v1, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "helper"

    const-string v5, "Exception trying to close IO stream for md5sum"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    throw v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const-string v4, "0"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    move-object v5, p0

    sget-object v0, Lin/juspay/hypersdk/utils/EncryptionHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "action"

    const-string v2, "system"

    const-string v3, "helper"

    const-string v4, "Exception trying to calculate md5sum from given string"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static v1Decrypt([B)[B
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    array-length v3, p0

    const/16 v4, 0x9

    aget-byte v5, p0, v4

    const/4 v6, 0x0

    aput-byte v5, v1, v6

    const/16 v5, 0x13

    aget-byte v5, p0, v5

    const/4 v7, 0x1

    aput-byte v5, v1, v7

    const/16 v5, 0x1d

    aget-byte v5, p0, v5

    const/4 v7, 0x2

    aput-byte v5, v1, v7

    const/16 v5, 0x27

    aget-byte v5, p0, v5

    const/4 v7, 0x3

    aput-byte v5, v1, v7

    const/16 v5, 0x31

    aget-byte v5, p0, v5

    const/4 v7, 0x4

    aput-byte v5, v1, v7

    const/16 v5, 0x3b

    aget-byte v5, p0, v5

    const/4 v7, 0x5

    aput-byte v5, v1, v7

    const/16 v5, 0x45

    aget-byte v5, p0, v5

    const/4 v7, 0x6

    aput-byte v5, v1, v7

    const/16 v5, 0x4f

    aget-byte v5, p0, v5

    const/4 v7, 0x7

    aput-byte v5, v1, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    if-lez v6, :cond_0

    rem-int/lit8 v8, v6, 0xa

    if-ne v8, v4, :cond_0

    if-ge v5, v0, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    aget-byte v8, p0, v6

    rem-int/lit8 v9, v7, 0x8

    aget-byte v9, v1, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static v1Encrypt([B)[B
    .locals 10

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    array-length v0, p0

    add-int/lit8 v3, v0, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    if-ge v6, v3, :cond_1

    if-lez v6, :cond_0

    rem-int/lit8 v8, v6, 0xa

    const/16 v9, 0x9

    if-ne v8, v9, :cond_0

    if-ge v7, v1, :cond_0

    aget-byte v8, v2, v7

    aput-byte v8, v4, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget-byte v8, p0, v5

    rem-int/lit8 v9, v5, 0x8

    aget-byte v9, v2, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method
