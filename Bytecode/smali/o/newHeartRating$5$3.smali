.class final Lo/newHeartRating$5$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/newHeartRating$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/newHeartRating$5;

.field final synthetic onNavigationEvent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/newHeartRating$5;Ljava/lang/Object;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/newHeartRating$5$3;->onMessageChannelReady:Lo/newHeartRating$5;

    iput-object p2, p0, Lo/newHeartRating$5$3;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lo/newHeartRating$5$3;->onMessageChannelReady:Lo/newHeartRating$5;

    iget-object v0, v0, Lo/newHeartRating$5;->onMessageChannelReady:Lo/newHeartRating$onNavigationEvent;

    iget-object v1, p0, Lo/newHeartRating$5$3;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/newHeartRating$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method
