.class public interface abstract Lo/trackApiError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trackApiError$onMessageChannelReady;,
        Lo/trackApiError$extraCallback;,
        Lo/trackApiError$onPostMessage;,
        Lo/trackApiError$ICustomTabsCallback;
    }
.end annotation


# virtual methods
.method public abstract onNavigationEvent()V
.end method

.method public abstract onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
.end method

.method public abstract onPostMessage(Lo/DreamAppGlideModule;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method
