.class public interface abstract Lo/Account;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Account$extraCallback;,
        Lo/Account$ICustomTabsCallback;,
        Lo/Account$onMessageChannelReady;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
.end method

.method public abstract ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
.end method

.method public abstract onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
.end method

.method public abstract onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
.end method

.method public abstract onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
.end method

.method public abstract onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V
.end method

.method public abstract onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$ICustomTabsCallback;)V
.end method

.method public abstract onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
.end method
