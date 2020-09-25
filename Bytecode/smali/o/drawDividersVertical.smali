.class public final Lo/drawDividersVertical;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Lo/hasOverlappingRendering;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lo/hasOverlappingRendering;->extraCallback:Lo/hasOverlappingRendering;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 17
    invoke-static {v1, v0}, Lo/setInternalImageTint;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/drawDividersVertical;->ICustomTabsCallback:Lo/setInternalImageTint;

    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 26
    invoke-static {v1, v0}, Lo/setInternalImageTint;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/drawDividersVertical;->onNavigationEvent:Lo/setInternalImageTint;

    return-void
.end method
