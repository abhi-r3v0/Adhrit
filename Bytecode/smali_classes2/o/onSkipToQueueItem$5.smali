.class final Lo/onSkipToQueueItem$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSkipToQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onSkipToQueueItem;


# direct methods
.method constructor <init>(Lo/onSkipToQueueItem;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/onSkipToQueueItem$5;->onNavigationEvent:Lo/onSkipToQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lo/onSkipToQueueItem$5;->onNavigationEvent:Lo/onSkipToQueueItem;

    invoke-virtual {v0}, Lo/onSkipToQueueItem;->extraCallback()V

    return-void
.end method
