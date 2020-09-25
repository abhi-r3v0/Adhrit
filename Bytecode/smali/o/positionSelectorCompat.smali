.class public final Lo/positionSelectorCompat;
.super Lo/lookForSelectablePosition;
.source ""


# static fields
.field private static final ICustomTabsCallback:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    sget-object v0, Lo/positionSelectorCompat;->onNavigationEvent:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.FitCenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lo/positionSelectorCompat;->ICustomTabsCallback:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/lookForSelectablePosition;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    instance-of p1, p1, Lo/positionSelectorCompat;

    return p1
.end method

.method protected final extraCallback(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 20
    invoke-static {p1, p2, p3, p4}, Lo/FitWindowsViewGroup$OnFitSystemWindowsListener;->onMessageChannelReady(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const-string v0, "com.bumptech.glide.load.resource.bitmap.FitCenter"

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 1

    .line 35
    sget-object v0, Lo/positionSelectorCompat;->ICustomTabsCallback:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
