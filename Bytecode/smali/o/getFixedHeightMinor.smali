.class public Lo/getFixedHeightMinor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFixedHeightMinor$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final onMessageChannelReady:Lo/getFixedHeightMinor$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/getFixedHeightMinor$onNavigationEvent;J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 p2, 0xfa00000

    .line 56
    iput-wide p2, p0, Lo/getFixedHeightMinor;->ICustomTabsCallback:J

    .line 57
    iput-object p1, p0, Lo/getFixedHeightMinor;->onMessageChannelReady:Lo/getFixedHeightMinor$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/ContentFrameLayout$OnAttachListener;
    .locals 4

    .line 62
    iget-object v0, p0, Lo/getFixedHeightMinor;->onMessageChannelReady:Lo/getFixedHeightMinor$onNavigationEvent;

    invoke-interface {v0}, Lo/getFixedHeightMinor$onNavigationEvent;->onPostMessage()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    .line 72
    :cond_2
    iget-wide v1, p0, Lo/getFixedHeightMinor;->ICustomTabsCallback:J

    .line 1063
    new-instance v3, Lo/getContext;

    invoke-direct {v3, v0, v1, v2}, Lo/getContext;-><init>(Ljava/io/File;J)V

    return-object v3
.end method
