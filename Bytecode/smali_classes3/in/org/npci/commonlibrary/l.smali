.class public Lin/org/npci/commonlibrary/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "signer.crt"

    invoke-static {v0}, Lin/org/npci/commonlibrary/h;->a(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    sput-object v0, Lin/org/npci/commonlibrary/l;->a:Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a()Ljava/security/PublicKey;
    .locals 1

    sget-object v0, Lin/org/npci/commonlibrary/l;->a:Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
