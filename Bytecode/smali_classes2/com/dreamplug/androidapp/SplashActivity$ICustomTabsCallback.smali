.class public final Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/ButtonHelper;",
        "",
        "baseColor",
        "",
        "cornerRadius",
        "",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "pressed",
        "",
        "(IFLcom/dreamplug/ui/neu/internals/PaintHelper;Z)V",
        "getBaseColor",
        "()I",
        "borderPaintHelper",
        "Lcom/dreamplug/ui/neu/internals/BlurGradientHelper;",
        "value",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "fillPaintHelper",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:F

.field private final extraCallback:I

.field public onMessageChannelReady:Lo/addChangePayload;

.field public onPostMessage:Lo/addChangePayload;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IFLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 1

    const/4 v0, 0x0

    .line 13009
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;-><init>(IFLo/MediaSessionCompat$1$onMessageChannelReady;Z)V

    return-void
.end method

.method public constructor <init>(IFLo/MediaSessionCompat$1$onMessageChannelReady;Z)V
    .locals 9

    const-string v0, "paintHelper"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    .line 1010
    new-instance v0, Lo/addChangePayload;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, v0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->onMessageChannelReady:Lo/addChangePayload;

    .line 1011
    new-instance v0, Lo/addChangePayload;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->onPostMessage:Lo/addChangePayload;

    .line 1012
    iput p2, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->ICustomTabsCallback:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    new-array v5, v3, [I

    .line 1023
    iget v6, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v7, 0x3fd3333333333333L    # 0.3

    .line 2024
    invoke-static {v6, v7, v8, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    aput v6, v5, v2

    .line 1024
    iget v6, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v7, 0x3fceb851eb851eb8L    # 0.24

    .line 3024
    invoke-static {v6, v7, v8, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    aput v6, v5, v1

    .line 4017
    iput-object v5, v0, Lo/addChangePayload;->onPostMessage:[I

    .line 1026
    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->onMessageChannelReady:Lo/addChangePayload;

    new-array v5, v3, [I

    .line 1027
    iget v6, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v7, 0x3fc3333333333333L    # 0.15

    .line 4024
    invoke-static {v6, v7, v8, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    aput v6, v5, v2

    .line 1028
    iget v2, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    .line 5024
    invoke-static {v2, v7, v8, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, v5, v1

    .line 6017
    iput-object v5, v0, Lo/addChangePayload;->onPostMessage:[I

    goto :goto_0

    :cond_0
    new-array v5, v3, [I

    .line 1040
    iget v6, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 7009
    invoke-static {v6, v7, v8, v4}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v6

    aput v6, v5, v2

    .line 1041
    iget v6, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 7024
    invoke-static {v6, v7, v8, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    aput v6, v5, v1

    .line 8017
    iput-object v5, v0, Lo/addChangePayload;->onPostMessage:[I

    .line 1043
    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->onMessageChannelReady:Lo/addChangePayload;

    new-array v5, v3, [I

    .line 1044
    iget v6, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v7, 0x3fc28f5c28f5c28fL    # 0.145

    .line 9009
    invoke-static {v6, v7, v8, v4}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v6

    aput v6, v5, v2

    .line 1045
    iget v2, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->extraCallback:I

    const-wide v6, 0x3fa70a3d70a3d70aL    # 0.045

    .line 9024
    invoke-static {v2, v6, v7, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, v5, v1

    .line 10017
    iput-object v5, v0, Lo/addChangePayload;->onPostMessage:[I

    .line 1048
    :goto_0
    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->onPostMessage:Lo/addChangePayload;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 11016
    iput-object v1, v0, Lo/addChangePayload;->extraCallback:[F

    .line 1049
    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$ICustomTabsCallback;->onMessageChannelReady:Lo/addChangePayload;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    .line 12016
    iput-object v1, v0, Lo/addChangePayload;->extraCallback:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
