.class public final Lin/juspay/hypersdk/data/SdkInfo;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private sdkDebuggable:Z

.field private sdkName:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private usesLocalAssets:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/data/SdkInfo;->sdkName:Ljava/lang/String;

    iput-object p2, p0, Lin/juspay/hypersdk/data/SdkInfo;->sdkVersion:Ljava/lang/String;

    iput-boolean p3, p0, Lin/juspay/hypersdk/data/SdkInfo;->sdkDebuggable:Z

    iput-boolean p4, p0, Lin/juspay/hypersdk/data/SdkInfo;->usesLocalAssets:Z

    return-void
.end method


# virtual methods
.method public final getSdkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/data/SdkInfo;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/data/SdkInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final isSdkDebuggable()Z
    .locals 1

    iget-boolean v0, p0, Lin/juspay/hypersdk/data/SdkInfo;->sdkDebuggable:Z

    return v0
.end method

.method public final usesLocalAssets()Z
    .locals 1

    iget-boolean v0, p0, Lin/juspay/hypersdk/data/SdkInfo;->usesLocalAssets:Z

    return v0
.end method
