.class public Lo/setScale;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setScaleType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setScaleType<",
        "TINFO;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Lo/setScaleType$extraCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;Lo/setScaleType$extraCallback;)V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;Lo/setScaleType$extraCallback;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .locals 0

    return-void
.end method
