.class final Lo/setMediaButtonReceiver$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendSessionEvent$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/setMediaButtonReceiver;


# direct methods
.method constructor <init>(Lo/setMediaButtonReceiver;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/setMediaButtonReceiver$3;->extraCallback:Lo/setMediaButtonReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/setMediaButtonReceiver$3;->extraCallback:Lo/setMediaButtonReceiver;

    invoke-virtual {v0}, Lo/setMediaButtonReceiver;->onNavigationEvent()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/setMediaButtonReceiver$3;->extraCallback:Lo/setMediaButtonReceiver;

    invoke-virtual {v0}, Lo/setMediaButtonReceiver;->extraCallback()V

    return-void
.end method
