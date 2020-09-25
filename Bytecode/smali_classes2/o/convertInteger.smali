.class public interface abstract Lo/convertInteger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/convertInteger$ICustomTabsCallback;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Lo/isCompleteForChild;
.end method

.method public abstract extraCallback()V
.end method

.method public abstract onNavigationEvent(Lo/convertDouble;)V
.end method

.method public abstract onNavigationEvent()Z
.end method

.method public abstract onPostMessage()Lo/childAddedChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
