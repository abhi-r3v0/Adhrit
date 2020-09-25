.class public interface abstract Lo/getAppSettings;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback()[B
.end method

.method public abstract onMessageChannelReady([B)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Z
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onPostMessage()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method
