.class public interface abstract Lo/MediaControllerCompatApi21$Callback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract ICustomTabsCallback()V
.end method

.method public abstract asInterface()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract extraCallback()V
.end method

.method public abstract extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent()V
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;
.end method

.method public abstract onPostMessage()Z
.end method

.method public abstract onRelationshipValidationResult()Ljava/lang/String;
.end method
