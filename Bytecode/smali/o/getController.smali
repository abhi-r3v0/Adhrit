.class public final Lo/getController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sort;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/onChooseActivity;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1021
    new-instance p1, Lo/registerCallback;

    invoke-direct {p1}, Lo/registerCallback;-><init>()V

    return-object p1

    .line 1014
    :cond_0
    new-instance p1, Lo/registerCallback$onNavigationEvent;

    invoke-direct {p1}, Lo/registerCallback$onNavigationEvent;-><init>()V

    return-object p1

    .line 1012
    :cond_1
    new-instance p1, Lo/registerCallback$onPostMessage;

    invoke-direct {p1}, Lo/registerCallback$onPostMessage;-><init>()V

    return-object p1

    .line 1016
    :cond_2
    new-instance p1, Lo/setHandler;

    invoke-direct {p1}, Lo/setHandler;-><init>()V

    return-object p1

    .line 1018
    :cond_3
    new-instance p1, Lo/getCurrentVolume;

    invoke-direct {p1}, Lo/getCurrentVolume;-><init>()V

    return-object p1
.end method
