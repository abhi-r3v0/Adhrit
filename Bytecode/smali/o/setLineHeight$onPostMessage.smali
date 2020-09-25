.class final Lo/setLineHeight$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLineHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

.field private volatile extraCallback:Lo/ContentFrameLayout$OnAttachListener;


# direct methods
.method constructor <init>(Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lo/setLineHeight$onPostMessage;->ICustomTabsCallback:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ContentFrameLayout$OnAttachListener;
    .locals 1

    .line 457
    iget-object v0, p0, Lo/setLineHeight$onPostMessage;->extraCallback:Lo/ContentFrameLayout$OnAttachListener;

    if-nez v0, :cond_2

    .line 458
    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lo/setLineHeight$onPostMessage;->extraCallback:Lo/ContentFrameLayout$OnAttachListener;

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lo/setLineHeight$onPostMessage;->ICustomTabsCallback:Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;

    invoke-interface {v0}, Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;->onMessageChannelReady()Lo/ContentFrameLayout$OnAttachListener;

    move-result-object v0

    iput-object v0, p0, Lo/setLineHeight$onPostMessage;->extraCallback:Lo/ContentFrameLayout$OnAttachListener;

    .line 462
    :cond_0
    iget-object v0, p0, Lo/setLineHeight$onPostMessage;->extraCallback:Lo/ContentFrameLayout$OnAttachListener;

    if-nez v0, :cond_1

    .line 463
    new-instance v0, Lo/getFixedHeightMajor;

    invoke-direct {v0}, Lo/getFixedHeightMajor;-><init>()V

    iput-object v0, p0, Lo/setLineHeight$onPostMessage;->extraCallback:Lo/ContentFrameLayout$OnAttachListener;

    .line 465
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 467
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/setLineHeight$onPostMessage;->extraCallback:Lo/ContentFrameLayout$OnAttachListener;

    return-object v0
.end method
