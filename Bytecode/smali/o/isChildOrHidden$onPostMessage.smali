.class public final Lo/isChildOrHidden$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isChildOrHidden;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/service/PushNotificationHandler$Companion;",
        "",
        "()V",
        "ACTION",
        "",
        "BIG_MEDIA_KEY",
        "BUTTON_1_CTA_TEXT_KEY",
        "BUTTON_1_LINK_KEY",
        "BUTTON_2_CTA_TEXT_KEY",
        "BUTTON_2_LINK_KEY",
        "CTA_TYPE",
        "DEEP_LINK",
        "ID",
        "IS_FROM_NOTIFICATION",
        "MESSAGE",
        "NOTIFICATION_ID",
        "PATH",
        "PN_DEEPLINK",
        "THUMBNAIL_IMAGE_KEY",
        "TITLE",
        "TYPE",
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
.field public final extraCallback:Lo/setSafeMode;

.field public onMessageChannelReady:I

.field public onNavigationEvent:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setSafeMode;)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lo/isChildOrHidden$onPostMessage;->extraCallback:Lo/setSafeMode;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/layoutChildLeft$extraCallback;
    .locals 3

    const/4 v0, 0x0

    .line 1111
    :try_start_0
    new-instance v1, Lo/layoutChildLeft$extraCallback;

    invoke-direct {v1, p0}, Lo/layoutChildLeft$extraCallback;-><init>(Lo/isChildOrHidden$onPostMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    iget-object v2, p0, Lo/isChildOrHidden$onPostMessage;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 1114
    iput-object v0, p0, Lo/isChildOrHidden$onPostMessage;->onNavigationEvent:Lo/getRootAlpha;

    .line 1115
    iget-object v2, p0, Lo/isChildOrHidden$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Ljava/lang/Iterable;)V

    .line 1116
    iput-object v0, p0, Lo/isChildOrHidden$onPostMessage;->onPostMessage:Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v1

    .line 1113
    iget-object v2, p0, Lo/isChildOrHidden$onPostMessage;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 1114
    iput-object v0, p0, Lo/isChildOrHidden$onPostMessage;->onNavigationEvent:Lo/getRootAlpha;

    .line 1115
    iget-object v2, p0, Lo/isChildOrHidden$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Ljava/lang/Iterable;)V

    .line 1116
    iput-object v0, p0, Lo/isChildOrHidden$onPostMessage;->onPostMessage:Ljava/util/List;

    throw v1
.end method
