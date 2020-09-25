.class public final Lo/setStorageBucket$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStorageBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/setStorageBucket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/setStorageBucket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setStorageBucket;-><init>(B)V

    iput-object v0, p0, Lo/setStorageBucket$onNavigationEvent;->onMessageChannelReady:Lo/setStorageBucket;

    return-void
.end method
