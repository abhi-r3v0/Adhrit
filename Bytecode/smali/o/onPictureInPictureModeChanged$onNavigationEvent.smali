.class public final Lo/onPictureInPictureModeChanged$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/handleDeepLinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPictureInPictureModeChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/widget/EdgeDrawerLayout$Companion;",
        "",
        "()V",
        "EDGE_SIZE",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/handleDeepLinkCallback;

.field private final extraCallback:I

.field private final onMessageChannelReady:Ljava/lang/Integer;

.field private final onNavigationEvent:Z

.field private final onPostMessage:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZLo/handleDeepLinkCallback;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput p1, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->extraCallback:I

    .line 1037
    iput-boolean p2, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onPostMessage:Z

    .line 1038
    iput-object p3, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->ICustomTabsCallback:Lo/handleDeepLinkCallback;

    .line 1039
    iput-object p4, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Integer;

    .line 1040
    iput-boolean p5, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;
    .locals 3

    .line 1065
    iget-object v0, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->ICustomTabsCallback:Lo/handleDeepLinkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1068
    :cond_0
    invoke-interface {v0, p1, p2}, Lo/handleDeepLinkCallback;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 1088
    iget-object v0, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1092
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2081
    new-instance v0, Lo/onLowMemory$onNavigationEvent;

    iget v1, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->extraCallback:I

    invoke-direct {v0, v1}, Lo/onLowMemory$onNavigationEvent;-><init>(I)V

    .line 2082
    invoke-virtual {v0, p1, p2}, Lo/onLowMemory$onNavigationEvent;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object v1

    goto :goto_1

    .line 1098
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ImageTranscoderType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2074
    :cond_3
    iget v0, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->extraCallback:I

    iget-boolean v1, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onPostMessage:Z

    iget-boolean v2, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onNavigationEvent:Z

    invoke-static {v0, v1, v2}, Lo/extraCallback;->extraCallback(IZZ)Lo/handleDeepLinkCallback;

    move-result-object v0

    .line 2076
    invoke-interface {v0, p1, p2}, Lo/handleDeepLinkCallback;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object v1

    :goto_1
    move-object v0, v1

    :cond_4
    if-nez v0, :cond_5

    .line 1052
    invoke-static {}, Lo/post;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3074
    iget v0, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->extraCallback:I

    iget-boolean v1, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onPostMessage:Z

    iget-boolean v2, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->onNavigationEvent:Z

    invoke-static {v0, v1, v2}, Lo/extraCallback;->extraCallback(IZZ)Lo/handleDeepLinkCallback;

    move-result-object v0

    .line 3076
    invoke-interface {v0, p1, p2}, Lo/handleDeepLinkCallback;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    .line 3081
    new-instance v0, Lo/onLowMemory$onNavigationEvent;

    iget v1, p0, Lo/onPictureInPictureModeChanged$onNavigationEvent;->extraCallback:I

    invoke-direct {v0, v1}, Lo/onLowMemory$onNavigationEvent;-><init>(I)V

    .line 3082
    invoke-virtual {v0, p1, p2}, Lo/onLowMemory$onNavigationEvent;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method
