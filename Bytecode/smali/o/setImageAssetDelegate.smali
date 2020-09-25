.class public Lo/setImageAssetDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeUpdateListener;


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$onPostMessage;

.field private onMessageChannelReady:Lo/setFrame;

.field private final onNavigationEvent:Lo/addAnimatorListener;

.field private onPostMessage:Lo/removeLottieOnCompositionLoadedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lo/setImageAssetDelegate;

    sput-object v0, Lo/setImageAssetDelegate;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/addAnimatorListener;Lo/setFrame;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/setImageAssetDelegate$2;

    invoke-direct {v0, p0}, Lo/setImageAssetDelegate$2;-><init>(Lo/setImageAssetDelegate;)V

    iput-object v0, p0, Lo/setImageAssetDelegate;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$onPostMessage;

    .line 48
    iput-object p1, p0, Lo/setImageAssetDelegate;->onNavigationEvent:Lo/addAnimatorListener;

    .line 49
    iput-object p2, p0, Lo/setImageAssetDelegate;->onMessageChannelReady:Lo/setFrame;

    .line 51
    new-instance p1, Lo/removeLottieOnCompositionLoadedListener;

    invoke-direct {p1, p2, v0}, Lo/removeLottieOnCompositionLoadedListener;-><init>(Lo/setFrame;Lo/removeLottieOnCompositionLoadedListener$onPostMessage;)V

    iput-object p1, p0, Lo/setImageAssetDelegate;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setImageAssetDelegate;)Lo/addAnimatorListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/setImageAssetDelegate;->onNavigationEvent:Lo/addAnimatorListener;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 65
    iget-object v0, p0, Lo/setImageAssetDelegate;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v0}, Lo/setFrame;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 70
    iget-object v0, p0, Lo/setImageAssetDelegate;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v0}, Lo/setFrame;->onMessageChannelReady()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(Landroid/graphics/Rect;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lo/setImageAssetDelegate;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v0, p1}, Lo/setFrame;->onPostMessage(Landroid/graphics/Rect;)Lo/setFrame;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lo/setImageAssetDelegate;->onMessageChannelReady:Lo/setFrame;

    if-eq p1, v0, :cond_0

    .line 58
    iput-object p1, p0, Lo/setImageAssetDelegate;->onMessageChannelReady:Lo/setFrame;

    .line 59
    new-instance v0, Lo/removeLottieOnCompositionLoadedListener;

    iget-object v1, p0, Lo/setImageAssetDelegate;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$onPostMessage;

    invoke-direct {v0, p1, v1}, Lo/removeLottieOnCompositionLoadedListener;-><init>(Lo/setFrame;Lo/removeLottieOnCompositionLoadedListener$onPostMessage;)V

    iput-object v0, p0, Lo/setImageAssetDelegate;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener;

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILandroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x1

    .line 76
    :try_start_0
    iget-object v1, p0, Lo/setImageAssetDelegate;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener;

    invoke-virtual {v1, p1, p2}, Lo/removeLottieOnCompositionLoadedListener;->onNavigationEvent(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    .line 78
    sget-object v1, Lo/setImageAssetDelegate;->extraCallback:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "Rendering of frame unsuccessful. Frame number: %d"

    invoke-static {v1, p2, p1, v0}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
