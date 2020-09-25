.class public abstract Lo/ServerConfigHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ServerConfigHandler$extraCallback;
    }
.end annotation

.annotation runtime Lo/mark;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lo/ServerConfigHandler;->onPostMessage()Lo/ah;

    move-result-object v0

    invoke-interface {v0}, Lo/ah;->close()V

    return-void
.end method

.method public abstract extraCallback()Lo/OaidClient;
.end method

.method abstract onPostMessage()Lo/ah;
.end method
