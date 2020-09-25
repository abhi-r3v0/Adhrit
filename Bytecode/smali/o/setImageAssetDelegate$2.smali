.class final Lo/setImageAssetDelegate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeLottieOnCompositionLoadedListener$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setImageAssetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setImageAssetDelegate;


# direct methods
.method constructor <init>(Lo/setImageAssetDelegate;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/setImageAssetDelegate$2;->extraCallback:Lo/setImageAssetDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(I)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/setImageAssetDelegate$2;->extraCallback:Lo/setImageAssetDelegate;

    invoke-static {v0}, Lo/setImageAssetDelegate;->onNavigationEvent(Lo/setImageAssetDelegate;)Lo/addAnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/addAnimatorListener;->onMessageChannelReady(I)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method
