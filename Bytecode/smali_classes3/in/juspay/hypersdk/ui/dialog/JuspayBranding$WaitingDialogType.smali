.class public final enum Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/ui/dialog/JuspayBranding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitingDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

.field public static final enum GENERIC_JUSPAY_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

.field public static final enum V1_CUSTOM_WAITING_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

.field public static final enum V2_MERCHANT_SPECIFIC_DIALOG_END:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

.field public static final enum V2_MERCHANT_SPECIFIC_DIALOG_START:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

.field public static final enum V3_MERCHANT_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    const/4 v1, 0x0

    const-string v2, "V3_MERCHANT_DIALOG"

    invoke-direct {v0, v2, v1}, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V3_MERCHANT_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    new-instance v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    const/4 v2, 0x1

    const-string v3, "V2_MERCHANT_SPECIFIC_DIALOG_START"

    invoke-direct {v0, v3, v2}, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V2_MERCHANT_SPECIFIC_DIALOG_START:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    new-instance v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    const/4 v3, 0x2

    const-string v4, "V2_MERCHANT_SPECIFIC_DIALOG_END"

    invoke-direct {v0, v4, v3}, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V2_MERCHANT_SPECIFIC_DIALOG_END:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    new-instance v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    const/4 v4, 0x3

    const-string v5, "V1_CUSTOM_WAITING_DIALOG"

    invoke-direct {v0, v5, v4}, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V1_CUSTOM_WAITING_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    new-instance v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    const/4 v5, 0x4

    const-string v6, "GENERIC_JUSPAY_DIALOG"

    invoke-direct {v0, v6, v5}, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->GENERIC_JUSPAY_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    const/4 v6, 0x5

    new-array v6, v6, [Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    sget-object v7, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V3_MERCHANT_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    aput-object v7, v6, v1

    sget-object v1, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V2_MERCHANT_SPECIFIC_DIALOG_START:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    aput-object v1, v6, v2

    sget-object v1, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V2_MERCHANT_SPECIFIC_DIALOG_END:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    aput-object v1, v6, v3

    sget-object v1, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->V1_CUSTOM_WAITING_DIALOG:Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->$VALUES:[Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

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

.method public static valueOf(Ljava/lang/String;)Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;
    .locals 1

    const-class v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    return-object p0
.end method

.method public static values()[Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->$VALUES:[Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    invoke-virtual {v0}, [Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/juspay/hypersdk/ui/dialog/JuspayBranding$WaitingDialogType;

    return-object v0
.end method
