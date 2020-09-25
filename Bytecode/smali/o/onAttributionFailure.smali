.class public final Lo/onAttributionFailure;
.super Lo/getSdkVersion;
.source ""


# direct methods
.method public constructor <init>(Lo/afDebugLog;ILo/RatingCompat$StarStyle$onMessageChannelReady;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/getSdkVersion;-><init>(Lo/afDebugLog;ILo/RatingCompat$StarStyle$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(IILandroid/graphics/BitmapFactory$Options;)I
    .locals 0

    .line 29
    iget-object p3, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Lo/setDeepLinkData;->onNavigationEvent(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    return p1
.end method
