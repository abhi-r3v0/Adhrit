.class public Lo/setSubtitle$onMessageChannelReady;
.super Lo/setSubtitle$onTransact;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private asInterface:Z

.field private extraCallback:Landroid/graphics/Bitmap;

.field private onRelationshipValidationResult:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2111
    invoke-direct {p0}, Lo/setSubtitle$onTransact;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Landroid/graphics/Bitmap;)Lo/setSubtitle$onMessageChannelReady;
    .locals 0

    .line 2140
    iput-object p1, p0, Lo/setSubtitle$onMessageChannelReady;->extraCallback:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onMessageChannelReady;
    .locals 0

    .line 2131
    invoke-static {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/setSubtitle$onTransact;->ICustomTabsCallback:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2132
    iput-boolean p1, p0, Lo/setSubtitle$onTransact;->onNavigationEvent:Z

    return-object p0
.end method

.method public onNavigationEvent(Landroid/graphics/Bitmap;)Lo/setSubtitle$onMessageChannelReady;
    .locals 0

    .line 2148
    iput-object p1, p0, Lo/setSubtitle$onMessageChannelReady;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 2149
    iput-boolean p1, p0, Lo/setSubtitle$onMessageChannelReady;->asInterface:Z

    return-object p0
.end method

.method public onPostMessage(Lo/setIconUri;)V
    .locals 2

    .line 2159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2160
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2161
    invoke-interface {p1}, Lo/setIconUri;->extraCallback()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Lo/setSubtitle$onTransact;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 2162
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Lo/setSubtitle$onMessageChannelReady;->extraCallback:Landroid/graphics/Bitmap;

    .line 2163
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 2164
    iget-boolean v0, p0, Lo/setSubtitle$onMessageChannelReady;->asInterface:Z

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lo/setSubtitle$onMessageChannelReady;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 2167
    :cond_0
    iget-boolean v0, p0, Lo/setSubtitle$onTransact;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    .line 2168
    iget-object v0, p0, Lo/setSubtitle$onTransact;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method
