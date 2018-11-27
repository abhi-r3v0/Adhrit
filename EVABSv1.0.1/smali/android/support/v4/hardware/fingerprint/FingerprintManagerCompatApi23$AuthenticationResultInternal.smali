.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationResultInternal"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;


# direct methods
.method public constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    return-object v0
.end method
