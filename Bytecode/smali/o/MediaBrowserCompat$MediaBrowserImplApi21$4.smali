.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;


# instance fields
.field ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

.field public ICustomTabsCallback$Stub:Z

.field public asBinder:Lo/run$onNavigationEvent;

.field public asInterface:I

.field extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

.field public onMessageChannelReady:I

.field onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

.field public onRelationshipValidationResult:I

.field public onTransact:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asInterface:I

    .line 86
    iput v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 283
    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4272
    iput v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    return-void

    .line 292
    :cond_1
    iput v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onMessageChannelReady:I

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 294
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 295
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 296
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onTransact:Ljava/util/concurrent/Executor;

    .line 298
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asBinder:Lo/run$onNavigationEvent;

    .line 299
    iput v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asInterface:I

    .line 300
    iput-boolean v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    .line 302
    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    return-void
.end method

.method final onPostMessage(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Lo/run$onNavigationEvent;)V
    .locals 2

    .line 182
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onTransact:Ljava/util/concurrent/Executor;

    .line 184
    iput-object p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asBinder:Lo/run$onNavigationEvent;

    .line 185
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-virtual {v0, p1, p2, p3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Lo/run$onNavigationEvent;)V

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz v1, :cond_1

    .line 1308
    iput-object p2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 2272
    iput-object p1, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback:Ljava/util/concurrent/Executor;

    .line 2273
    iput-object p3, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    .line 190
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 2316
    iget-object p2, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    .line 3280
    iput-object p2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    .line 3281
    new-instance p2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    iget-object p3, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-direct {p2, p3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;-><init>(Landroid/os/Handler;)V

    iput-object p2, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    :cond_1
    return-void
.end method
