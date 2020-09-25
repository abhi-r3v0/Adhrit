.class public final Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/ui/CredPaymentUiBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0006\n\u0002\u0008\"\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0013J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0003H\u00d6\u0001R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0012\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0019\"\u0004\u0008\u001c\u0010\u001bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\u0011\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0019\"\u0004\u0008\"\u0010\u001bR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010$\"\u0004\u0008(\u0010&R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001e\"\u0004\u0008*\u0010 R \u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0015\"\u0004\u0008,\u0010\u0017R&\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00100\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u00067"
    }
    d2 = {
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$RemoteConfigs;",
        "Landroid/os/Parcelable;",
        "setUpiSetupInRecommendationMaxShowCount",
        "",
        "longPolingStrategy",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
        "shortPollingStrategy",
        "recommendationUpiMaxItemShowCount",
        "enableIciciMpinFlow",
        "",
        "blacklistedUpiApps",
        "",
        "",
        "trustedUpiAppsForShortPolling",
        "upiCommandTimeouts",
        "",
        "",
        "recommendationChangeMethodShowFarm",
        "isPaymentSdkHardRetryEnabled",
        "(ILcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;IZLjava/util/List;Ljava/util/List;Ljava/util/Map;ZZ)V",
        "getBlacklistedUpiApps",
        "()Ljava/util/List;",
        "setBlacklistedUpiApps",
        "(Ljava/util/List;)V",
        "getEnableIciciMpinFlow",
        "()Z",
        "setEnableIciciMpinFlow",
        "(Z)V",
        "setPaymentSdkHardRetryEnabled",
        "getLongPolingStrategy",
        "()Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
        "setLongPolingStrategy",
        "(Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;)V",
        "getRecommendationChangeMethodShowFarm",
        "setRecommendationChangeMethodShowFarm",
        "getRecommendationUpiMaxItemShowCount",
        "()I",
        "setRecommendationUpiMaxItemShowCount",
        "(I)V",
        "getSetUpiSetupInRecommendationMaxShowCount",
        "setSetUpiSetupInRecommendationMaxShowCount",
        "getShortPollingStrategy",
        "setShortPollingStrategy",
        "getTrustedUpiAppsForShortPolling",
        "setTrustedUpiAppsForShortPolling",
        "getUpiCommandTimeouts",
        "()Ljava/util/Map;",
        "setUpiCommandTimeouts",
        "(Ljava/util/Map;)V",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

.field public ICustomTabsCallback$Stub:Z

.field public asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:I

.field public onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

.field public onNavigationEvent:Z

.field public onPostMessage:I

.field public onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback$onMessageChannelReady;

    invoke-direct {v0}, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;IZLjava/util/List;Ljava/util/List;Ljava/util/Map;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
            "Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
            "IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "longPolingStrategy"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortPollingStrategy"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blacklistedUpiApps"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "trustedUpiAppsForShortPolling"

    invoke-static {p7, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upiCommandTimeouts"

    invoke-static {p8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onPostMessage:I

    iput-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    iput-object p3, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    iput p4, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->extraCallback:I

    iput-boolean p5, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onNavigationEvent:Z

    iput-object p6, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->asBinder:Ljava/util/List;

    iput-object p7, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onRelationshipValidationResult:Ljava/util/List;

    iput-object p8, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->asInterface:Ljava/util/Map;

    iput-boolean p9, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback$Stub:Z

    iput-boolean p10, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onTransact:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onNavigationEvent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->asBinder:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->asInterface:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onTransact:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
