.class public final Lo/onAppLinkFetchFailed;
.super Lo/AFFacebookDeferredDeeplink$AppLinkFetchEvents;
.source ""

# interfaces
.implements Lo/setOnPageChangeListener;


# instance fields
.field public final ICustomTabsCallback:I

.field private final asBinder:Lo/AFKeystoreWrapper;

.field public volatile extraCallback:Landroid/graphics/Bitmap;

.field private onMessageChannelReady:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lo/setPageMargin;Lo/AFKeystoreWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/setPageMargin<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/AFKeystoreWrapper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lo/onAppLinkFetchFailed;-><init>(Landroid/graphics/Bitmap;Lo/setPageMargin;Lo/AFKeystoreWrapper;I)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Lo/setPageMargin;Lo/AFKeystoreWrapper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/setPageMargin<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/AFKeystoreWrapper;",
            "I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lo/AFFacebookDeferredDeeplink$AppLinkFetchEvents;-><init>()V

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 62
    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    .line 63
    iget-object p1, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    check-cast p2, Lo/setPageMargin;

    invoke-static {p1, p2}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1

    iput-object p1, p0, Lo/onAppLinkFetchFailed;->onMessageChannelReady:Lo/getRootAlpha;

    .line 64
    iput-object p3, p0, Lo/onAppLinkFetchFailed;->asBinder:Lo/AFKeystoreWrapper;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    .line 66
    iput p1, p0, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    return-void

    .line 2215
    :cond_0
    throw p4

    .line 1215
    :cond_1
    throw p4
.end method

.method public constructor <init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/AFKeystoreWrapper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0, v0}, Lo/onAppLinkFetchFailed;-><init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;II)V

    return-void
.end method

.method public constructor <init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/AFKeystoreWrapper;",
            "II)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lo/AFFacebookDeferredDeeplink$AppLinkFetchEvents;-><init>()V

    .line 91
    invoke-virtual {p1}, Lo/getRootAlpha;->onNavigationEvent()Lo/getRootAlpha;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/getRootAlpha;

    iput-object p1, p0, Lo/onAppLinkFetchFailed;->onMessageChannelReady:Lo/getRootAlpha;

    .line 92
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    .line 93
    iput-object p2, p0, Lo/onAppLinkFetchFailed;->asBinder:Lo/AFKeystoreWrapper;

    .line 94
    iput p3, p0, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    .line 95
    iput p4, p0, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3215
    throw p1
.end method

.method private declared-synchronized onRelationshipValidationResult()Lo/getRootAlpha;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->onMessageChannelReady:Lo/getRootAlpha;

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lo/onAppLinkFetchFailed;->onMessageChannelReady:Lo/getRootAlpha;

    .line 110
    iput-object v1, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 165
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/setDeepLinkData;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final asBinder()Lo/AFKeystoreWrapper;
    .locals 1

    .line 211
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->asBinder:Lo/AFKeystoreWrapper;

    return-object v0
.end method

.method public final declared-synchronized asInterface()Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1

    .line 101
    invoke-direct {p0}, Lo/onAppLinkFetchFailed;->onRelationshipValidationResult()Lo/getRootAlpha;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 3

    .line 171
    iget v0, p0, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    rem-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return v1

    .line 5191
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 174
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    return v1

    .line 4195
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized onNavigationEvent()Z
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->onMessageChannelReady:Lo/getRootAlpha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage()I
    .locals 3

    .line 182
    iget v0, p0, Lo/onAppLinkFetchFailed;->ICustomTabsCallback:I

    rem-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lo/onAppLinkFetchFailed;->onNavigationEvent:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return v1

    .line 6195
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 185
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    return v1

    .line 6191
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final onTransact()Landroid/graphics/Bitmap;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    return-object v0
.end method
