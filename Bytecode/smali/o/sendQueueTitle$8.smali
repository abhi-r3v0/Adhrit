.class final Lo/sendQueueTitle$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendQueueTitle;->onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/sendQueueTitle$extraCallback;

.field private mViewBounds:Lo/sendQueueTitle$extraCallback;

.field final synthetic onNavigationEvent:Lo/sendQueueTitle;


# direct methods
.method constructor <init>(Lo/sendQueueTitle;Lo/sendQueueTitle$extraCallback;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lo/sendQueueTitle$8;->onNavigationEvent:Lo/sendQueueTitle;

    iput-object p2, p0, Lo/sendQueueTitle$8;->ICustomTabsCallback:Lo/sendQueueTitle$extraCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    iget-object p1, p0, Lo/sendQueueTitle$8;->ICustomTabsCallback:Lo/sendQueueTitle$extraCallback;

    iput-object p1, p0, Lo/sendQueueTitle$8;->mViewBounds:Lo/sendQueueTitle$extraCallback;

    return-void
.end method
