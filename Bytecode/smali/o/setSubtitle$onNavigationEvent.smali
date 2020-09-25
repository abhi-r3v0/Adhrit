.class public Lo/setSubtitle$onNavigationEvent;
.super Lo/setSubtitle$onTransact;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private extraCallback:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2198
    invoke-direct {p0}, Lo/setSubtitle$onTransact;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onNavigationEvent;
    .locals 0

    .line 2228
    invoke-static {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/setSubtitle$onNavigationEvent;->extraCallback:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onPostMessage(Lo/setIconUri;)V
    .locals 2

    .line 2238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2239
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2240
    invoke-interface {p1}, Lo/setIconUri;->extraCallback()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Lo/setSubtitle$onTransact;->onMessageChannelReady:Ljava/lang/CharSequence;

    .line 2241
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Lo/setSubtitle$onNavigationEvent;->extraCallback:Ljava/lang/CharSequence;

    .line 2242
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2243
    iget-boolean v0, p0, Lo/setSubtitle$onTransact;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lo/setSubtitle$onTransact;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method
