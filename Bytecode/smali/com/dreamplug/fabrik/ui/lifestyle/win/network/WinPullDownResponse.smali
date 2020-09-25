.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse$onMessageChannelReady;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bq\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001fJ\u000b\u0010&\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003Jz\u0010+\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u0010,J\t\u0010-\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\u0008H\u00d6\u0001J\u0006\u00103\u001a\u00020/J\t\u00104\u001a\u00020\u000cH\u00d6\u0001J\u0019\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0008H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0015\u00a8\u0006:"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
        "Landroid/os/Parcelable;",
        "subHeader",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "background",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
        "header",
        "slabId",
        "",
        "payoutClaimResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;",
        "payoutType",
        "",
        "result",
        "primaryCta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "secondaryCta",
        "(Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/textformatter/EncodedStringWrapper;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V",
        "getBackground",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
        "getHeader",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getPayoutClaimResponse",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;",
        "getPayoutType",
        "()Ljava/lang/String;",
        "getPrimaryCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "getResult",
        "getSecondaryCta",
        "getSlabId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSubHeader",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/textformatter/EncodedStringWrapper;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
.field public final ICustomTabsCallback:Ljava/lang/Integer;

.field public final ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

.field final asInterface:Ljava/lang/String;

.field public final extraCallback:Lo/getTargetScrollPosition;

.field public final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

.field public final onPostMessage:Lo/getTargetScrollPosition;

.field public final onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

.field public final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/getTargetScrollPosition;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V
    .locals 0
    .param p1    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_id"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_claim_response"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_type"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p9    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->extraCallback:Lo/getTargetScrollPosition;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->asInterface:Ljava/lang/String;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p9, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    return-void
.end method


# virtual methods
.method public final copy(Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/getTargetScrollPosition;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;
    .locals 11
    .param p1    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "slab_id"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_claim_response"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_type"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param
    .param p8    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p9    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param

    new-instance v10, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;-><init>(Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lo/getTargetScrollPosition;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    return-object v10
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->extraCallback:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->extraCallback:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->asInterface:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->asInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->extraCallback:Lo/getTargetScrollPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WinPullDownResponse(subHeader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slabId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payoutClaimResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
