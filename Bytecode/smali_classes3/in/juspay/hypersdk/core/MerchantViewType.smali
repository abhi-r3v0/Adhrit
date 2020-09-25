.class public final enum Lin/juspay/hypersdk/core/MerchantViewType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/juspay/hypersdk/core/MerchantViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/juspay/hypersdk/core/MerchantViewType;

.field public static final enum ORDER_SUMMARY:Lin/juspay/hypersdk/core/MerchantViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lin/juspay/hypersdk/core/MerchantViewType;

    const/4 v1, 0x0

    const-string v2, "ORDER_SUMMARY"

    invoke-direct {v0, v2, v1}, Lin/juspay/hypersdk/core/MerchantViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/hypersdk/core/MerchantViewType;->ORDER_SUMMARY:Lin/juspay/hypersdk/core/MerchantViewType;

    const/4 v2, 0x1

    new-array v2, v2, [Lin/juspay/hypersdk/core/MerchantViewType;

    aput-object v0, v2, v1

    sput-object v2, Lin/juspay/hypersdk/core/MerchantViewType;->$VALUES:[Lin/juspay/hypersdk/core/MerchantViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/juspay/hypersdk/core/MerchantViewType;
    .locals 1

    const-class v0, Lin/juspay/hypersdk/core/MerchantViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/juspay/hypersdk/core/MerchantViewType;

    return-object p0
.end method

.method public static values()[Lin/juspay/hypersdk/core/MerchantViewType;
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/core/MerchantViewType;->$VALUES:[Lin/juspay/hypersdk/core/MerchantViewType;

    invoke-virtual {v0}, [Lin/juspay/hypersdk/core/MerchantViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/juspay/hypersdk/core/MerchantViewType;

    return-object v0
.end method
