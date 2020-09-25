.class public Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onNavigationEvent;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/onNavigationEvent;)V
    .locals 0

    .line 113
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->onPostMessage:Lo/onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 117
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_0

    .line 118
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->onPostMessage:Lo/onNavigationEvent;

    invoke-virtual {p1}, Lo/onNavigationEvent;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->onPostMessage:Lo/onNavigationEvent;

    invoke-virtual {p1}, Lo/onNavigationEvent;->getViewModelStore()Lo/setRatingType;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRatingType;->extraCallback()V

    :cond_0
    return-void
.end method
