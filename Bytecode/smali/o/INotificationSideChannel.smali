.class public abstract Lo/INotificationSideChannel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/INotificationSideChannel$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field onMessageChannelReady:Ljava/lang/Object;

.field onNavigationEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Landroid/view/Menu;
.end method

.method public abstract ICustomTabsCallback$Stub()Ljava/lang/CharSequence;
.end method

.method public abstract asBinder()Ljava/lang/CharSequence;
.end method

.method public asInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract extraCallback()V
.end method

.method public abstract extraCallback(Ljava/lang/CharSequence;)V
.end method

.method public abstract onMessageChannelReady()Landroid/view/MenuInflater;
.end method

.method public abstract onMessageChannelReady(Landroid/view/View;)V
.end method

.method public onMessageChannelReady(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lo/INotificationSideChannel;->onNavigationEvent:Z

    return-void
.end method

.method public abstract onNavigationEvent(I)V
.end method

.method public abstract onPostMessage()V
.end method

.method public abstract onPostMessage(I)V
.end method

.method public abstract onPostMessage(Ljava/lang/CharSequence;)V
.end method

.method public abstract onRelationshipValidationResult()Landroid/view/View;
.end method
