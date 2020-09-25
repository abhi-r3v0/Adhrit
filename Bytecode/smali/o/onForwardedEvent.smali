.class public final Lo/onForwardedEvent;
.super Lo/lookForSelectablePosition;
.source ""


# static fields
.field private static final onMessageChannelReady:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Lo/onForwardedEvent;->onNavigationEvent:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lo/onForwardedEvent;->onMessageChannelReady:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/lookForSelectablePosition;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    instance-of p1, p1, Lo/onForwardedEvent;

    return p1
.end method

.method protected final extraCallback(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    invoke-static {p1, p2, p3, p4}, Lo/FitWindowsViewGroup$OnFitSystemWindowsListener;->onNavigationEvent(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 1

    .line 37
    sget-object v0, Lo/onForwardedEvent;->onMessageChannelReady:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
