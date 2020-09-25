.class public Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BanksDetail"
.end annotation


# instance fields
.field public bgAssetId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bg_asset_id"
    .end annotation
.end field

.field public bgColor:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bg_color"
    .end annotation
.end field

.field public bgPattern:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bg_pattern"
    .end annotation
.end field

.field public card_logo_url:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public logo_url:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public priority:I

.field final synthetic this$0:Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;


# direct methods
.method public constructor <init>(Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->this$0:Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
