.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse$onMessageChannelReady;,
        Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse$onNavigationEvent;
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008%\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 B2\u00020\u0001:\u0001BB\u008f\u0001\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0001\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0011\u0010/\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\rH\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0098\u0001\u00103\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0003\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u00104J\t\u00105\u001a\u00020\u0011H\u00d6\u0001J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u000109H\u00d6\u0003J\t\u0010:\u001a\u00020\u0011H\u00d6\u0001J\u0006\u0010;\u001a\u000207J\t\u0010<\u001a\u00020\tH\u00d6\u0001J\u0019\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u0011H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0019\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001cR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001eR\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\n\n\u0002\u0010%\u001a\u0004\u0008#\u0010$R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001cR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0018\u00a8\u0006C"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
        "Landroid/os/Parcelable;",
        "background",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
        "header",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "payoutClaimResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;",
        "payoutType",
        "",
        "primaryCta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "reelSymbols",
        "",
        "result",
        "secondaryCta",
        "slabId",
        "",
        "slabLevel",
        "subHeader",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/textformatter/EncodedStringWrapper;)V",
        "getBackground",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
        "getHeader",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getPayoutClaimResponse",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;",
        "getPayoutType",
        "()Ljava/lang/String;",
        "getPrimaryCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "getReelSymbols",
        "()Ljava/util/List;",
        "getResult",
        "getSecondaryCta",
        "getSlabId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSlabLevel",
        "getSubHeader",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/textformatter/EncodedStringWrapper;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "isWin",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

.field final ICustomTabsCallback$Stub:Ljava/lang/Integer;

.field final asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

.field public final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/lang/String;

.field public final getInterfaceDescriptor:Lo/getTargetScrollPosition;

.field public final onMessageChannelReady:Lo/getTargetScrollPosition;

.field final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

.field public final onRelationshipValidationResult:Ljava/lang/String;

.field public final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/Integer;Ljava/lang/String;Lo/getTargetScrollPosition;)V
    .locals 0
    .param p1    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p2    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_claim_response"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_type"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "reel_symbols"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_id"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_level"
        .end annotation
    .end param
    .param p11    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
            "Lo/getTargetScrollPosition;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lo/getTargetScrollPosition;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p9, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    iput-object p11, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/Integer;Ljava/lang/String;Lo/getTargetScrollPosition;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;
    .locals 13
    .param p1    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p2    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_claim_response"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_type"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "reel_symbols"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_id"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_level"
        .end annotation
    .end param
    .param p11    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
            "Lo/getTargetScrollPosition;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lo/getTargetScrollPosition;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;"
        }
    .end annotation

    new-instance v12, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/Integer;Ljava/lang/String;Lo/getTargetScrollPosition;)V

    return-object v12
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

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
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotMachinePlayResponse(background="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payoutClaimResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reelSymbols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slabId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slabLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimSlotMachineResponse;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asInterface:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
