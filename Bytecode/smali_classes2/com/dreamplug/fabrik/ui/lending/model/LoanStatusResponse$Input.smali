.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input$onMessageChannelReady;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0005H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003Jq\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003H\u00c6\u0001J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u00d6\u0003J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\t\u00102\u001a\u00020\u0005H\u00d6\u0001J\u0019\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0013\u00a8\u00068"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;",
        "Landroid/os/Parcelable;",
        "amount",
        "",
        "destination_instrument_id",
        "",
        "emi",
        "",
        "prefill",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;",
        "request_id",
        "source_instrument_id",
        "tenure",
        "user_id",
        "kycData",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;",
        "workflow_id",
        "(ILjava/lang/String;DLcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;I)V",
        "getAmount",
        "()I",
        "getDestination_instrument_id",
        "()Ljava/lang/String;",
        "getEmi",
        "()D",
        "getKycData",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;",
        "getPrefill",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;",
        "getRequest_id",
        "getSource_instrument_id",
        "getTenure",
        "getUser_id",
        "getWorkflow_id",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
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
.field final ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:Ljava/lang/String;

.field final asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

.field final asInterface:Ljava/lang/String;

.field final extraCallback:D

.field final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

.field final onNavigationEvent:I

.field final onPostMessage:Ljava/lang/String;

.field final onRelationshipValidationResult:I

.field final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;DLcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;I)V
    .locals 1
    .param p10    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "kyc_data"
        .end annotation
    .end param

    const-string v0, "destination_instrument_id"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source_instrument_id"

    invoke-static {p7, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user_id"

    invoke-static {p9, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onNavigationEvent:I

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback:Ljava/lang/String;

    iput-wide p3, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->extraCallback:D

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onPostMessage:Ljava/lang/String;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput p8, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onRelationshipValidationResult:I

    iput-object p9, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asInterface:Ljava/lang/String;

    iput-object p10, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    iput p11, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onTransact:I

    return-void
.end method


# virtual methods
.method public final copy(ILjava/lang/String;DLcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;I)Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;
    .locals 13
    .param p10    # Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "kyc_data"
        .end annotation
    .end param

    const-string v0, "destination_instrument_id"

    move-object v3, p2

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_id"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source_instrument_id"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user_id"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;

    move-object v1, v0

    move v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;-><init>(ILjava/lang/String;DLcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;I)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onNavigationEvent:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->extraCallback:D

    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->extraCallback:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onRelationshipValidationResult:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onRelationshipValidationResult:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asInterface:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onTransact:I

    iget p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onTransact:I

    if-ne v0, p1, :cond_0

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
    .locals 5

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onNavigationEvent:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->extraCallback:D

    .line 2025
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onRelationshipValidationResult:I

    .line 3025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asInterface:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onTransact:I

    .line 4025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destination_instrument_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->extraCallback:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", prefill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source_instrument_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tenure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onRelationshipValidationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kycData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", workflow_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onTransact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->extraCallback:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Prefill;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onRelationshipValidationResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$KycData;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Input;->onTransact:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
