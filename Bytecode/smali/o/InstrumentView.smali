.class public interface abstract Lo/InstrumentView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstrumentView$ICustomTabsCallback;,
        Lo/InstrumentView$onPostMessage;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(JJJ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract ICustomTabsCallback(IJ)Z
.end method

.method public abstract ICustomTabsCallback$Stub()V
.end method

.method public abstract asBinder()Lo/getJuspayUpi;
.end method

.method public abstract asInterface()Lo/p$a;
.end method

.method public abstract extraCallback(I)I
.end method

.method public abstract extraCallback()Ljava/lang/Object;
.end method

.method public abstract extraCallback(JJJLjava/util/List;[Lo/component2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lo/getMerchantId;",
            ">;[",
            "Lo/component2;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onMessageChannelReady(F)V
.end method

.method public abstract onNavigationEvent(I)Lo/p$a;
.end method

.method public abstract onNavigationEvent()V
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onPostMessage(I)I
.end method

.method public abstract onRelationshipValidationResult()I
.end method

.method public abstract onTransact()I
.end method
