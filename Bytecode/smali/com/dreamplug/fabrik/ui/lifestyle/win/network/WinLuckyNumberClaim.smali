.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim$ICustomTabsCallback;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\rH\u00c6\u0003J]\u0010\"\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00d6\u0003J\t\u0010)\u001a\u00020$H\u00d6\u0001J\u0006\u0010*\u001a\u00020&J\t\u0010+\u001a\u00020\rH\u00d6\u0001J\u0019\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020$H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012\u00a8\u00061"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;",
        "Landroid/os/Parcelable;",
        "header",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "subHeader",
        "background",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
        "payoutClaimResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;",
        "primaryCta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "secondaryCta",
        "result",
        "",
        "(Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)V",
        "getBackground",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;",
        "getHeader",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getPayoutClaimResponse",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;",
        "getPrimaryCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "getResult",
        "()Ljava/lang/String;",
        "getSecondaryCta",
        "getSubHeader",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

.field public final asBinder:Ljava/lang/String;

.field public final asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

.field public final extraCallback:Lo/getTargetScrollPosition;

.field public final onMessageChannelReady:Lo/getTargetScrollPosition;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p2    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_claim_response"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->extraCallback:Lo/getTargetScrollPosition;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onMessageChannelReady:Lo/getTargetScrollPosition;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final copy(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;
    .locals 9
    .param p1    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p2    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payout_claim_response"
        .end annotation
    .end param
    .param p5    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary_cta"
        .end annotation
    .end param
    .param p6    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary_cta"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param

    new-instance v8, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;-><init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;)V

    return-object v8
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->extraCallback:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->extraCallback:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onMessageChannelReady:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->extraCallback:Lo/getTargetScrollPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WinLuckyNumberClaim(header="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payoutClaimResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onMessageChannelReady:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
