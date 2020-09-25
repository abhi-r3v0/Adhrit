.class public final Lo/clickPressedItem;
.super Lo/lookForSelectablePosition;
.source ""


# static fields
.field private static final onMessageChannelReady:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-object v0, Lo/clickPressedItem;->onNavigationEvent:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lo/clickPressedItem;->onMessageChannelReady:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/lookForSelectablePosition;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    instance-of p1, p1, Lo/clickPressedItem;

    return p1
.end method

.method protected final extraCallback(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 26
    invoke-static {p1, p2, p3, p4}, Lo/FitWindowsViewGroup$OnFitSystemWindowsListener;->onPostMessage(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 1

    .line 41
    sget-object v0, Lo/clickPressedItem;->onMessageChannelReady:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
