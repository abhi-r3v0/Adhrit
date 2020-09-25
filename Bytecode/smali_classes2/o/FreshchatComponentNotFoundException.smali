.class final synthetic Lo/FreshchatComponentNotFoundException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dc;


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/AppDeletedException;


# direct methods
.method constructor <init>(Lo/AppDeletedException;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FreshchatComponentNotFoundException;->onMessageChannelReady:Lo/AppDeletedException;

    iput-object p2, p0, Lo/FreshchatComponentNotFoundException;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/FreshchatComponentNotFoundException;->onMessageChannelReady:Lo/AppDeletedException;

    iget-object v1, p0, Lo/FreshchatComponentNotFoundException;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/AppDeletedException;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
