.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J]\u0010!\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0003\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u00d6\u0003J\t\u0010(\u001a\u00020#H\u00d6\u0001J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020#H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
        "Landroid/os/Parcelable;",
        "currencyType",
        "",
        "slabs",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "totalINRPayable",
        "",
        "payableAmountDisplayText",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "sliderValueDisplayText",
        "recommendedSlabText",
        "recommendedSlab",
        "(Ljava/lang/String;Ljava/util/List;DLcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Ljava/lang/String;)V",
        "getCurrencyType",
        "()Ljava/lang/String;",
        "getPayableAmountDisplayText",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getRecommendedSlab",
        "getRecommendedSlabText",
        "getSlabs",
        "()Ljava/util/List;",
        "getSliderValueDisplayText",
        "getTotalINRPayable",
        "()D",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
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
.field public final ICustomTabsCallback:Lo/getTargetScrollPosition;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/getTargetScrollPosition;

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:D

.field public final onRelationshipValidationResult:Ljava/lang/String;

.field public final onTransact:Lo/getTargetScrollPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;DLo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "currency_type"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "values"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_inr_payable"
        .end annotation
    .end param
    .param p5    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payable_amount_display_text"
        .end annotation
    .end param
    .param p6    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slider_value_display_text"
        .end annotation
    .end param
    .param p7    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "recommended_slab_display_text"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "recommended_slab"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            ">;D",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "currencyType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slabs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    iput-wide p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/util/List;DLo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "currency_type"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "values"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_inr_payable"
        .end annotation
    .end param
    .param p5    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payable_amount_display_text"
        .end annotation
    .end param
    .param p6    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slider_value_display_text"
        .end annotation
    .end param
    .param p7    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "recommended_slab_display_text"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "recommended_slab"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            ">;D",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;"
        }
    .end annotation

    const-string v0, "currencyType"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slabs"

    move-object v3, p2

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    move-object v1, v0

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;-><init>(Ljava/lang/String;Ljava/util/List;DLo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    .line 1025
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StoreSlabsResponse(currencyType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", slabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalINRPayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", payableAmountDisplayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sliderValueDisplayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedSlabText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedSlab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
