.class public final Lo/context$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:Z

.field onMessageChannelReady:Z

.field final onNavigationEvent:Landroid/content/Context;

.field final onPostMessage:Lo/intent$onNavigationEvent;

.field onRelationshipValidationResult:Lo/MediaSessionCompat$1$onMessageChannelReady;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lo/context$extraCallback;->onMessageChannelReady:Z

    const/4 v1, -0x1

    .line 499
    iput v1, p0, Lo/context$extraCallback;->ICustomTabsCallback:I

    .line 500
    new-instance v1, Lo/intent$onNavigationEvent;

    invoke-direct {v1}, Lo/intent$onNavigationEvent;-><init>()V

    iput-object v1, p0, Lo/context$extraCallback;->onPostMessage:Lo/intent$onNavigationEvent;

    .line 502
    iput-boolean v0, p0, Lo/context$extraCallback;->extraCallback:Z

    .line 504
    new-instance v0, Lo/computeHorizontalScrollExtent$onNavigationEvent;

    invoke-direct {v0}, Lo/computeHorizontalScrollExtent$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/context$extraCallback;->onRelationshipValidationResult:Lo/MediaSessionCompat$1$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 511
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lo/context$extraCallback;->onNavigationEvent:Landroid/content/Context;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lo/context$extraCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method
