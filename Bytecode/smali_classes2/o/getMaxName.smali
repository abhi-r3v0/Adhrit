.class public final Lo/getMaxName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMaxName$onNavigationEvent;,
        Lo/getMaxName$ICustomTabsCallback;,
        Lo/getMaxName$onPostMessage;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/getMaxName$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lo/getMaxName$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getMaxName$onNavigationEvent;-><init>(B)V

    .line 38
    sput-object v0, Lo/getMaxName;->onMessageChannelReady:Lo/getMaxName$onNavigationEvent;

    invoke-static {}, Lo/getInfoKey;->onPostMessage()Lo/getInfoKey;

    move-result-object v1

    .line 1181
    iget-object v0, v0, Lo/getMaxName$onNavigationEvent;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Lo/intValue;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static extraCallback(Landroid/os/Parcelable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    check-cast p0, Lo/getMinName;

    .line 92
    invoke-interface {p0}, Lo/getMinName;->getParcel()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez p0, :cond_1

    return-object v0

    .line 1073
    :cond_1
    sget-object v0, Lo/getMaxName;->onMessageChannelReady:Lo/getMaxName$onNavigationEvent;

    .line 1142
    iget-object v2, v0, Lo/getMaxName$onNavigationEvent;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMaxName$onPostMessage;

    if-nez v2, :cond_5

    .line 1144
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Lo/getMaxName$onNavigationEvent;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lo/getMaxName$onPostMessage;

    move-result-object v2

    .line 1146
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1147
    new-instance v2, Lo/getInfoKey$write;

    invoke-direct {v2}, Lo/getInfoKey$write;-><init>()V

    :cond_2
    if-eqz v2, :cond_4

    .line 1157
    iget-object v0, v0, Lo/getMaxName$onNavigationEvent;->onPostMessage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMaxName$onPostMessage;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_0

    .line 1151
    :cond_4
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find generated Parcelable class for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", verify that your class is configured properly and that the Parcelable class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$$Parcelable"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is generated by Parceler."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1075
    :cond_5
    :goto_0
    invoke-interface {v2, p0}, Lo/getMaxName$onPostMessage;->extraCallback(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method
