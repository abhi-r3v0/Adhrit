.class public final Lo/setDeeplinkPath;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDeeplinkPath$onNavigationEvent;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:[I

.field private final ICustomTabsCallback$Stub:Lo/setDeeplinkPath$onNavigationEvent;

.field public asBinder:I

.field private final asInterface:Landroid/media/MediaCodec$CryptoInfo;

.field public extraCallback:[B

.field public onMessageChannelReady:[B

.field public onNavigationEvent:I

.field public onPostMessage:[I

.field public onRelationshipValidationResult:I

.field public onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    .line 66
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Lo/setDeeplinkPath$onNavigationEvent;

    iget-object v2, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lo/setDeeplinkPath$onNavigationEvent;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lo/setDeeplinkPath$4;)V

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lo/setDeeplinkPath;->ICustomTabsCallback$Stub:Lo/setDeeplinkPath$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final onNavigationEvent(I[I[I[B[BIII)V
    .locals 1

    .line 74
    iput p1, p0, Lo/setDeeplinkPath;->onTransact:I

    .line 75
    iput-object p2, p0, Lo/setDeeplinkPath;->onPostMessage:[I

    .line 76
    iput-object p3, p0, Lo/setDeeplinkPath;->ICustomTabsCallback:[I

    .line 77
    iput-object p4, p0, Lo/setDeeplinkPath;->onMessageChannelReady:[B

    .line 78
    iput-object p5, p0, Lo/setDeeplinkPath;->extraCallback:[B

    .line 79
    iput p6, p0, Lo/setDeeplinkPath;->onNavigationEvent:I

    .line 80
    iput p7, p0, Lo/setDeeplinkPath;->asBinder:I

    .line 81
    iput p8, p0, Lo/setDeeplinkPath;->onRelationshipValidationResult:I

    .line 84
    iget-object v0, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 85
    iget-object p1, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 86
    iget-object p1, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 87
    iget-object p1, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 88
    iget-object p1, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 89
    iget-object p1, p0, Lo/setDeeplinkPath;->asInterface:Landroid/media/MediaCodec$CryptoInfo;

    iput p6, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 90
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 91
    iget-object p1, p0, Lo/setDeeplinkPath;->ICustomTabsCallback$Stub:Lo/setDeeplinkPath$onNavigationEvent;

    invoke-static {p1, p7, p8}, Lo/setDeeplinkPath$onNavigationEvent;->ICustomTabsCallback(Lo/setDeeplinkPath$onNavigationEvent;II)V

    :cond_0
    return-void
.end method
