.class public interface abstract Lo/CrashlyticsReport$Session$Event$Log;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;,
        Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackType::",
        "Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract inhibitBackoff()V
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
