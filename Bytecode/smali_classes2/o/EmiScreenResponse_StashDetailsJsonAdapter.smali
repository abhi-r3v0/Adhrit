.class public final Lo/EmiScreenResponse_StashDetailsJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getNo_of_breaks_in_amount;


# instance fields
.field private final onNavigationEvent:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lo/EmiScreenResponse_StashDetailsJsonAdapter;->onNavigationEvent:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public final onPostMessage([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    invoke-static {v1}, Lo/LoanManagementResponse;->onPostMessage(I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lo/LineManagementResponse;->extraCallback:Lo/LineManagementResponse;

    const-string v4, "AES/GCM/NoPadding"

    invoke-virtual {v1, v4}, Lo/LineManagementResponse;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v2, 0x1

    iget-object v5, p0, Lo/EmiScreenResponse_StashDetailsJsonAdapter;->onNavigationEvent:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-nez p2, :cond_0

    new-array p2, v3, [B

    :cond_0
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    const/4 v4, 0x0

    array-length v5, p1

    const/16 v7, 0xc

    move-object v2, v1

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    return-object v0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
