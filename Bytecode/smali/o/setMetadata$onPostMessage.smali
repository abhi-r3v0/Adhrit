.class public Lo/setMetadata$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMetadata$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# static fields
.field private static onPostMessage:Lo/setMetadata$onPostMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/setMetadata$onPostMessage;
    .locals 1

    .line 207
    sget-object v0, Lo/setMetadata$onPostMessage;->onPostMessage:Lo/setMetadata$onPostMessage;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lo/setMetadata$onPostMessage;

    invoke-direct {v0}, Lo/setMetadata$onPostMessage;-><init>()V

    sput-object v0, Lo/setMetadata$onPostMessage;->onPostMessage:Lo/setMetadata$onPostMessage;

    .line 210
    :cond_0
    sget-object v0, Lo/setMetadata$onPostMessage;->onPostMessage:Lo/setMetadata$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public onPostMessage(Ljava/lang/Class;)Lo/setQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    .line 219
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setQueue;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 223
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 221
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
