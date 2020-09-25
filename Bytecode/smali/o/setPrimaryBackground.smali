.class public final Lo/setPrimaryBackground;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/jumpDrawablesToCurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/jumpDrawablesToCurrentState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/jumpDrawablesToCurrentState<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lo/createImageButton;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p2, Lo/jumpDrawablesToCurrentState;

    invoke-direct {p2}, Lo/jumpDrawablesToCurrentState;-><init>()V

    iput-object p2, p0, Lo/setPrimaryBackground;->onMessageChannelReady:Lo/jumpDrawablesToCurrentState;

    .line 22
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/setPrimaryBackground;->onNavigationEvent:Ljava/util/Map;

    .line 24
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/setPrimaryBackground;->extraCallback:Ljava/util/Map;

    const-string p2, ".ttf"

    .line 27
    iput-object p2, p0, Lo/setPrimaryBackground;->ICustomTabsCallback:Ljava/lang/String;

    .line 31
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 32
    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lo/setPrimaryBackground;->onPostMessage:Landroid/content/res/AssetManager;

    return-void

    .line 37
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lo/setPrimaryBackground;->onPostMessage:Landroid/content/res/AssetManager;

    return-void
.end method
