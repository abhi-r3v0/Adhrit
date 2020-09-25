.class public interface abstract Lo/setScaleType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setScaleType$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;",
            "Lo/setScaleType$extraCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;Lo/setScaleType$extraCallback;)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lo/setScaleType$extraCallback;)V
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TINFO;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
.end method
