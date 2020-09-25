.class final Lo/setDrawerTitle$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDrawerLockMode$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setDrawerTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setDrawerTitle;


# direct methods
.method constructor <init>(Lo/setDrawerTitle;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lo/setDrawerTitle$5;->extraCallback:Lo/setDrawerTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Z)V
    .locals 1

    .line 383
    iget-object v0, p0, Lo/setDrawerTitle$5;->extraCallback:Lo/setDrawerTitle;

    invoke-static {v0, p1}, Lo/setDrawerTitle;->onNavigationEvent(Lo/setDrawerTitle;Z)V

    .line 384
    iget-object v0, p0, Lo/setDrawerTitle$5;->extraCallback:Lo/setDrawerTitle;

    invoke-static {v0}, Lo/setDrawerTitle;->onMessageChannelReady(Lo/setDrawerTitle;)Lo/setDrawerTitle$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 386
    iget-object v0, p0, Lo/setDrawerTitle$5;->extraCallback:Lo/setDrawerTitle;

    invoke-virtual {v0}, Lo/setDrawerTitle;->ICustomTabsCallback()Landroid/graphics/Rect;

    .line 388
    :cond_0
    iget-object v0, p0, Lo/setDrawerTitle$5;->extraCallback:Lo/setDrawerTitle;

    invoke-static {v0}, Lo/setDrawerTitle;->onNavigationEvent(Lo/setDrawerTitle;)Lo/setDrawerTitle$ICustomTabsCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lo/setDrawerTitle$5;->extraCallback:Lo/setDrawerTitle;

    invoke-virtual {p1}, Lo/setDrawerTitle;->ICustomTabsCallback()Landroid/graphics/Rect;

    :cond_1
    return-void
.end method
