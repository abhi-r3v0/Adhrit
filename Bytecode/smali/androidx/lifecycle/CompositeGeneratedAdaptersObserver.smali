.class public Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# instance fields
.field private final onMessageChannelReady:[Lo/MediaControllerCompatApi21$Callback;


# direct methods
.method public constructor <init>([Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->onMessageChannelReady:[Lo/MediaControllerCompatApi21$Callback;

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 32
    new-instance p1, Lo/extraCallback$onTransact;

    invoke-direct {p1}, Lo/extraCallback$onTransact;-><init>()V

    return-void
.end method
