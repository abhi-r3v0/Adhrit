.class public interface abstract Lo/toGraph;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lo/getMinidumpFile<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(ILjava/lang/String;)V
.end method

.method public abstract extraCallback(Ljava/util/Map;)Lo/getMinidumpFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/getMinidumpFile<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract extraCallback()V
.end method

.method public abstract extraCallback(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onPostMessage(I)V
.end method
