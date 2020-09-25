.class public Lorg/npci/upi/security/pinactivitycomponent/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lorg/npci/upi/security/pinactivitycomponent/i;

.field private d:Lorg/npci/upi/security/pinactivitycomponent/h;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->e:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->a:Landroid/content/Context;

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-direct {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    new-instance p1, Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-direct {p1}, Lorg/npci/upi/security/pinactivitycomponent/h;-><init>()V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->d:Lorg/npci/upi/security/pinactivitycomponent/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "|"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {v2}, Lorg/npci/upi/security/pinactivitycomponent/i;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Token in CL"

    invoke-static {v3, v2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->d:Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-virtual {v3, v2}, Lorg/npci/upi/security/pinactivitycomponent/h;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->d:Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-virtual {v3, p1, v2}, Lorg/npci/upi/security/pinactivitycomponent/h;->b([B[B)[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CL Hmac Msg"

    invoke-static {p3, p2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->d:Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-virtual {p3, p2}, Lorg/npci/upi/security/pinactivitycomponent/h;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CL Hash"

    invoke-static {p3, p2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_0

    :catch_6
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->d:Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-virtual {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/h;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/g;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/npci/upi/security/pinactivitycomponent/g;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v0

    :goto_0
    :try_start_1
    new-instance v3, Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-direct {v3}, Lorg/npci/upi/security/pinactivitycomponent/h;-><init>()V

    const-string v4, "initial"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "token in Challenge"

    const-string v5, "K0 in Challenge"

    const-string v6, "|"

    if-eqz p1, :cond_1

    :try_start_2
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/i;->c()V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    new-instance v7, Lorg/npci/upi/security/pinactivitycomponent/ar;

    iget-object v8, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-direct {v7, v2, v8, v1}, Lorg/npci/upi/security/pinactivitycomponent/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/npci/upi/security/pinactivitycomponent/i;->b(Lorg/npci/upi/security/pinactivitycomponent/ar;)I

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    new-instance v7, Lorg/npci/upi/security/pinactivitycomponent/ar;

    iget-object v8, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-direct {v7, v2, v8, v1}, Lorg/npci/upi/security/pinactivitycomponent/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/npci/upi/security/pinactivitycomponent/i;->a(Lorg/npci/upi/security/pinactivitycomponent/ar;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lin/org/npci/commonlibrary/l;->a()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/h;->a(Ljava/lang/String;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-static {v4, p1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/i;->a()Ljava/util/List;

    move-result-object p1

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/npci/upi/security/pinactivitycomponent/ar;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/ar;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-static {v4, p2}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/npci/upi/security/pinactivitycomponent/h;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v3, p2, p1}, Lorg/npci/upi/security/pinactivitycomponent/h;->a([B[B)[B

    move-result-object p1

    invoke-static {p1, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/i;->c()V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->c:Lorg/npci/upi/security/pinactivitycomponent/i;

    new-instance p2, Lorg/npci/upi/security/pinactivitycomponent/ar;

    iget-object v3, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->b:Ljava/lang/String;

    invoke-direct {p2, v2, v3, v1}, Lorg/npci/upi/security/pinactivitycomponent/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/i;->a(Lorg/npci/upi/security/pinactivitycomponent/ar;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "hmac"

    invoke-static {v0, p4}, Lorg/npci/upi/security/pinactivitycomponent/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p1, p2, p3}, Lorg/npci/upi/security/pinactivitycomponent/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/g;->d:Lorg/npci/upi/security/pinactivitycomponent/h;

    invoke-virtual {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/h;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
